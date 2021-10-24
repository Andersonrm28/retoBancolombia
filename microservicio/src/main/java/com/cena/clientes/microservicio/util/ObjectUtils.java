package com.cena.clientes.microservicio.util;

import java.util.Collection;
import java.util.Objects;

public class ObjectUtils {
    public ObjectUtils() {
    }

    public static boolean isNullOrEmpty(Object value) {
        if(Objects.isNull(value)) return true;

        if(value.getClass().isAssignableFrom(String.class)) {
            return ((String) value).isEmpty();
        }

        if(value.getClass().isArray()) {
            return ((Object[]) value).length == 0;
        }

        if(value instanceof Collection) {
            return ((Collection) value).isEmpty();
        }

        return false;
    }

    public static boolean nonNullOrEmpty(Object value) {
        return !isNullOrEmpty(value);
    }

    public static boolean isEmpty(Object... objects) {
        if(Objects.isNull(objects)) return true;

        boolean empty = false;

        for (Object value : objects) {
            empty = empty || isNullOrEmpty(value);
        }

        return empty;
    }

    public static String nullToString(Object value) {
        if (Objects.isNull(value)) return "";

        return value.toString();
    }
}
