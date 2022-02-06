package pl.jaro.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.jaro.Service.JpaBookService;

@Controller
@RequestMapping("/admin/books")
public class BookController {

    private final JpaBookService bookService;

    public BookController(JpaBookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping
    public String getAll(Model model){
        model.addAttribute("books",bookService.getBooks());
        return "/books/booksPage";
    }


    @GetMapping("/form")
    public String getForm(Model model){

    }
}
