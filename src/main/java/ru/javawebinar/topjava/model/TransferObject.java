package ru.javawebinar.topjava.model;

import lombok.Data;

import java.util.Map;

@Data
public class TransferObject {
    private Detail[] goods;
    private Map<String, String> options;
    private Integer countAll;
    private String code = "error";

    public TransferObject() {
    }
}
