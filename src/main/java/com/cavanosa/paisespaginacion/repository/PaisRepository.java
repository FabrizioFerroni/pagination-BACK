package com.cavanosa.paisespaginacion.repository;

import com.cavanosa.paisespaginacion.entity.Pais;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PaisRepository extends JpaRepository<Pais, Long> {

//    SELECT * FROM pais WHERE deleted_at=:deleted_at
   /* @Query(nativeQuery = true, value = "SELECT * FROM pais WHERE deleted_at :deleted_at")
    Page<Pais> findPaisesWithoutDeleted(Pageable pageable, String deleted_at);*/

    @Query(nativeQuery = true, value = "SELECT * FROM pais WHERE (:deleted = true AND deleted_at IS NOT NULL) OR (:deleted = false AND deleted_at IS NULL)")
    Page<Pais> findPaisesWithoutDeleted(boolean deleted, Pageable pageable);

    @Modifying
    @Query(nativeQuery = true, value = "UPDATE pais SET deleted_at=CURRENT_TIMESTAMP WHERE id=:id AND deleted_at IS NULL")
    void softDeleteById(Long id);

    @Modifying
    @Query(nativeQuery = true, value = "UPDATE pais SET deleted_at=NULL WHERE id=:id AND deleted_at IS NOT NULL")
    void restoreDeletedById(Long id);
}
