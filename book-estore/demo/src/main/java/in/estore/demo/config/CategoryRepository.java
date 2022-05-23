package in.estore.demo.config;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

import in.estore.demo.entity.Bookcategory;

@RepositoryRestResource(collectionResourceRel="bookCategory", path="book-category")
public interface CategoryRepository extends JpaRepository<Bookcategory, Long>{

}
