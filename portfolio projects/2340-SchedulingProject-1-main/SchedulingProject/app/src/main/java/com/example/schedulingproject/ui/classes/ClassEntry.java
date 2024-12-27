package com.example.schedulingproject.ui.classes;

import androidx.annotation.NonNull;

public class ClassEntry {
    private String courseName;
    private String instructor;
    private String classSection;
    private String location;
    private String roomNumber;
    private String times;
    private String daysOfTheWeek;


    public ClassEntry() {}
    public String getCourseName() {
        return courseName;
    }
    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }
    public String getInstructor() {
        return instructor;
    }
    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }
    public String getClassSection() {
        return classSection;
    }
    public void setClassSection(String classSection) {
        this.classSection = classSection;
    }
    public String getLocation() {
        return location;
    }
    public void setLocation(String location) {
        this.location = location;
    }
    public String getRoomNumber() {
        return roomNumber;
    }
    public void setRoomNumber(String roomNumber) {
        this.roomNumber = roomNumber;
    }
    public String getTimes() {
        return times;
    }
    public void setTimes(String times) {
        this.times = times;
    }
    public String getDaysOfTheWeek() {
        return daysOfTheWeek;
    }
    public void setDaysOfTheWeek(String daysOfTheWeek) {
        this.daysOfTheWeek = daysOfTheWeek;
    }

    @NonNull
    @Override
    public String toString() {
        return courseName;
    }


}
