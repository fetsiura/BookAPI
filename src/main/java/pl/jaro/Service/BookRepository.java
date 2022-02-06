package pl.jaro.Service;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;
import pl.jaro.Entity.Book;

@Repository
interface BookRepository extends JpaRepository<Book,Long> {


}
