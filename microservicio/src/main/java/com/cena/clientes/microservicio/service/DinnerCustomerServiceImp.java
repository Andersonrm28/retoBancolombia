package com.cena.clientes.microservicio.service;
import com.cena.clientes.microservicio.dto.FiltersDto;
import com.cena.clientes.microservicio.dto.SelectGroupDto;
import com.cena.clientes.microservicio.persistence.request.DinnerCustomerAdapterRepository;
import com.cena.clientes.microservicio.util.Constant;
import com.cena.clientes.microservicio.util.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedCaseInsensitiveMap;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Service
public class DinnerCustomerServiceImp implements DinnerCustomerService {

    // Variables a usar en el proceso
    private final DinnerCustomerAdapterRepository dinnerCustomerAdapterRepository;
    private String finalResult = "";
    private FiltersDto queryFilters = new FiltersDto();
    private boolean hasFilters = false;


    @Autowired
    public DinnerCustomerServiceImp(DinnerCustomerAdapterRepository dinnerCustomerAdapterRepository) {
        this.dinnerCustomerAdapterRepository = dinnerCustomerAdapterRepository;
    }

    @Override
    public String getResult(MultipartFile file) {
        if (ObjectUtils.nonNullOrEmpty(file)) {
            readDocument(file);
        }
        return finalResult;
    }

    // Metodo encargado de leer el documento
    private void readDocument(MultipartFile file) {
        try (Stream<String> stream = Files.lines(Paths.get(file.getOriginalFilename()))) {
            stream.forEach(this::createNewDocument);
            // Valida ultimo filtro en caso de que exista
            if (hasFilters) {
                finalResult += createSelectGroup(queryFilters);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // Metodo encargado de ir armando el documento final
    private void createNewDocument(String line){
        if (ObjectUtils.nonNullOrEmpty(line)) {
            if (line.indexOf("<") != -1 || line.indexOf(">") != -1) {
                if (hasFilters) {
                    finalResult += createSelectGroup(queryFilters) + "\n";
                }
                finalResult += line + "\n";
            } else {
                addFilter(line);
            }
        }
    }

    // Metodo encargado de modularizar los filtros y agregarlo al objeto
    private void addFilter(String line){
        if (ObjectUtils.nonNullOrEmpty(line)) {
            // Validacion vital para la inicializacion del objeto de filtros
            queryFilters = !hasFilters ? new FiltersDto() : queryFilters;
            String[] seccionFilter = line.split(":");
            switch (seccionFilter[0]){
                case Constant.TC:
                    queryFilters.tcFilter = Integer.parseInt(seccionFilter[1]);
                    break;
                case Constant.UG:
                    queryFilters.ugFilter = seccionFilter[1];
                    break;
                case Constant.RI:
                    queryFilters.riFilter = Double.parseDouble(seccionFilter[1]);
                    break;
                case Constant.RF:
                    queryFilters.rfFilter = Double.parseDouble(seccionFilter[1]);
                    break;
            }
            hasFilters = true;
        }
    }

    // Metodo encargado de agrupar y delimitar por coma el grupo selecto de clientes
    private String createSelectGroup(FiltersDto queryFilters) {
        String result = Constant.CANCELED_GROUP;
        List<SelectGroupDto> selectGroup = transformSelectGroup(queryFilters);
        if (selectGroup.size() > 1){
            result = selectGroup.stream().map(itemGroup -> String.valueOf(itemGroup.clientCode)).collect(Collectors.joining(","));
        }
        hasFilters = false;
        return result;
    }

    // Metodo encargado de transformar la respuesta que se obtiene desde base de datos
    private List<SelectGroupDto> transformSelectGroup(FiltersDto queryFilters){
        List<SelectGroupDto> selectGroup = new ArrayList<>();
        try {
            Map<String, Object> data = dinnerCustomerAdapterRepository.callSelectGroup(queryFilters);
            for (Map.Entry<String, Object> entry: data.entrySet()){
                if (entry.getKey().equalsIgnoreCase(Constant.RESULT_SET)) {
                    for (Object obj: ((ArrayList) entry.getValue()).toArray()) {
                        selectGroup.add(new SelectGroupDto(((LinkedCaseInsensitiveMap) obj).get(Constant.RESULT_CLIENT_CODE).toString(),
                                Boolean.parseBoolean(((LinkedCaseInsensitiveMap) obj).get(Constant.RESULT_ENCRYPT).toString())));
                    }
                }
            }
        } catch (Exception e) {}

        return selectGroup;
    }

}
