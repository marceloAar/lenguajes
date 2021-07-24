package com.mar.lenguajes.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.mar.lenguajes.models.Idioma;

@Repository
public interface IdiomaRepository extends CrudRepository<Idioma, Long> {

	List<Idioma> findAll();	
	
}
