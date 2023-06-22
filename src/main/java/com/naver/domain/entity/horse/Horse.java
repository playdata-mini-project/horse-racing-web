package com.naver.domain.entity.horse;

import com.naver.domain.entity.game.Distance;

public class Horse implements Comparable<Horse>{
    private static final int INIT_VALUE = 0;
    private final String name;
    private final Distance distance;
    private String user;
    private int targetDistance;
    private final int speed;
    private Long finishTime;
    public Horse(String name) {
        this.name = name;
        this.distance = new Distance(0);
        this.targetDistance = 0;
        this.speed = (int) (Math.random() * 1000);
    }
    public String getName() {
        return name;
    }
    public Distance getDistance() {
        return distance;
    }
    public void updateDistance(int distance) {
        this.distance.update(distance);
    }
    public String getUser() {
        return user;
    }
    public void setUser(String user) {
        this.user = user;
    }
    public int getTargetDistance() {
        return targetDistance;
    }
    public void setTargetDistance(int targetDistance) {
        this.targetDistance = targetDistance;
    }
    public int getSpeed() {
        return speed;
    }
    public Long getFinishTime() {
        return finishTime;
    }
    public void setFinishTime(Long finishTime) {
        this.finishTime = finishTime;
    }
    @Override
    public int compareTo(Horse o) {
        return (int) (this.finishTime - o.getFinishTime());
    }
}