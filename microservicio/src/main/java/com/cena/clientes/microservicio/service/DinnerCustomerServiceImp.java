package com.cena.clientes.microservicio.service;
import com.cena.clientes.microservicio.dto.FiltersDto;
import com.cena.clientes.microservicio.util.Constant;
import com.cena.clientes.microservicio.util.ObjectUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.stream.Stream;

@Service
public class DinnerCustomerServiceImp implements DinnerCustomerService {

    private String finalResult = "";
    private FiltersDto queryFilters = new FiltersDto();
    private boolean hasFilters = false;

    @Override
    public String getResult(MultipartFile file) {
        if (ObjectUtils.nonNullOrEmpty(file)) {
            readDocument(file);
        }
        return finalResult;
    }

    private void readDocument(MultipartFile file) {
        try (Stream<String> stream = Files.lines(Paths.get(file.getOriginalFilename()))) {
            stream.forEach(this::createNewDocument);
            if (hasFilters) {
                finalResult += createSelectGroup(queryFilters);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

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

    private void addFilter(String line){
        if (ObjectUtils.nonNullOrEmpty(line)) {
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

    private String createSelectGroup(FiltersDto queryFilters) {
        String result = "CANCELADA";
        result = queryFilters.getTcFilter()+";"+queryFilters.getUgFilter()+";"+queryFilters.getRiFilter()+";"+queryFilters.getRfFilter();
        hasFilters = false;
        return result;
    }

}
