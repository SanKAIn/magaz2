package ru.javawebinar.topjava.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "carts")
public class Cart extends AbstractBaseEntity {

    @Column(name = "detail_id")
    private int detailId;

    @Column(name = "user_id")
    private int userId;

    @Column(name = "session")
    private String session;

    public Cart(){}

    public Cart(int detailId, String session){
        this.session = session;
        this.detailId = detailId;
    }

    public Cart(int detailId, int userId, String session){
        this.detailId = detailId;
        this.userId = userId;
        this.session = session;
    }

    public String getSession() {
        return session;
    }

    public void setSession(String session) {
        this.session = session;
    }

    public int getDetailId() {
        return detailId;
    }

    public void setDetailId(int detailId) {
        this.detailId = detailId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}
