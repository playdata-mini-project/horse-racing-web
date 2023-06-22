package com.naver.domain.entity.horse;

import java.util.ArrayList;
import java.util.List;

public class Horses {
    private static List<Horse> horses;
    private Horses() {
        horses = new ArrayList<>();
    }
    public static Horses create() {
        return new Horses();
    }
    public void addHorse(Horse horse) {
        horses.add(horse);
    }
    public List<Horse> getHorses() {
        return horses;
    }
}
