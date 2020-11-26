package ru.javawebinar.topjava.web;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RootController {

    @GetMapping("/")
    public String root() {
        //Pattern PAttern = Pattern.compile("[A-Za-z0-9.%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{3,4}");
        return "index";
    }

    //    @Secured("ROLE_ADMIN")
    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("/users")
    public String getUsers() {
        return "users";
    }

    @GetMapping(value = "/login")
    public String login() {
        return "login";
    }

    @GetMapping("/details")
    public String getDetails(){
        return "catalog-pag";
    }

    @GetMapping("/cart")
    public String getCart(){
        return "cart";
    }

    @GetMapping("/order")
    public String getOrder(){
        return "order";
    }

    @GetMapping("/compare")
    public String getCompare(){
        return "compare";
    }

    @GetMapping("/catalog-pag")
    public String getCatalog(){
        return "catalog-pag";
    }
}
