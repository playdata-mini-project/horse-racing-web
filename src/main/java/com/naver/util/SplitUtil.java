package com.naver.util;

public class SplitUtil {
    private static final String DELIMITER = ",";

    public static String[] split(String param) {
        return param.split(DELIMITER);
    }
}