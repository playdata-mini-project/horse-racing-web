package com.naver.Dto;

public class UserDto {

    private String name;
    private final String password;
    private final String nickname;
    private final int money;

    public UserDto(String name, String password, String nickname, int money) {

        this.name = name;
        this.password = password;
        this.nickname = nickname;
        this.money = money;
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


    public String getNickname() {
        return nickname;
    }



    public int getMoney() {
        return money;
    }



}
