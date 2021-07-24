package com.mar.lenguajes.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.mar.lenguajes.models.Idioma;
import com.mar.lenguajes.repositories.IdiomaRepository;

@Service
public class IdiomaService {
	 
	 private final IdiomaRepository idiomaRepository;
	    
	 public IdiomaService(IdiomaRepository idiomaRepository) {
	    this.idiomaRepository = idiomaRepository;
	 }
	 
	 //Devolviendo todos los ....
	 public List<Idioma> allIdiomas() {
	    return idiomaRepository.findAll();
	 }
	 
	 //Creando un libro.
	 public Idioma createIdioma(Idioma b) {
	    return idiomaRepository.save(b);
	 }
	 
	 //Obteniendo la información de un ID
	 public Idioma findIdioma(Long id) {
	    Optional<Idioma> optional = idiomaRepository.findById(id);
	    if(optional.isPresent()) {
	        return optional.get();
	    } else {
	        return null;
	    }
	 }
	    
	 //Elimina un registro por ID
	 public void deleteIdioma(Long id ) {	    	
		 idiomaRepository.deleteById(id);
	 }	    

}
