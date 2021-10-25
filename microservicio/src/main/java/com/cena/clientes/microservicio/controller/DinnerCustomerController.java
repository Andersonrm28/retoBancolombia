package com.cena.clientes.microservicio.controller;

import com.cena.clientes.microservicio.service.DinnerCustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class DinnerCustomerController {

    private final DinnerCustomerService dinnerCustomerService;

    @Autowired
    public DinnerCustomerController(DinnerCustomerService dinnerCustomerService) {
        this.dinnerCustomerService = dinnerCustomerService;
    }

    @PostMapping(value = "/selectGroup")
    public String selectGroup(@RequestPart("file") MultipartFile file) {
        return dinnerCustomerService.getResult(file);
    }
}
