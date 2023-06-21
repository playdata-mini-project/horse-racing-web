package com.naver.Dto;

public class UpdateMoneyDto {
    private int money;
    private String name;

    public UpdateMoneyDto(int money, String name) {
        this.money = money;
        this.name = name;
    }

    public int getMoney() {
        return money;
    }

    public String getName() {
        return name;
    }
}
