package com.wayofbeing.enums;

public enum Gender {
    ONE(1L, "Male"), TWO(2L, "Female");

    private String name;

    private java.lang.Long id;

    Gender(Long id, String name) {
        this.name = name;
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public Long getId() {
        return id;
    }

    public static String getById(Long id) {
        String value = null;
        for (Gender e : values()) {
            if (e.id.equals(id))
                value = e.name;
        }
        System.out.println("id: " + id + " name: " + value);
        return value;
    }

    public static Long getById(String name) {
        Long id = 0l;
        for (Gender e : values()) {
            if (e.name.equals(name))
                id = e.id;
        }
        System.out.println("id: " + id + " name: " + name);
        return id;
    }
}
