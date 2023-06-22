package com.naver.domain.entity.game;

import com.naver.domain.entity.horse.Horse;
import com.naver.domain.entity.horse.Horses;

import java.util.List;
import java.util.stream.Collectors;

public class Game {
    private Horses horses;
    public Game() {
        horses = Horses.create();
    }
    public void setHorses(Horses horses) {
        this.horses = horses;
    }
    public void startRace() {
        for (Horse horse : horses.getHorses()) {
            new Race(horse, horse.getTargetDistance()).start();
        }
    }

    public Horses getHorses() {
        return horses;
    }
    public Horse getWinningHorse() {
        List<Horse> collect = horses.getHorses().stream()
                .sorted()
                .collect(Collectors.toList());
        return collect.get(0);
    }
}
