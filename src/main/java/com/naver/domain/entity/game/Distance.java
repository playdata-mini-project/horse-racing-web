package com.naver.domain.entity.game;

public class Distance {
    private static final int INIT_VALUE = 0;
    private int value;
    public Distance(int value) {
        this.value = value;
    }
    public int getValue() {
        return value;
    }
    public void update(int distance) {
        this.value += distance;
    }
}
