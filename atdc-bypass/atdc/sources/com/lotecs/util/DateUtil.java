package com.lotecs.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class DateUtil {
    public static String getDate(String str, int i, int i2) {
        Calendar instance = Calendar.getInstance();
        if (i != 0) {
            instance.add(i2, i);
        }
        return new SimpleDateFormat(str).format(instance.getTime());
    }

    public static String getDate(String str, int i) {
        return getDate(str, i, 5);
    }

    public static String getDate(String str) {
        return getDate(str, 0, -1);
    }

    public static String getDate(int i) {
        return getDate("yyyyMMdd", i, 5);
    }

    public static String getDate() {
        return getDate("yyyyMMdd", 0, -1);
    }

    public static String getDefaultDateTime(Object obj) {
        if (StringUtil.isNull(obj)) {
            return getDate("MM/dd HH:mm:ss");
        }
        return new SimpleDateFormat("MM/dd HH:mm:ss").format(toCalendar(obj.toString()).getTime());
    }

    public static String getDefaultTime(Object obj, String str) {
        if (StringUtil.isNull(obj)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("HH");
            stringBuilder.append(str);
            stringBuilder.append("mm");
            stringBuilder.append(str);
            stringBuilder.append("ss");
            return getDate(stringBuilder.toString());
        }
        Calendar toTimeCalendar = toTimeCalendar(obj.toString().replaceAll(str, ""));
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("HH");
        stringBuilder2.append(str);
        stringBuilder2.append("mm");
        stringBuilder2.append(str);
        stringBuilder2.append("ss");
        return new SimpleDateFormat(stringBuilder2.toString()).format(toTimeCalendar.getTime());
    }

    public static String getDefaultDate(Object obj, String str, int i) {
        if (StringUtil.isNull(obj)) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("yyyy");
            stringBuilder.append(str);
            stringBuilder.append("MM");
            stringBuilder.append(str);
            stringBuilder.append("dd");
            return getDate(stringBuilder.toString(), i);
        }
        Calendar toCalendar = toCalendar(obj.toString().replaceAll(str, ""));
        toCalendar.add(5, i);
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("yyyy");
        stringBuilder2.append(str);
        stringBuilder2.append("MM");
        stringBuilder2.append(str);
        stringBuilder2.append("dd");
        return new SimpleDateFormat(stringBuilder2.toString()).format(toCalendar.getTime());
    }

    public static String getDefaultDate(Object obj, String str) {
        return getDefaultDate(obj, str, 0);
    }

    public static String getDefaultDate(Object obj) throws Exception {
        return getDefaultDate(obj, "-", 0);
    }

    public static int compareDate(String str, String str2) {
        return StringUtil.toLong(str) < StringUtil.toLong(str2) ? 2 : 1;
    }

    public static long getDifference(String str, String str2, int i) {
        long timeInMillis = toCalendar(str2).getTimeInMillis() - toCalendar(str).getTimeInMillis();
        if (i == 1) {
            return timeInMillis / 86400000;
        }
        if (i == 2) {
            return timeInMillis / 3600000;
        }
        if (i == 3) {
            return timeInMillis / 60000;
        }
        return i == 4 ? timeInMillis / 1000 : 0;
    }

    public static long getDifference(String str) {
        return getDifference(getDate("yyyyMMdd"), str, 1);
    }

    public static long getDifferenceSecond(String str) {
        return getDifference(getDate("yyyyMMddHHmmss"), str, 4);
    }

    public static long getDifference(String str, String str2) {
        return getDifference(str, str2, 1);
    }

    public static Calendar toCalendar(String str) {
        Calendar instance = Calendar.getInstance();
        if (str.length() > 3) {
            instance.set(1, StringUtil.toInt(str.substring(0, 4)));
        }
        if (str.length() > 5) {
            instance.set(2, StringUtil.toInt(str.substring(4, 6)) - 1);
        }
        if (str.length() > 7) {
            instance.set(5, StringUtil.toInt(str.substring(6, 8)));
        }
        if (str.length() > 9) {
            instance.set(11, StringUtil.toInt(str.substring(8, 10)));
        }
        if (str.length() > 11) {
            instance.set(12, StringUtil.toInt(str.substring(10, 12)));
        }
        if (str.length() > 13) {
            instance.set(13, StringUtil.toInt(str.substring(12, 14)));
        }
        return instance;
    }

    public static Calendar toTimeCalendar(String str) {
        Calendar instance = Calendar.getInstance();
        if (str.length() > 1) {
            instance.set(11, StringUtil.toInt(str.substring(0, 2)));
        }
        if (str.length() > 3) {
            instance.set(12, StringUtil.toInt(str.substring(2, 4)));
        }
        if (str.length() > 5) {
            instance.set(13, StringUtil.toInt(str.substring(4, 6)));
        }
        return instance;
    }

    public static String toDate(long j) {
        return toDate(j, "yyyyMMddHHmmss");
    }

    public static String toDate(long j, String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(str);
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(j);
        return simpleDateFormat.format(instance.getTime());
    }

    public static int getWeek(String str) {
        return toCalendar(str).get(7);
    }

    public static String getFirstDayOfWeek() {
        return getFirstDayOfWeek("yyyyMMdd");
    }

    public static String getFirstDayOfWeek(String str) {
        Calendar instance = Calendar.getInstance();
        int i = 2 - instance.get(7);
        if (i != 0) {
            instance.add(5, i);
        }
        return new SimpleDateFormat(str).format(instance.getTime());
    }

    public static String getLastDay() {
        return getLastDay("yyyyMMdd");
    }

    public static String getLastDay(String str) {
        Calendar instance = Calendar.getInstance();
        instance.set(5, instance.getActualMaximum(5));
        return new SimpleDateFormat(str).format(instance.getTime());
    }
}
