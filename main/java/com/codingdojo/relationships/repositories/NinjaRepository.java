package com.codingdojo.relationships.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.relationships.models.Ninja;

@Repository
public interface NinjaRepository extends CrudRepository <Ninja, Long>{

}
