package com.naver.Dto;

public class HorseInsertDto {

    private String name;
    private final int age;
    private float height;
    private final float weight;

    public HorseInsertDto(String name, int age, float height, float weight) {
        this.name = name;
        this.age = age;
        this.height = height;
        this.weight = weight;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }



    public void setHeight(float height) {
        this.height = height;
    }



    public int getAge() {
        return age;
    }

    public float getHeight() {
        return height;
    }

    public float getWeight() {
        return weight;
    }
}
