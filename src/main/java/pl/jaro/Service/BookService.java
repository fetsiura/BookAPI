package pl.jaro.Service;

import pl.jaro.Entity.Book;

import java.util.List;
import java.util.Optional;

interface BookService {


    List<Book> getBooks();

    Optional<Book> get(Long id);

    void add(Book book);

    void delete(Long id);

    void update(Book book);
}
