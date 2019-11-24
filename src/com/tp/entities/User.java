package com.tp.entities;

public class User {

    public Integer id = 0;

    private String userName;

    private String firstName;

    private String lastName;

    private String address;

    private String phone;

    private String email;

    private String password;

    public static int sequence = 0;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String displayName() {
        return String.format("%s %s", this.firstName, this.lastName);
    }

//    public User(long id,String userName, String firstName, String lastName, String address, String phone,String email,
//            String password) {
//        this.id = 0;
//        this.userName = userName;
//        this.firstName = firstName;
//        this.lastName = lastName;
//        this.address = address;
//        this.phone = phone;
//        this.email = email;
//        this.password = password;
//    }

}
