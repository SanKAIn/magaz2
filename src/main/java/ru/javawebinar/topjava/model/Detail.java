package ru.javawebinar.topjava.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

@Entity
@Getter
@Setter
@Table(name = "details_table")
public class Detail extends AbstractBaseEntity {


    @Column(name = "part_name")
    @NotNull
    private String partName;

    @Column(name = "kod")
    @NotNull
    private int kod;

    @Column(name = "image")
    private String image;

    @Column(name = "amount")
    @Min(value = 0)
    private int amount;

    @Column(name = "cost")
    @Min(value = 0)
    private int cost;

    public Detail(){}

    public Detail(Integer id, String partName, int kod, int amount, String image, int cost){
        super(id);
        this.partName = partName;
        this.amount = amount;
        this.kod = kod;
        this.image = image;
        this.cost = cost;
    }

    public Detail(String partName, int kod, int count, String image, int cost){
        this(null, partName, kod, count, image, cost);
    }

    @Override
    public String toString() {
        return "Detail{" +
                "name='" + partName + '\'' +
                ", count=" + amount +
                '}';
    }
}
