package com.example.LibraryBooks.repo;

import com.example.LibraryBooks.entity.Book;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
 
public interface BookRepository extends CrudRepository<Book, Integer> {
	List<Book> findByNameContainingIgnoreCaseOrAuthorContainingIgnoreCase(String name, String author);

}
