package com.google.gson.internal.bind.util;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;

public class ISO8601Utils {
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);
    private static final String UTC_ID = "UTC";

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder stringBuilder = new StringBuilder(("yyyy-MM-ddThh:mm:ss".length() + (z ? ".sss".length() : 0)) + (timeZone.getRawOffset() == 0 ? "Z" : "+hh:mm").length());
        padInt(stringBuilder, gregorianCalendar.get(1), "yyyy".length());
        char c = '-';
        stringBuilder.append('-');
        padInt(stringBuilder, gregorianCalendar.get(2) + 1, "MM".length());
        stringBuilder.append('-');
        padInt(stringBuilder, gregorianCalendar.get(5), "dd".length());
        stringBuilder.append('T');
        padInt(stringBuilder, gregorianCalendar.get(11), "hh".length());
        stringBuilder.append(':');
        padInt(stringBuilder, gregorianCalendar.get(12), "mm".length());
        stringBuilder.append(':');
        padInt(stringBuilder, gregorianCalendar.get(13), "ss".length());
        if (z) {
            stringBuilder.append('.');
            padInt(stringBuilder, gregorianCalendar.get(14), "sss".length());
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i = offset / 60000;
            int abs = Math.abs(i / 60);
            i = Math.abs(i % 60);
            if (offset >= 0) {
                c = '+';
            }
            stringBuilder.append(c);
            padInt(stringBuilder, abs, "hh".length());
            stringBuilder.append(':');
            padInt(stringBuilder, i, "mm".length());
        } else {
            stringBuilder.append('Z');
        }
        return stringBuilder.toString();
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x00cf A:{Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }} */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00c7 A:{Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }} */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x01c3  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x01c1  */
    /* JADX WARNING: Removed duplicated region for block: B:84:0x01c1  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x01c3  */
    public static java.util.Date parse(java.lang.String r18, java.text.ParsePosition r19) throws java.text.ParseException {
        /*
        r1 = r18;
        r2 = r19;
        r3 = r19.getIndex();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4 = r3 + 4;
        r3 = parseInt(r1, r3, r4);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r5 = 45;
        r6 = checkOffset(r1, r4, r5);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r6 == 0) goto L_0x0018;
    L_0x0016:
        r4 = r4 + 1;
    L_0x0018:
        r6 = r4 + 2;
        r4 = parseInt(r1, r4, r6);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r7 = checkOffset(r1, r6, r5);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r7 == 0) goto L_0x0026;
    L_0x0024:
        r6 = r6 + 1;
    L_0x0026:
        r7 = r6 + 2;
        r6 = parseInt(r1, r6, r7);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r8 = 84;
        r8 = checkOffset(r1, r7, r8);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r9 = 1;
        if (r8 != 0) goto L_0x0049;
    L_0x0035:
        r10 = r18.length();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r10 > r7) goto L_0x0049;
    L_0x003b:
        r5 = new java.util.GregorianCalendar;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4 = r4 - r9;
        r5.<init>(r3, r4, r6);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r2.setIndex(r7);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r3 = r5.getTime();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        return r3;
    L_0x0049:
        r10 = 43;
        r11 = 90;
        if (r8 == 0) goto L_0x00bc;
    L_0x004f:
        r7 = r7 + 1;
        r8 = r7 + 2;
        r7 = parseInt(r1, r7, r8);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r13 = 58;
        r14 = checkOffset(r1, r8, r13);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r14 == 0) goto L_0x0061;
    L_0x005f:
        r8 = r8 + 1;
    L_0x0061:
        r14 = r8 + 2;
        r8 = parseInt(r1, r8, r14);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r13 = checkOffset(r1, r14, r13);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r13 == 0) goto L_0x006f;
    L_0x006d:
        r14 = r14 + 1;
    L_0x006f:
        r13 = r18.length();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r13 <= r14) goto L_0x00ba;
    L_0x0075:
        r13 = r1.charAt(r14);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r13 == r11) goto L_0x00ba;
    L_0x007b:
        if (r13 == r10) goto L_0x00ba;
    L_0x007d:
        if (r13 == r5) goto L_0x00ba;
    L_0x007f:
        r13 = r14 + 2;
        r14 = parseInt(r1, r14, r13);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r15 = 59;
        if (r14 <= r15) goto L_0x008f;
    L_0x0089:
        r15 = 63;
        if (r14 >= r15) goto L_0x008f;
    L_0x008d:
        r14 = 59;
    L_0x008f:
        r15 = 46;
        r15 = checkOffset(r1, r13, r15);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r15 == 0) goto L_0x00b8;
    L_0x0097:
        r13 = r13 + 1;
        r15 = r13 + 1;
        r15 = indexOfNonDigit(r1, r15);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r12 = r13 + 3;
        r12 = java.lang.Math.min(r15, r12);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r16 = parseInt(r1, r13, r12);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r12 = r12 - r13;
        switch(r12) {
            case 1: goto L_0x00b3;
            case 2: goto L_0x00b0;
            default: goto L_0x00ad;
        };	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
    L_0x00ad:
        r12 = r16;
        goto L_0x00b6;
    L_0x00b0:
        r16 = r16 * 10;
        goto L_0x00ad;
    L_0x00b3:
        r16 = r16 * 100;
        goto L_0x00ad;
    L_0x00b6:
        r13 = r15;
        goto L_0x00c1;
    L_0x00b8:
        r12 = 0;
        goto L_0x00c1;
    L_0x00ba:
        r13 = r14;
        goto L_0x00bf;
    L_0x00bc:
        r13 = r7;
        r7 = 0;
        r8 = 0;
    L_0x00bf:
        r12 = 0;
        r14 = 0;
    L_0x00c1:
        r15 = r18.length();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r15 > r13) goto L_0x00cf;
    L_0x00c7:
        r3 = new java.lang.IllegalArgumentException;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4 = "No time zone indicator";
        r3.<init>(r4);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        throw r3;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
    L_0x00cf:
        r15 = r1.charAt(r13);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r5 = 5;
        if (r15 != r11) goto L_0x00db;
    L_0x00d6:
        r10 = TIMEZONE_UTC;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r13 = r13 + r9;
        goto L_0x0185;
    L_0x00db:
        if (r15 == r10) goto L_0x00fe;
    L_0x00dd:
        r10 = 45;
        if (r15 != r10) goto L_0x00e2;
    L_0x00e1:
        goto L_0x00fe;
    L_0x00e2:
        r3 = new java.lang.IndexOutOfBoundsException;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4 = new java.lang.StringBuilder;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4.<init>();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r5 = "Invalid time zone indicator '";
        r4.append(r5);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4.append(r15);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r5 = "'";
        r4.append(r5);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4 = r4.toString();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r3.<init>(r4);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        throw r3;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
    L_0x00fe:
        r10 = r1.substring(r13);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r11 = r10.length();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r11 < r5) goto L_0x0109;
    L_0x0108:
        goto L_0x011a;
    L_0x0109:
        r11 = new java.lang.StringBuilder;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r11.<init>();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r11.append(r10);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r10 = "00";
        r11.append(r10);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r10 = r11.toString();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
    L_0x011a:
        r11 = r10.length();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r13 = r13 + r11;
        r11 = "+0000";
        r11 = r11.equals(r10);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r11 != 0) goto L_0x0182;
    L_0x0127:
        r11 = "+00:00";
        r11 = r11.equals(r10);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r11 == 0) goto L_0x0130;
    L_0x012f:
        goto L_0x0182;
    L_0x0130:
        r11 = new java.lang.StringBuilder;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r11.<init>();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r15 = "GMT";
        r11.append(r15);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r11.append(r10);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r10 = r11.toString();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r11 = java.util.TimeZone.getTimeZone(r10);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r15 = r11.getID();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r16 = r15.equals(r10);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r16 != 0) goto L_0x0180;
    L_0x014f:
        r5 = ":";
        r9 = "";
        r5 = r15.replace(r5, r9);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r5 = r5.equals(r10);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        if (r5 != 0) goto L_0x0180;
    L_0x015d:
        r3 = new java.lang.IndexOutOfBoundsException;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4 = new java.lang.StringBuilder;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4.<init>();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r5 = "Mismatching time zone indicator: ";
        r4.append(r5);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4.append(r10);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r5 = " given, resolves to ";
        r4.append(r5);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r5 = r11.getID();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4.append(r5);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4 = r4.toString();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r3.<init>(r4);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        throw r3;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
    L_0x0180:
        r10 = r11;
        goto L_0x0185;
    L_0x0182:
        r5 = TIMEZONE_UTC;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r10 = r5;
    L_0x0185:
        r5 = new java.util.GregorianCalendar;	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r5.<init>(r10);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r9 = 0;
        r5.setLenient(r9);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r9 = 1;
        r5.set(r9, r3);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r4 = r4 - r9;
        r3 = 2;
        r5.set(r3, r4);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r3 = 5;
        r5.set(r3, r6);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r3 = 11;
        r5.set(r3, r7);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r3 = 12;
        r5.set(r3, r8);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r3 = 13;
        r5.set(r3, r14);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r3 = 14;
        r5.set(r3, r12);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r2.setIndex(r13);	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        r3 = r5.getTime();	 Catch:{ IndexOutOfBoundsException -> 0x01bd, NumberFormatException -> 0x01ba, IllegalArgumentException -> 0x01b7 }
        return r3;
    L_0x01b7:
        r0 = move-exception;
        r3 = r0;
        goto L_0x01bf;
    L_0x01ba:
        r0 = move-exception;
        r3 = r0;
        goto L_0x01bf;
    L_0x01bd:
        r0 = move-exception;
        r3 = r0;
    L_0x01bf:
        if (r1 != 0) goto L_0x01c3;
    L_0x01c1:
        r1 = 0;
        goto L_0x01d9;
    L_0x01c3:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = 34;
        r4.append(r5);
        r4.append(r1);
        r1 = "'";
        r4.append(r1);
        r1 = r4.toString();
    L_0x01d9:
        r4 = r3.getMessage();
        if (r4 == 0) goto L_0x01e5;
    L_0x01df:
        r5 = r4.isEmpty();
        if (r5 == 0) goto L_0x0203;
    L_0x01e5:
        r4 = new java.lang.StringBuilder;
        r4.<init>();
        r5 = "(";
        r4.append(r5);
        r5 = r3.getClass();
        r5 = r5.getName();
        r4.append(r5);
        r5 = ")";
        r4.append(r5);
        r4 = r4.toString();
    L_0x0203:
        r5 = new java.text.ParseException;
        r6 = new java.lang.StringBuilder;
        r6.<init>();
        r7 = "Failed to parse date [";
        r6.append(r7);
        r6.append(r1);
        r1 = "]: ";
        r6.append(r1);
        r6.append(r4);
        r1 = r6.toString();
        r2 = r19.getIndex();
        r5.<init>(r1, r2);
        r5.initCause(r3);
        throw r5;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.util.ISO8601Utils.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    private static int parseInt(String str, int i, int i2) throws NumberFormatException {
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        int i3;
        int digit;
        StringBuilder stringBuilder;
        if (i < i2) {
            i3 = i + 1;
            digit = Character.digit(str.charAt(i), 10);
            if (digit < 0) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("Invalid number: ");
                stringBuilder.append(str.substring(i, i2));
                throw new NumberFormatException(stringBuilder.toString());
            }
            digit = -digit;
        } else {
            i3 = i;
            digit = 0;
        }
        while (i3 < i2) {
            int i4 = i3 + 1;
            i3 = Character.digit(str.charAt(i3), 10);
            if (i3 < 0) {
                stringBuilder = new StringBuilder();
                stringBuilder.append("Invalid number: ");
                stringBuilder.append(str.substring(i, i2));
                throw new NumberFormatException(stringBuilder.toString());
            }
            digit = (digit * 10) - i3;
            i3 = i4;
        }
        return -digit;
    }

    private static void padInt(StringBuilder stringBuilder, int i, int i2) {
        String num = Integer.toString(i);
        for (i2 -= num.length(); i2 > 0; i2--) {
            stringBuilder.append('0');
        }
        stringBuilder.append(num);
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }
}
