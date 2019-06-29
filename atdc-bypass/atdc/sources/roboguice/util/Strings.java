package roboguice.util;

import com.bumptech.glide.load.Key;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.security.InvalidParameterException;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

public final class Strings {
    private static final int DEFAULT_BUFFER_SIZE = 4096;

    private Strings() {
    }

    public static <T> String joinAnd(String str, String str2, Collection<T> collection) {
        if (collection == null || collection.isEmpty()) {
            return "";
        }
        Iterator it = collection.iterator();
        StringBuilder stringBuilder = new StringBuilder(toString(it.next()));
        int i = 1;
        while (it.hasNext()) {
            Object next = it.next();
            if (notEmpty(next)) {
                i++;
                stringBuilder.append(i == collection.size() ? str2 : str);
                stringBuilder.append(toString(next));
            }
        }
        return stringBuilder.toString();
    }

    public static <T> String joinAnd(String str, String str2, T... tArr) {
        return joinAnd(str, str2, Arrays.asList(tArr));
    }

    public static <T> String join(String str, Collection<T> collection) {
        if (collection == null || collection.isEmpty()) {
            return "";
        }
        Iterator it = collection.iterator();
        StringBuilder stringBuilder = new StringBuilder(toString(it.next()));
        while (it.hasNext()) {
            Object next = it.next();
            if (notEmpty(next)) {
                stringBuilder.append(str);
                stringBuilder.append(toString(next));
            }
        }
        return stringBuilder.toString();
    }

    public static <T> String join(String str, T... tArr) {
        return join(str, Arrays.asList(tArr));
    }

    public static String toString(InputStream inputStream) {
        StringWriter stringWriter = new StringWriter();
        copy(new InputStreamReader(inputStream, Charset.forName("utf-8")), stringWriter);
        return stringWriter.toString();
    }

    public static String toString(Reader reader) {
        StringWriter stringWriter = new StringWriter();
        copy(reader, stringWriter);
        return stringWriter.toString();
    }

    public static int copy(Reader reader, Writer writer) {
        long copyLarge = copyLarge(reader, writer);
        return copyLarge > 2147483647L ? -1 : (int) copyLarge;
    }

    public static long copyLarge(Reader reader, Writer writer) throws RuntimeException {
        try {
            char[] cArr = new char[4096];
            long j = 0;
            while (true) {
                int read = reader.read(cArr);
                if (-1 == read) {
                    return j;
                }
                writer.write(cArr, 0, read);
                j += (long) read;
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static String toString(Object obj) {
        return toString(obj, "");
    }

    public static String toString(Object obj, String str) {
        if (obj == null) {
            return str;
        }
        if (obj instanceof InputStream) {
            return toString((InputStream) obj);
        }
        if (obj instanceof Reader) {
            return toString((Reader) obj);
        }
        if (obj instanceof Object[]) {
            return join(", ", (Object[]) obj);
        }
        return obj instanceof Collection ? join(", ", (Collection) obj) : obj.toString();
    }

    public static boolean isEmpty(Object obj) {
        return toString(obj).trim().length() == 0;
    }

    public static boolean notEmpty(Object obj) {
        return toString(obj).trim().length() != 0;
    }

    public static String md5(String str) {
        try {
            byte[] digest = MessageDigest.getInstance("MD5").digest(str.getBytes(Key.STRING_CHARSET_NAME));
            StringBuilder stringBuilder = new StringBuilder();
            for (byte toHexString : digest) {
                String toHexString2 = Integer.toHexString(toHexString);
                if (toHexString2.length() == 1) {
                    stringBuilder.append('0');
                    stringBuilder.append(toHexString2.charAt(toHexString2.length() - 1));
                } else {
                    stringBuilder.append(toHexString2.substring(toHexString2.length() - 2));
                }
            }
            return stringBuilder.toString();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static String capitalize(String str) {
        str = toString((Object) str);
        if (str.length() < 2) {
            return str.length() >= 1 ? str.toUpperCase() : str;
        } else {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(str.substring(0, 1).toUpperCase());
            stringBuilder.append(str.substring(1));
            return stringBuilder.toString();
        }
    }

    public static boolean equals(Object obj, Object obj2) {
        return toString(obj).equals(toString(obj2));
    }

    public static boolean equalsIgnoreCase(Object obj, Object obj2) {
        return toString(obj).toLowerCase().equals(toString(obj2).toLowerCase());
    }

    public static String[] chunk(String str, int i) {
        int i2 = 0;
        if (isEmpty(str) || i == 0) {
            return new String[0];
        }
        int length = str.length();
        int i3 = ((length - 1) / i) + 1;
        String[] strArr = new String[i3];
        while (i2 < i3) {
            int i4 = i2 * i;
            int i5 = i4 + i;
            if (i5 >= length) {
                i5 = length;
            }
            strArr[i2] = str.substring(i4, i5);
            i2++;
        }
        return strArr;
    }

    public static String namedFormat(String str, Map<String, String> map) {
        for (Entry entry : map.entrySet()) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append('$');
            stringBuilder.append((String) entry.getKey());
            str = str.replace(stringBuilder.toString(), (CharSequence) entry.getValue());
        }
        return str;
    }

    public static String namedFormat(String str, Object... objArr) {
        if (objArr.length % 2 != 0) {
            throw new InvalidParameterException("You must include one value for each parameter");
        }
        Map hashMap = new HashMap(objArr.length / 2);
        for (int i = 0; i < objArr.length; i += 2) {
            hashMap.put(toString(objArr[i]), toString(objArr[i + 1]));
        }
        return namedFormat(str, hashMap);
    }
}
