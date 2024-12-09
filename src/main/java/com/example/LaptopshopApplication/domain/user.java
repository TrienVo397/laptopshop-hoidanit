package com.example.LaptopshopApplication.domain;

public class user {
    private long id;
    private String password;
    private String email;
    private String fullName;
    private String address;
    private String phone;
    
    public user(long id, String password, String email, String fullName, String address, String phone) {
        this.id = id;
        this.password = password;
        this.email = email;
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
    }
    public long getId() {
        return id;
    }
    public String getPassword() {
        return password;
    }
    public String getEmail() {
        return email;
    }
    public String getFullName() {
        return fullName;
    }
    public String getAddress() {
        return address;
    }
    public String getPhone() {
        return phone;
    }
    public void setId(long id) {
        this.id = id;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setFullName(String fullName) {
        this.fullName = fullName;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    @Override
    public String toString() {
        return "user [id=" + id + ", password=" + password + ", email=" + email + ", fullName=" + fullName
                + ", address=" + address + ", phone=" + phone + "]";
    }

    
}
