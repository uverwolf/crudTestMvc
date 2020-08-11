package com.uverwolf.mvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uverwolf.mvc.models.Book;
import com.uverwolf.mvc.services.BookServices;

@Controller
public class BookController {
	private final BookServices bookServ;	
	
	public BookController(BookServices bookServ) {
		this.bookServ = bookServ;
	}
	
	@RequestMapping("/books")
	public String index(Model modelo) {
		List<Book> libro = bookServ.todosLibros();
		modelo.addAttribute("libros", libro);
		
		return "/books/index.jsp";
	}
	
	@RequestMapping("/books/new")
	public String libroNuevo(@ModelAttribute("book") Book libro) {
		return "/books/nuevo.jsp";
	}
	
	@RequestMapping(value = "/books", method = RequestMethod.POST)
	public String  crear(@Valid @ModelAttribute("book") Book libro, BindingResult resultado) {
		if(resultado.hasErrors()) {
			return "/books/nuevo.jsp";
		}else {
			bookServ.crearLibro(libro);
			return "redirect:/books";
		}
	
	}
	
	@RequestMapping("/books/{id}")
	public String ver(@PathVariable("id")Long id,Model modelo) {
		Book libro = bookServ.encontrarLibro(id);
		modelo.addAttribute("libroElegido", libro);
		return "/books/verLibro.jsp";
	}
	
}
