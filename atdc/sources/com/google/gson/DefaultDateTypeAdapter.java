package com.google.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

final class DefaultDateTypeAdapter extends TypeAdapter<Date> {
    private static final String SIMPLE_NAME = "DefaultDateTypeAdapter";
    private final Class<? extends Date> dateType;
    private final DateFormat enUsFormat;
    private final DateFormat localFormat;

    DefaultDateTypeAdapter(Class<? extends Date> cls) {
        this((Class) cls, DateFormat.getDateTimeInstance(2, 2, Locale.US), DateFormat.getDateTimeInstance(2, 2));
    }

    DefaultDateTypeAdapter(Class<? extends Date> cls, String str) {
        this((Class) cls, new SimpleDateFormat(str, Locale.US), new SimpleDateFormat(str));
    }

    DefaultDateTypeAdapter(Class<? extends Date> cls, int i) {
        this((Class) cls, DateFormat.getDateInstance(i, Locale.US), DateFormat.getDateInstance(i));
    }

    public DefaultDateTypeAdapter(int i, int i2) {
        this(Date.class, DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    public DefaultDateTypeAdapter(Class<? extends Date> cls, int i, int i2) {
        this((Class) cls, DateFormat.getDateTimeInstance(i, i2, Locale.US), DateFormat.getDateTimeInstance(i, i2));
    }

    DefaultDateTypeAdapter(Class<? extends Date> cls, DateFormat dateFormat, DateFormat dateFormat2) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            this.dateType = cls;
            this.enUsFormat = dateFormat;
            this.localFormat = dateFormat2;
            return;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Date type must be one of ");
        stringBuilder.append(Date.class);
        stringBuilder.append(", ");
        stringBuilder.append(Timestamp.class);
        stringBuilder.append(", or ");
        stringBuilder.append(java.sql.Date.class);
        stringBuilder.append(" but was ");
        stringBuilder.append(cls);
        throw new IllegalArgumentException(stringBuilder.toString());
    }

    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        if (date == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this.localFormat) {
            jsonWriter.value(this.enUsFormat.format(date));
        }
    }

    public Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        Date deserializeToDate = deserializeToDate(jsonReader.nextString());
        if (this.dateType == Date.class) {
            return deserializeToDate;
        }
        if (this.dateType == Timestamp.class) {
            return new Timestamp(deserializeToDate.getTime());
        }
        if (this.dateType == java.sql.Date.class) {
            return new java.sql.Date(deserializeToDate.getTime());
        }
        throw new AssertionError();
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:13:0x0015 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x000d */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:8|9|10|11|12) */
    /* JADX WARNING: Can't wrap try/catch for region: R(5:13|14|15|16|17) */
    /* JADX WARNING: Missing block: B:9:?, code skipped:
            r1 = r3.enUsFormat.parse(r4);
     */
    /* JADX WARNING: Missing block: B:12:0x0014, code skipped:
            return r1;
     */
    /* JADX WARNING: Missing block: B:14:?, code skipped:
            r1 = com.google.gson.internal.bind.util.ISO8601Utils.parse(r4, new java.text.ParsePosition(0));
     */
    /* JADX WARNING: Missing block: B:17:0x0020, code skipped:
            return r1;
     */
    /* JADX WARNING: Missing block: B:18:0x0021, code skipped:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:20:0x0027, code skipped:
            throw new com.google.gson.JsonSyntaxException(r4, r1);
     */
    private java.util.Date deserializeToDate(java.lang.String r4) {
        /*
        r3 = this;
        r0 = r3.localFormat;
        monitor-enter(r0);
        r1 = r3.localFormat;	 Catch:{ ParseException -> 0x000d }
        r1 = r1.parse(r4);	 Catch:{ ParseException -> 0x000d }
        monitor-exit(r0);	 Catch:{ all -> 0x000b }
        return r1;
    L_0x000b:
        r4 = move-exception;
        goto L_0x0028;
    L_0x000d:
        r1 = r3.enUsFormat;	 Catch:{ ParseException -> 0x0015 }
        r1 = r1.parse(r4);	 Catch:{ ParseException -> 0x0015 }
        monitor-exit(r0);	 Catch:{ all -> 0x000b }
        return r1;
    L_0x0015:
        r1 = new java.text.ParsePosition;	 Catch:{ ParseException -> 0x0021 }
        r2 = 0;
        r1.<init>(r2);	 Catch:{ ParseException -> 0x0021 }
        r1 = com.google.gson.internal.bind.util.ISO8601Utils.parse(r4, r1);	 Catch:{ ParseException -> 0x0021 }
        monitor-exit(r0);	 Catch:{ all -> 0x000b }
        return r1;
    L_0x0021:
        r1 = move-exception;
        r2 = new com.google.gson.JsonSyntaxException;	 Catch:{ all -> 0x000b }
        r2.<init>(r4, r1);	 Catch:{ all -> 0x000b }
        throw r2;	 Catch:{ all -> 0x000b }
    L_0x0028:
        monitor-exit(r0);	 Catch:{ all -> 0x000b }
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.DefaultDateTypeAdapter.deserializeToDate(java.lang.String):java.util.Date");
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(SIMPLE_NAME);
        stringBuilder.append('(');
        stringBuilder.append(this.localFormat.getClass().getSimpleName());
        stringBuilder.append(')');
        return stringBuilder.toString();
    }
}
