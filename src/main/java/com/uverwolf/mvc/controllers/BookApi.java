package com.uverwolf.mvc.controllers;

import java.util.List;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.uverwolf.mvc.models.Book;
import com.uverwolf.mvc.services.BookServices;

@RestController
public class BookApi {
	
	private final BookServices bookServ;

	public BookApi(BookServices bookServ) {
		super();
		this.bookServ = bookServ;
	}
	
	@RequestMapping("/api/books")
	public List<Book> index() {
		return bookServ.todosLibros();
	}
	
	@RequestMapping(value= "/api/books", method = RequestMethod.POST)
	public Book crear(@RequestParam(value="titulo") String titulo,@RequestParam(value="descripcion")
	String descripcion,@RequestParam(value="idioma") String idioma,@RequestParam(value="numeroPaginas") int paginas) {
		
		Book libro = new Book(titulo,descripcion,idioma,paginas);
		return bookServ.crearLibro(libro);
	}
	
	@RequestMapping("api/books/{id}")
	public Book mostar(@PathVariable("id") Long id) {
		Book libro = bookServ.encontrarLibro(id);
		return libro;
	}
	@RequestMapping(value="api/books/e/{id}", method = RequestMethod.POST)
	public void eliminar(@PathVariable("id")Long id) {
		 bookServ.eliminarLibro(id);
	}
	@RequestMapping(value="api/books/u/{id}",method = RequestMethod.POST)
	public Book actualizar(@PathVariable("id") Long id,@RequestParam(value="titulo") String titulo,@RequestParam(value="descripcion")
	String descripcion,@RequestParam(value="idioma") String idioma,@RequestParam(value="numeroPaginas") int paginas) {
	return	bookServ.actualizarLibro(id,titulo, descripcion, idioma, paginas);
	}
	
}
