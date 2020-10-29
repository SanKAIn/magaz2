package ru.javawebinar.topjava.model;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    GUEST,
    USER,
    ADMIN;

    @Override
    public String getAuthority() {
        return "ROLE_" + name();
    }
}