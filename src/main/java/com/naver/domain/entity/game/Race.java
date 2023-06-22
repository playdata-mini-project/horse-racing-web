package com.naver.domain.entity.game;

import com.naver.domain.entity.horse.Horse;

import java.util.Date;

public class Race extends Thread {
    private Horse horse;
    private int distance;

    public Race(Horse horse, int distance) {
        this.horse = horse;
        this.distance = distance;
    }

    @Override
    public void run() {
        while (true) {
            if (horse.getDistance().getValue() >= distance) {
                horse.setFinishTime(new Date().getTime());
                break;
            }
            horse.updateDistance(1);
            try {
                Thread.sleep((int) (Math.random() * 1000));
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}