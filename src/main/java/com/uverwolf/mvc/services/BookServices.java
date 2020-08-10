package com.uverwolf.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import com.uverwolf.mvc.models.Book;
import com.uverwolf.mvc.repositories.BookRepository;
@Service
public class BookServices {
	private final BookRepository bookRepo;
	
	public BookServices(BookRepository bookRepo) {
		this.bookRepo = bookRepo;
	}
	//listar
	public List<Book> todosLibros(){
		return bookRepo.findAll();
	}
	//crear
	public Book crearLibro(Book libro) {
		return bookRepo.save(libro);
	}
	//buscar
	public Book encontrarLibro(Long id) {
		Optional<Book> librOpcional = bookRepo.findById(id);
		if(librOpcional.isPresent()) {
			return librOpcional.get();
		}else {
			return null;
		}
	}
	//eliminar
	public void eliminarLibro(Long id) {
	 bookRepo.deleteById(id);
	}
	 //Actualizar
	public Book actualizarLibro(Long id,String titulo, String descripcion, String idioma, int paginas) {
		Optional<Book> libro = bookRepo.findById(id);
		if(libro.isPresent()) {
			libro.get().setTitulo(titulo);
		
			libro.get().setDescripcion(descripcion);
			libro.get().setIdioma(idioma);
			libro.get().setNumeroDePaginas(paginas);
			
			return bookRepo.save(libro.get());
		
		}else {
			return null;
		}

		
	}
	
}
