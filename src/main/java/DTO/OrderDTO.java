/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DTO;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author XuanQuy
 */
public class OrderDTO {

    int id;
    int userId;
    String customerName;
    String addressShip;
    String phone;
    float total;
    String status;
    ArrayList<Item> items;
    Date createAt;

    public OrderDTO(int id, int userId, String customerName, String addressShip, String phone, float total, String status, ArrayList<Item> items, Date createAt) {
        this.id = id;
        this.userId = userId;
        this.customerName = customerName;
        this.addressShip = addressShip;
        this.phone = phone;
        this.total = total;
        this.status = status;
        this.items = items;
        this.createAt = createAt;
    }

    public OrderDTO(int userId, String customerName, String addressShip, String phone, float total, String status, ArrayList<Item> items, Date createAt) {
        this.userId = userId;
        this.customerName = customerName;
        this.addressShip = addressShip;
        this.phone = phone;
        this.total = total;
        this.status = status;
        this.items = items;
        this.createAt = createAt;
    }

    public OrderDTO(int userId, String customerName, String addressShip, String phone, float total, String status, Date createAt) {
        this.userId = userId;
        this.customerName = customerName;
        this.addressShip = addressShip;
        this.phone = phone;
        this.total = total;
        this.status = status;

        this.createAt = createAt;
    }

    public OrderDTO() {
    }

    public OrderDTO(int userId, String customerName, String addressShip, String phone, float total, Date createAt) {
        this.userId = userId;
        this.customerName = customerName;
        this.addressShip = addressShip;
        this.phone = phone;
        this.total = total;
        this.createAt = createAt;
    }

    public int getId() {
        return id;
    }

    public int getUserId() {
        return userId;
    }

    public String getCustomerName() {
        return customerName;
    }

    public String getAddressShip() {
        return addressShip;
    }

    public String getPhone() {
        return phone;
    }

    public float getTotal() {
        return total;
    }

    public String getStatus() {
        return status;
    }

    public ArrayList<Item> getItems() {
        return items;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public void setAddressShip(String addressShip) {
        this.addressShip = addressShip;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setItems(ArrayList<Item> items) {
        this.items = items;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }
}
