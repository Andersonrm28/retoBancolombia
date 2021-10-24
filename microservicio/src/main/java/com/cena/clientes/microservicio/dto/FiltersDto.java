package com.cena.clientes.microservicio.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FiltersDto {
    public int tcFilter;
    public String ugFilter;
    public double riFilter;
    public double rfFilter;
}
