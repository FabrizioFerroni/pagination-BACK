package com.cavanosa.paisespaginacion.service;

import com.cavanosa.paisespaginacion.entity.Pais;
import com.cavanosa.paisespaginacion.repository.PaisRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PaisService {

    @Autowired
    PaisRepository paisRepository;

    public Page<Pais> paginas(Pageable pageable){
        return paisRepository.findAll(pageable);
    }

    public Page<Pais> obtenerPaisesPaginados(Pageable pageable, boolean deleted) {
        return paisRepository.findPaisesWithoutDeleted(deleted, pageable);
    }

    public void borrar(Long id) {
        paisRepository.softDeleteById(id);
    }

    public void restaurar(Long id) {
        paisRepository.restoreDeletedById(id);
    }

    public boolean existsById(Long id) {
        return paisRepository.existsById(id);
    }
}
