package com.example.experiment2.bean;

public class UStudent {
    private String id;

    private String password;

    public UStudent() {
    }

    public UStudent(String id, String password) {
        this.id = id;
        this.password = password;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    @Override
    public String toString() {
        return "UStudent{" +
                "id='" + id + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}