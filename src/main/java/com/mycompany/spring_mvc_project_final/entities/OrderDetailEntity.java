/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.spring_mvc_project_final.entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "order_detail")
public class OrderDetailEntity implements Serializable {

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int id;

    private int quantity;
    private double unitPrice;
    private double disconut;
    private String color;
    private double size;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private ProductEntity productOrderDetail;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private OrdersEntity orders;

    public OrderDetailEntity() {
    }

    public OrderDetailEntity(int id, int quantity, double unitPrice, double disconut, String color, double size) {
        this.id = id;
        this.quantity = quantity;
        this.unitPrice = unitPrice;
        this.disconut = disconut;
        this.color = color;
        this.size = size;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public double getDisconut() {
        return disconut;
    }

    public void setDisconut(double disconut) {
        this.disconut = disconut;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getSize() {
        return size;
    }

    public void setSize(double size) {
        this.size = size;
    }

    public ProductEntity getProductOrderDetail() {
        return productOrderDetail;
    }

    public void setProductOrderDetail(ProductEntity productOrderDetail) {
        this.productOrderDetail = productOrderDetail;
    }

    public OrdersEntity getOrders() {
        return orders;
    }

    public void setOrders(OrdersEntity orders) {
        this.orders = orders;
    }

}
