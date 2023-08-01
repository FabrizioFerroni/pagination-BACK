package com.cavanosa.paisespaginacion.controller;

import com.cavanosa.paisespaginacion.entity.Mensaje;
import com.cavanosa.paisespaginacion.entity.Pais;
import com.cavanosa.paisespaginacion.service.PaisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
public class PaisController {

    @Autowired
    PaisService paisService;

    @GetMapping("/paises")
    public ResponseEntity<Page<Pais>> paginas(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size,
            @RequestParam(defaultValue = "nombre") String order,
            @RequestParam(defaultValue = "true") boolean asc
    ){
        Page<Pais> paises = paisService.paginas(
                PageRequest.of(page, size, Sort.by(order)));
        if(!asc)
            paises = paisService.paginas(
                    PageRequest.of(page, size, Sort.by(order).descending()));
        return new ResponseEntity<Page<Pais>>(paises, HttpStatus.OK);
    }

    @GetMapping("/paisesBor")
    public Page<Pais> obtenerPaisesPaginados(@RequestParam(defaultValue = "0") int page,
                                             @RequestParam(defaultValue = "10") int size,
                                             @RequestParam(defaultValue = "nombre") String order,
                                             @RequestParam(defaultValue = "true") boolean asc,
                                             @RequestParam(defaultValue = "false") boolean deleted

                                             ) {
        Pageable pageable = PageRequest.of(page, size, Sort.by(order));
        if(!asc)
            pageable = PageRequest.of(page, size, Sort.by(order).descending());
        return paisService.obtenerPaisesPaginados(pageable, deleted);
    }

    @DeleteMapping("paises/{id}/borrar")
    public ResponseEntity<String> delPais(@PathVariable Long id) throws IOException, Exception {
        if (!paisService.existsById(id)) {
            return new ResponseEntity(new Mensaje("El id ingresado no es valido"), HttpStatus.BAD_REQUEST);
        }

        paisService.borrar(id);

        return new ResponseEntity(new Mensaje("Se borro con éxito el pais"), HttpStatus.OK);

    }

    @PostMapping("paises/{id}/restaurar")
    public ResponseEntity<String> postPais(@PathVariable Long id) throws IOException, Exception {
        if (!paisService.existsById(id)) {
            return new ResponseEntity(new Mensaje("El id ingresado no es valido"), HttpStatus.BAD_REQUEST);
        }

        paisService.restaurar(id);

        return new ResponseEntity(new Mensaje("Se restauró con éxito el pais"), HttpStatus.OK);

    }
}
