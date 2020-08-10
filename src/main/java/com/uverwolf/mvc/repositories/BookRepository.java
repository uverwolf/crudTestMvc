package com.uverwolf.mvc.repositories;

import java.util.List;


import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.uverwolf.mvc.models.Book;

@Repository
public interface BookRepository extends CrudRepository<Book, Long>{
	
	List<Book> findAll();
	
	List<Book> findByDescripcionContaining(String busqueda);
	
	Long countByTituloContaining(String busqueda);
	
	Long deleteByTituloStartingWith(String busqueda);

}
