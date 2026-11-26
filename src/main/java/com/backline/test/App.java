package com.backline.test;

import org.apache.commons.text.StringSubstitutor;
import java.util.Map;

public class App {
    public static String greet(String name) {
        return new StringSubstitutor(Map.of("name", name)).replace("Hello, ${name}!");
    }

    public static void main(String[] args) {
        System.out.println(greet(args.length > 0 ? args[0] : "world"));
    }
}
