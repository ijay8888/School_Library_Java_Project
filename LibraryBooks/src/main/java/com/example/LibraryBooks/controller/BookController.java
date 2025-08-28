package com.example.LibraryBooks.controller;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.LibraryBooks.entity.Book;
import com.example.LibraryBooks.repo.BookRepository;

@Controller
@RequestMapping("/library")
public class BookController {

    @Autowired
    private BookRepository bookRepository;

    // HOME PAGE
    @GetMapping("/home")
    public String home(Model model) {
        model.addAttribute("appName", "Java Training School Library");
        return "home";
    }

    // DISPLAY ALL BOOKS
    @GetMapping("/display")
    public String displayBookInfo(Model model, @ModelAttribute("msg") String msg) {
        List<Book> allBooks = (List<Book>) bookRepository.findAll();
        model.addAttribute("books", allBooks);

        // show message only if not already set
        if (allBooks.isEmpty()) {
            model.addAttribute("msg", "Unfortunately, the library is empty now. Let's contribute by adding some books");
        } else if (msg == null || msg.isEmpty()) {
            model.addAttribute("msg", "Welcome to Java Training School Library");
        }

        return "displayBook";
    }

    // ADD BOOK FORM
    @GetMapping("/addBookForm")
    public String displayAddBookForm(Model model) {
        model.addAttribute("book", new Book());
        return "addBook";
    }

    // SAVE BOOK
    @PostMapping("/addBook")
    public String addBook(@ModelAttribute("book") Book book, RedirectAttributes redirectAttributes) {
        book.setStatus("available");
        book.setBorrowDate(null);
        book.setBorrowedForDays(0);
        bookRepository.save(book);
        redirectAttributes.addFlashAttribute("msg", "Book added successfully. Thanks!");
        redirectAttributes.addFlashAttribute("msgType", "success"); // Green toast for success
        return "redirect:/library/display";
    }

    // BORROW FORM
    @GetMapping("/borrowForm/{id}")
    public String borrowForm(@PathVariable int id, Model model) {
        Optional<Book> book = bookRepository.findById(id);
        if (book.isPresent() && "available".equals(book.get().getStatus())) {
            model.addAttribute("book", book.get());
            return "borrowBook";
        } else {
            model.addAttribute("msg", "Book is already borrowed or not available!");
            return "redirect:/library/display";
        }
    }

    // BORROW BOOK
    @PostMapping("/borrow/{id}")
    public String borrowBook(@PathVariable int id, @RequestParam int days, RedirectAttributes redirectAttributes) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if (optionalBook.isPresent()) {
            Book book = optionalBook.get();
            if ("available".equals(book.getStatus())) {
                book.setStatus("borrowed");
                book.setBorrowedForDays(days);
                book.setBorrowDate(LocalDate.now());
                bookRepository.save(book);
                redirectAttributes.addFlashAttribute("msg", "Book borrowed successfully!");
                redirectAttributes.addFlashAttribute("msgType", "success"); // Green toast
            } else {
                redirectAttributes.addFlashAttribute("msg", "Sorry, this book is not available!");
                redirectAttributes.addFlashAttribute("msgType", "error"); // Optional: red toast here
            }
        }
        return "redirect:/library/display";
    }

    // RETURN BOOK
    @GetMapping("/return/{id}")
    public String returnBook(@PathVariable int id, RedirectAttributes redirectAttributes) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if (optionalBook.isPresent()) {
            Book book = optionalBook.get();
            book.setStatus("available");
            book.setBorrowedForDays(0);
            book.setBorrowDate(null);
            bookRepository.save(book);
            redirectAttributes.addFlashAttribute("msg", "Book returned successfully!");
        }
        return "redirect:/library/display";
    }

    // EDIT FORM
    @GetMapping("/edit/{id}")
    public String editBookForm(@PathVariable int id, Model model) {
        Optional<Book> book = bookRepository.findById(id);
        model.addAttribute("book", book.orElse(null));
        return "editBook";
    }

    // UPDATE BOOK
    @PostMapping("/update/{id}")
    public String updateBook(@PathVariable int id, @ModelAttribute Book updatedBook, RedirectAttributes redirectAttributes) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if (optionalBook.isPresent()) {
            Book book = optionalBook.get();
            book.setName(updatedBook.getName());
            book.setAuthor(updatedBook.getAuthor());
            book.setPrice(updatedBook.getPrice());
            bookRepository.save(book);
            redirectAttributes.addFlashAttribute("msg", "Book updated successfully!");
        }
        return "redirect:/library/display";
    }

    // DELETE BOOK
    @GetMapping("/delete/{id}")
    public String deleteBook(@PathVariable int id, RedirectAttributes redirectAttributes) {
        bookRepository.deleteById(id);
        redirectAttributes.addFlashAttribute("msg", "Book deleted successfully!");
        redirectAttributes.addFlashAttribute("msgType", "error"); // 🔴 red toast
        return "redirect:/library/display";
    }




    // SEARCH BOOKS
    @GetMapping("/search")
    public String searchBooks(@RequestParam("keyword") String keyword, Model model) {
        List<Book> books;
        if (keyword != null && !keyword.isEmpty()) {
            books = bookRepository.findByNameContainingIgnoreCaseOrAuthorContainingIgnoreCase(keyword, keyword);
            if (books.isEmpty()) {
                model.addAttribute("msg", "No books found for: " + keyword);
            }
        } else {
            books = (List<Book>) bookRepository.findAll();
        }
        model.addAttribute("books", books);
        return "displayBook";
    }
}
