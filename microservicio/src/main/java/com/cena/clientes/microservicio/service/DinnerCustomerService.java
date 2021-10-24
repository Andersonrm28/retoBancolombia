package com.cena.clientes.microservicio.service;

import org.springframework.web.multipart.MultipartFile;

@FunctionalInterface
public interface DinnerCustomerService {

    String getResult(MultipartFile file);
}
