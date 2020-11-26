package ru.javawebinar.topjava.util;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

public class DetailUtil {

    public DetailUtil() {
    }

    public static String getQuery(HttpServletRequest request){
        Enumeration<String> parameterNames = request.getParameterNames();
        StringBuilder sb = new StringBuilder("SELECT d FROM Detail d");
        int kolParam = 0;

        while (parameterNames.hasMoreElements()){
            String name = parameterNames.nextElement();
            if (!name.equalsIgnoreCase("page") && !name.equalsIgnoreCase("limit") &&
                    !name.equalsIgnoreCase("order")) kolParam++;
        }

        while (parameterNames.hasMoreElements() && kolParam > 0){
            if (sb.length() == 22) sb.append(" WHERE");
            String name = parameterNames.nextElement();
            if (!name.equalsIgnoreCase("page") && !name.equalsIgnoreCase("limit") &&
                    !name.equalsIgnoreCase("order")) {
                    sb.append(" d.");
                    sb.append(name);
                    sb.append("=");
                    sb.append(request.getParameter(name));
                    if (--kolParam > 0)  sb.append(" AND");
            }
        }

        String order = request.getParameter("order");
        if (order != null){
            sb.append(" ORDER BY ");
            if (order.equalsIgnoreCase("цена по возростанию")) sb.append("d.cost ASC");
            if (order.equalsIgnoreCase("цена по убыванию")) sb.append("d.cost DESC");
            //TODO доделать фильтр
        }
        return sb.toString();
    }

    public static Pageable getPageable(HttpServletRequest request){
        String page = request.getParameter("page");
        String amount = request.getParameter("limit");
        int p = page == null ? 0 : Integer.parseInt(page) - 1;
        int a = amount == null ? 12 : Integer.parseInt(amount);
        return PageRequest.of(p, a);
    }
}













