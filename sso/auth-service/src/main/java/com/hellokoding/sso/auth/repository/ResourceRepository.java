package com.hellokoding.sso.auth.repository;

import com.hellokoding.sso.auth.entity.Resource;
import com.hellokoding.sso.auth.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ResourceRepository extends PagingAndSortingRepository<Resource, Long> {
    Boolean existsResourceByName(String name);

    Optional<Resource> findResourceByName(String name);
}
