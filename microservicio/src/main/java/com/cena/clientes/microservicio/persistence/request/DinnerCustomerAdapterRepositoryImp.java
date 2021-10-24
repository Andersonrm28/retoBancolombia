package com.cena.clientes.microservicio.persistence.request;
import com.cena.clientes.microservicio.dto.FiltersDto;
import com.cena.clientes.microservicio.util.ObjectUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.Map;

@Repository
@Slf4j
public class DinnerCustomerAdapterRepositoryImp implements DinnerCustomerAdapterRepository {

    private JdbcTemplate jdbcTemplate;
    private SimpleJdbcCall simpleJdbcCall;

    @Autowired
    public DinnerCustomerAdapterRepositoryImp(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Metodo encargado de realizar la consulta al procedimiento almacenado en MySql
    @Override
    public Map<String, Object> callSelectGroup(FiltersDto queryFilters) {
        simpleJdbcCall = new SimpleJdbcCall(jdbcTemplate)
                .withProcedureName("getSelectGroup");

        Map<String, Object> output = simpleJdbcCall.execute(
                new MapSqlParameterSource("tcFilter", queryFilters.getTcFilter())
                        .addValue("ugFilter", ObjectUtils.nullToString(queryFilters.getUgFilter()))
                        .addValue("riFilter", queryFilters.getRiFilter())
                        .addValue("rfFilter", queryFilters.getRfFilter()));

        return output;
    }
}
