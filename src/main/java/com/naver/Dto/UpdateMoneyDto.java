package com.naver.Dto;

public class UpdateMoneyDto {
    private int money;
    private String name;

    public UpdateMoneyDto(String name, int money) {
        this.name = name;
        this.money = money;
    }

    public int getMoney() {
        return money;
    }

    public String getName() {
        return name;
    }
}
