package com.klu.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klu.jfsd.model.FileEntity;

public interface FileRepository extends JpaRepository<FileEntity, Long> {
}

