package in.estore.demo.config;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import in.estore.demo.entity.*;

@RepositoryRestResource
public interface StateRepository extends JpaRepository<State, Long>{
	
	List<State> findByCountryCode(@Param("code") String code);
}