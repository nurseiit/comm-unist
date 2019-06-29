package com.lotecs.util;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.PrintStream;
import java.text.NumberFormat;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtil {
    public static String rCatch(Object obj, int i) {
        String obj2 = obj.toString();
        int length = obj2.length();
        return obj2.substring(length - i, length);
    }

    public static void getExceptionStr(Exception exception, Map<String, Object> map) {
        map.put("exception", getExceptionStr(exception));
    }

    public static String getExceptionStr(Exception exception) {
        StringBuffer stringBuffer = new StringBuffer();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(exception.toString());
        stringBuilder.append("\n");
        stringBuffer.append(stringBuilder.toString());
        for (StackTraceElement stackTraceElement : exception.getStackTrace()) {
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(stackTraceElement.toString());
            stringBuilder2.append("\n");
            stringBuffer.append(stringBuilder2.toString());
        }
        return stringBuffer.toString();
    }

    public static int findStr(String str, String str2) {
        Matcher matcher = Pattern.compile(str2).matcher(str);
        int i = 0;
        while (matcher.find()) {
            i++;
        }
        return i;
    }

    public static String toStringNumber(Object obj) {
        if (toInt(obj) >= 10) {
            return obj.toString();
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("0");
        stringBuilder.append(obj.toString());
        return stringBuilder.toString();
    }

    public static boolean isNull(Object obj) {
        if (obj == null) {
            return true;
        }
        if (!(obj instanceof String) || obj.toString().trim().length() >= 1) {
            return false;
        }
        return true;
    }

    public static String toStr(Object obj) {
        return !isNull(obj) ? obj.toString() : "";
    }

    public static String toStr(Object obj, String str) {
        return isNull(obj) ? str : obj.toString();
    }

    public static String[] toStrArr(Object obj) {
        return toStrArr(obj, ",");
    }

    public static String[] toStrArr(Object obj, String str) {
        return !isNull(obj) ? obj.toString().split(str) : null;
    }

    public static int toInt(Object obj) {
        try {
            if (isNull(obj)) {
                return 0;
            }
            return Integer.parseInt(obj.toString());
        } catch (Exception | NumberFormatException unused) {
            return 0;
        }
    }

    public static int toInt(Object obj, int i) {
        try {
            if (!isNull(obj)) {
                i = Integer.parseInt(obj.toString());
            }
            return i;
        } catch (Exception | NumberFormatException unused) {
            return 0;
        }
    }

    public static float toFloat(Object obj) {
        try {
            if (isNull(obj)) {
                return 0.0f;
            }
            return Float.parseFloat(obj.toString());
        } catch (Exception | NumberFormatException unused) {
            return 0.0f;
        }
    }

    public static double toDouble(Object obj) {
        try {
            if (isNull(obj)) {
                return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            }
            return Double.parseDouble(obj.toString());
        } catch (Exception | NumberFormatException unused) {
            return FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        }
    }

    public static boolean isInt(String str) {
        try {
            Integer.parseInt(str);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        } catch (Exception unused2) {
            return false;
        }
    }

    public static boolean isFloat(String str) {
        try {
            Float.parseFloat(str);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        } catch (Exception unused2) {
            return false;
        }
    }

    public static boolean isDouble(String str) {
        try {
            Double.parseDouble(str);
            return true;
        } catch (NumberFormatException unused) {
            return false;
        } catch (Exception unused2) {
            return false;
        }
    }

    public static boolean toBoolean(Object obj) {
        return !isNull(obj) ? Boolean.parseBoolean(obj.toString()) : false;
    }

    public static long toLong(Object obj) {
        try {
            return Long.parseLong(obj.toString());
        } catch (Exception unused) {
            return 0;
        }
    }

    public static long toLong(Object obj, long j) {
        try {
            if (!isNull(obj)) {
                j = Long.parseLong(obj.toString());
            }
            return j;
        } catch (Exception | NumberFormatException unused) {
            return 0;
        }
    }

    public static String toDateFormat(Object obj, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        if (!isNull(obj)) {
            String obj2 = obj.toString();
            if (obj2.length() < 9) {
                StringBuilder stringBuilder2;
                if (obj2.length() > 1) {
                    stringBuilder.append(obj2.substring(0, 4));
                }
                if (obj2.length() > 5) {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str);
                    stringBuilder2.append(obj2.substring(4, 6));
                    stringBuilder.append(stringBuilder2.toString());
                }
                if (obj2.length() > 7) {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str);
                    stringBuilder2.append(obj2.substring(6, 8));
                    stringBuilder.append(stringBuilder2.toString());
                }
            }
        }
        return stringBuilder.toString();
    }

    public static String toTimeFormat(Object obj, String str) throws Exception {
        StringBuffer stringBuffer = new StringBuffer();
        if (!isNull(obj)) {
            StringBuilder stringBuilder;
            String obj2 = obj.toString();
            if (obj2.length() < 7) {
                if (obj2.length() > 1) {
                    stringBuffer.append(obj2.substring(0, 2));
                }
                if (obj2.length() > 3) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(obj2.substring(2, 4));
                    stringBuffer.append(stringBuilder.toString());
                }
                if (obj2.length() > 5) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(obj2.substring(4, 6));
                    stringBuffer.append(stringBuilder.toString());
                }
            }
            if (obj2.length() > 9) {
                if (obj2.length() > 9) {
                    stringBuffer.append(obj2.substring(8, 10));
                }
                if (obj2.length() > 11) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(obj2.substring(10, 12));
                    stringBuffer.append(stringBuilder.toString());
                }
                if (obj2.length() > 13) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(str);
                    stringBuilder.append(obj2.substring(12, 14));
                    stringBuffer.append(stringBuilder.toString());
                }
            }
        }
        return stringBuffer.toString();
    }

    public static String toDateTimeFormat(Object obj, String str, String str2) throws Exception {
        StringBuilder stringBuilder = new StringBuilder();
        if (!isNull(obj)) {
            String obj2 = obj.toString();
            if (obj2.length() < 7) {
                StringBuilder stringBuilder2;
                if (obj2.length() > 1) {
                    stringBuilder.append(obj2.substring(0, 4));
                }
                if (obj2.length() > 3) {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str);
                    stringBuilder2.append(obj2.substring(4, 6));
                    stringBuilder.append(stringBuilder2.toString());
                }
                if (obj2.length() > 5) {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str);
                    stringBuilder2.append(obj2.substring(6, 8));
                    stringBuilder.append(stringBuilder2.toString());
                }
            }
            if (obj2.length() > 9) {
                StringBuilder stringBuilder3;
                if (obj2.length() > 9) {
                    stringBuilder.append(obj2.substring(8, 10));
                }
                if (obj2.length() > 11) {
                    stringBuilder3 = new StringBuilder();
                    stringBuilder3.append(str2);
                    stringBuilder3.append(obj2.substring(10, 12));
                    stringBuilder.append(stringBuilder3.toString());
                }
                if (obj2.length() > 13) {
                    stringBuilder3 = new StringBuilder();
                    stringBuilder3.append(str2);
                    stringBuilder3.append(obj2.substring(12, 14));
                    stringBuilder.append(stringBuilder3.toString());
                }
            }
        }
        return stringBuilder.toString();
    }

    public static String toMoneyFormat(Object obj) throws Exception {
        return !isNull(obj) ? NumberFormat.getInstance().format((double) toFloat(obj)) : "";
    }

    public static String toPhoneFormat(Object obj, String str) {
        String str2 = "";
        if (isNull(obj)) {
            return str2;
        }
        String obj2 = obj.toString();
        int length = obj2.length();
        int i = 3;
        if (obj2.startsWith("02")) {
            i = 2;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(obj2.substring(0, i));
        stringBuilder.append(str);
        int i2 = length - 4;
        stringBuilder.append(obj2.subSequence(i, i2));
        stringBuilder.append(str);
        stringBuilder.append(obj2.subSequence(i2, length));
        return stringBuilder.toString();
    }

    public static String toPhoneFormat(Object obj) {
        return toPhoneFormat(obj, "-");
    }

    public static String zeroToSpace(Object obj) throws Exception {
        String str = "";
        if (!isNull(obj)) {
            String obj2 = obj.toString();
            if (!"0".equals(obj2)) {
                return obj2;
            }
        }
        return str;
    }

    public static String unEscape(String str) {
        String str2 = "";
        char[] toCharArray = str.toCharArray();
        int i = 0;
        while (i < toCharArray.length) {
            if (toCharArray[i] == '%') {
                String substring;
                String stringBuilder;
                int i2 = i + 1;
                if (toCharArray[i2] == 'u') {
                    substring = str.substring(i + 2, i + 6);
                    i += 5;
                } else {
                    substring = str.substring(i2, i + 3);
                    i += 2;
                }
                StringBuilder stringBuilder2;
                try {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str2);
                    stringBuilder2.append(new String(Character.toChars(Integer.parseInt(substring, 16))));
                    stringBuilder = stringBuilder2.toString();
                } catch (NumberFormatException unused) {
                    stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(str2);
                    stringBuilder2.append("%");
                    stringBuilder = stringBuilder2.toString();
                    int length = substring.length();
                    i2 = 2;
                    if (length > 2) {
                        i2 = 5;
                    }
                    i -= i2;
                }
                str2 = stringBuilder;
            } else {
                StringBuilder stringBuilder3 = new StringBuilder();
                stringBuilder3.append(str2);
                stringBuilder3.append(toCharArray[i]);
                str2 = stringBuilder3.toString();
            }
            i++;
        }
        return str2;
    }

    public static void checkKorEnc(String str) {
        String[] strArr = new String[]{"euc-kr", "utf-8", "iso-8859-1", "ksc5601", "x-windows-949"};
        int i = 0;
        while (i < strArr.length) {
            try {
                for (int i2 = 0; i2 < strArr.length; i2++) {
                    if (i != i2) {
                        PrintStream printStream = System.out;
                        StringBuilder stringBuilder = new StringBuilder();
                        stringBuilder.append(strArr[i]);
                        stringBuilder.append("=>");
                        stringBuilder.append(strArr[i2]);
                        stringBuilder.append(" \r\n ==> ");
                        stringBuilder.append(new String(str.getBytes(strArr[i]), strArr[i2]));
                        printStream.println(stringBuilder.toString());
                    }
                }
                i++;
            } catch (Exception e) {
                System.out.println(e);
                return;
            }
        }
    }
}
