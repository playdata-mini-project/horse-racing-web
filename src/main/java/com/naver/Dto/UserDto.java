package com.naver.Dto;

public class UserDto {
    private Integer id;
    private String name;
    private String password;
    private String nickname;
    private int money;
    private String createdAt;

    public UserDto(Integer id, String name, String password, String nickname, int money, String createdAt) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.nickname = nickname;
        this.money = money;
        this.createdAt = createdAt;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}
