package com.wayofbeing.enums;

public enum AgeGroup {
    ONE(1L, "15-25"), TWO(2L, "26-35"), THREE(3L, "36-45"), FOUR(4L, "46-55"), FIVE(5L, "56-65"), SIX(6L, "65+");

    private String name;

    private java.lang.Long id;

    AgeGroup(Long id, String name) {
        this.name = name;
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public java.lang.Long getId() {
        return id;
    }

    public static String getById(Long id) {
        String value = null;
        for (AgeGroup e : values()) {
            if (e.id.equals(id))
                value = e.name;
        }
        System.out.println("id: " + id + " name: " + value);
        return value;
    }

    public static Long getById(String name) {
        Long id = 0l;
        for (AgeGroup e : values()) {
            if (e.name.equals(name))
                id = e.id;
        }
        System.out.println("id: " + id + " name: " + name);
        return id;
    }
}