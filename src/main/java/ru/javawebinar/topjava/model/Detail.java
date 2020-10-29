package ru.javawebinar.topjava.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "details")
public class Detail extends AbstractBaseEntity {

    @Column(name = "part_name")
    @NotNull
    private String partName;

    @Column(name = "amount")
    private int amount;

    public Detail(){}

    public Detail(Integer id, String partName, int amount){
        super(id);
        this.partName = partName;
        this.amount = amount;
    }

    public Detail(String partName, int count){
        this(null, partName, count);
    }

    public String getPartName() {
        return partName;
    }

    public void setPartName(String name) {
        this.partName = name;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int count) {
        this.amount = count;
    }

    @Override
    public String toString() {
        return "Detail{" +
                "name='" + partName + '\'' +
                ", count=" + amount +
                '}';
    }
}
