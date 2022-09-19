/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package assignment.src;

/**
 *
 * @author kaniya
 */
public class Distance {
    private int distanceId;
    private int pickCityId;
    private int dropCityId;
    private double distance;

    public Distance(int distanceId, int pickCityId, int dropCityId, double distance) {
        this.distanceId = distanceId;
        this.pickCityId = pickCityId;
        this.dropCityId = dropCityId;
        this.distance = distance;
    }

    public int getDistanceId() {
        return distanceId;
    }

    public void setDistanceId(int distanceId) {
        this.distanceId = distanceId;
    }

    public int getPickCityId() {
        return pickCityId;
    }

    public void setPickCityId(int pickCityId) {
        this.pickCityId = pickCityId;
    }

    public int getDropCityId() {
        return dropCityId;
    }

    public void setDropCityId(int dropCityId) {
        this.dropCityId = dropCityId;
    }

    public double getDistance() {
        return distance;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }
}
