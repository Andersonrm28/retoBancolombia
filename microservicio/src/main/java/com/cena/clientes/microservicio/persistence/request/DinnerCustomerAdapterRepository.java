package com.cena.clientes.microservicio.persistence.request;

import com.cena.clientes.microservicio.dto.FiltersDto;
import java.util.Map;

public interface DinnerCustomerAdapterRepository {
    Map<String, Object> callSelectGroup(FiltersDto queryFilters);
}
