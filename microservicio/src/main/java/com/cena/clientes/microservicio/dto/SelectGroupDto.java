package com.cena.clientes.microservicio.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@NoArgsConstructor
@AllArgsConstructor
public class SelectGroupDto {
    public String clientCode;
    public boolean encrypt;
}
