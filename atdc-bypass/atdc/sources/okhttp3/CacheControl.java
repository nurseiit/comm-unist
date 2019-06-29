package okhttp3;

import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

public final class CacheControl {
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
    @Nullable
    String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;

    public static final class Builder {
        boolean immutable;
        int maxAgeSeconds = -1;
        int maxStaleSeconds = -1;
        int minFreshSeconds = -1;
        boolean noCache;
        boolean noStore;
        boolean noTransform;
        boolean onlyIfCached;

        public Builder noCache() {
            this.noCache = true;
            return this;
        }

        public Builder noStore() {
            this.noStore = true;
            return this;
        }

        public Builder maxAge(int i, TimeUnit timeUnit) {
            if (i < 0) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("maxAge < 0: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
            long toSeconds = timeUnit.toSeconds((long) i);
            this.maxAgeSeconds = toSeconds > 2147483647L ? Integer.MAX_VALUE : (int) toSeconds;
            return this;
        }

        public Builder maxStale(int i, TimeUnit timeUnit) {
            if (i < 0) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("maxStale < 0: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
            long toSeconds = timeUnit.toSeconds((long) i);
            this.maxStaleSeconds = toSeconds > 2147483647L ? Integer.MAX_VALUE : (int) toSeconds;
            return this;
        }

        public Builder minFresh(int i, TimeUnit timeUnit) {
            if (i < 0) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("minFresh < 0: ");
                stringBuilder.append(i);
                throw new IllegalArgumentException(stringBuilder.toString());
            }
            long toSeconds = timeUnit.toSeconds((long) i);
            this.minFreshSeconds = toSeconds > 2147483647L ? Integer.MAX_VALUE : (int) toSeconds;
            return this;
        }

        public Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }

        public Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        public Builder immutable() {
            this.immutable = true;
            return this;
        }

        public CacheControl build() {
            return new CacheControl(this);
        }
    }

    private CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.noCache = z;
        this.noStore = z2;
        this.maxAgeSeconds = i;
        this.sMaxAgeSeconds = i2;
        this.isPrivate = z3;
        this.isPublic = z4;
        this.mustRevalidate = z5;
        this.maxStaleSeconds = i3;
        this.minFreshSeconds = i4;
        this.onlyIfCached = z6;
        this.noTransform = z7;
        this.immutable = z8;
        this.headerValue = str;
    }

    CacheControl(Builder builder) {
        this.noCache = builder.noCache;
        this.noStore = builder.noStore;
        this.maxAgeSeconds = builder.maxAgeSeconds;
        this.sMaxAgeSeconds = -1;
        this.isPrivate = false;
        this.isPublic = false;
        this.mustRevalidate = false;
        this.maxStaleSeconds = builder.maxStaleSeconds;
        this.minFreshSeconds = builder.minFreshSeconds;
        this.onlyIfCached = builder.onlyIfCached;
        this.noTransform = builder.noTransform;
        this.immutable = builder.immutable;
    }

    public boolean noCache() {
        return this.noCache;
    }

    public boolean noStore() {
        return this.noStore;
    }

    public int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public boolean isPrivate() {
        return this.isPrivate;
    }

    public boolean isPublic() {
        return this.isPublic;
    }

    public boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public boolean noTransform() {
        return this.noTransform;
    }

    public boolean immutable() {
        return this.immutable;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0043  */
    public static okhttp3.CacheControl parse(okhttp3.Headers r24) {
        /*
        r0 = r24;
        r1 = r24.size();
        r6 = 0;
        r7 = 1;
        r8 = 0;
        r10 = 0;
        r11 = 0;
        r12 = -1;
        r13 = -1;
        r14 = 0;
        r15 = 0;
        r16 = 0;
        r17 = -1;
        r18 = -1;
        r19 = 0;
        r20 = 0;
        r21 = 0;
    L_0x001b:
        if (r6 >= r1) goto L_0x014c;
    L_0x001d:
        r9 = r0.name(r6);
        r2 = r0.value(r6);
        r4 = "Cache-Control";
        r4 = r9.equalsIgnoreCase(r4);
        if (r4 == 0) goto L_0x0033;
    L_0x002d:
        if (r8 == 0) goto L_0x0031;
    L_0x002f:
        r7 = 0;
        goto L_0x003c;
    L_0x0031:
        r8 = r2;
        goto L_0x003c;
    L_0x0033:
        r4 = "Pragma";
        r4 = r9.equalsIgnoreCase(r4);
        if (r4 == 0) goto L_0x0145;
    L_0x003b:
        goto L_0x002f;
    L_0x003c:
        r4 = 0;
    L_0x003d:
        r9 = r2.length();
        if (r4 >= r9) goto L_0x0145;
    L_0x0043:
        r9 = "=,;";
        r9 = okhttp3.internal.http.HttpHeaders.skipUntil(r2, r4, r9);
        r4 = r2.substring(r4, r9);
        r4 = r4.trim();
        r3 = r2.length();
        if (r9 == r3) goto L_0x009e;
    L_0x0057:
        r3 = r2.charAt(r9);
        r5 = 44;
        if (r3 == r5) goto L_0x009e;
    L_0x005f:
        r3 = r2.charAt(r9);
        r5 = 59;
        if (r3 != r5) goto L_0x0068;
    L_0x0067:
        goto L_0x009e;
    L_0x0068:
        r9 = r9 + 1;
        r3 = okhttp3.internal.http.HttpHeaders.skipWhitespace(r2, r9);
        r5 = r2.length();
        if (r3 >= r5) goto L_0x008d;
    L_0x0074:
        r5 = r2.charAt(r3);
        r9 = 34;
        if (r5 != r9) goto L_0x008d;
    L_0x007c:
        r3 = r3 + 1;
        r5 = "\"";
        r5 = okhttp3.internal.http.HttpHeaders.skipUntil(r2, r3, r5);
        r3 = r2.substring(r3, r5);
        r22 = 1;
        r5 = r5 + 1;
        goto L_0x00a4;
    L_0x008d:
        r22 = 1;
        r5 = ",;";
        r5 = okhttp3.internal.http.HttpHeaders.skipUntil(r2, r3, r5);
        r3 = r2.substring(r3, r5);
        r3 = r3.trim();
        goto L_0x00a4;
    L_0x009e:
        r22 = 1;
        r9 = r9 + 1;
        r5 = r9;
        r3 = 0;
    L_0x00a4:
        r9 = "no-cache";
        r9 = r9.equalsIgnoreCase(r4);
        if (r9 == 0) goto L_0x00b0;
    L_0x00ac:
        r9 = -1;
        r10 = 1;
        goto L_0x0142;
    L_0x00b0:
        r9 = "no-store";
        r9 = r9.equalsIgnoreCase(r4);
        if (r9 == 0) goto L_0x00bc;
    L_0x00b8:
        r9 = -1;
        r11 = 1;
        goto L_0x0142;
    L_0x00bc:
        r9 = "max-age";
        r9 = r9.equalsIgnoreCase(r4);
        if (r9 == 0) goto L_0x00cc;
    L_0x00c4:
        r9 = -1;
        r3 = okhttp3.internal.http.HttpHeaders.parseSeconds(r3, r9);
        r12 = r3;
        goto L_0x0142;
    L_0x00cc:
        r9 = "s-maxage";
        r9 = r9.equalsIgnoreCase(r4);
        if (r9 == 0) goto L_0x00dc;
    L_0x00d4:
        r9 = -1;
        r3 = okhttp3.internal.http.HttpHeaders.parseSeconds(r3, r9);
        r13 = r3;
        goto L_0x0142;
    L_0x00dc:
        r9 = "private";
        r9 = r9.equalsIgnoreCase(r4);
        if (r9 == 0) goto L_0x00e7;
    L_0x00e4:
        r9 = -1;
        r14 = 1;
        goto L_0x0142;
    L_0x00e7:
        r9 = "public";
        r9 = r9.equalsIgnoreCase(r4);
        if (r9 == 0) goto L_0x00f2;
    L_0x00ef:
        r9 = -1;
        r15 = 1;
        goto L_0x0142;
    L_0x00f2:
        r9 = "must-revalidate";
        r9 = r9.equalsIgnoreCase(r4);
        if (r9 == 0) goto L_0x00fe;
    L_0x00fa:
        r9 = -1;
        r16 = 1;
        goto L_0x0142;
    L_0x00fe:
        r9 = "max-stale";
        r9 = r9.equalsIgnoreCase(r4);
        if (r9 == 0) goto L_0x0111;
    L_0x0106:
        r4 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r3 = okhttp3.internal.http.HttpHeaders.parseSeconds(r3, r4);
        r17 = r3;
        r9 = -1;
        goto L_0x0142;
    L_0x0111:
        r9 = "min-fresh";
        r9 = r9.equalsIgnoreCase(r4);
        if (r9 == 0) goto L_0x0121;
    L_0x0119:
        r9 = -1;
        r3 = okhttp3.internal.http.HttpHeaders.parseSeconds(r3, r9);
        r18 = r3;
        goto L_0x0142;
    L_0x0121:
        r9 = -1;
        r3 = "only-if-cached";
        r3 = r3.equalsIgnoreCase(r4);
        if (r3 == 0) goto L_0x012d;
    L_0x012a:
        r19 = 1;
        goto L_0x0142;
    L_0x012d:
        r3 = "no-transform";
        r3 = r3.equalsIgnoreCase(r4);
        if (r3 == 0) goto L_0x0138;
    L_0x0135:
        r20 = 1;
        goto L_0x0142;
    L_0x0138:
        r3 = "immutable";
        r3 = r3.equalsIgnoreCase(r4);
        if (r3 == 0) goto L_0x0142;
    L_0x0140:
        r21 = 1;
    L_0x0142:
        r4 = r5;
        goto L_0x003d;
    L_0x0145:
        r9 = -1;
        r22 = 1;
        r6 = r6 + 1;
        goto L_0x001b;
    L_0x014c:
        if (r7 != 0) goto L_0x0151;
    L_0x014e:
        r22 = 0;
        goto L_0x0153;
    L_0x0151:
        r22 = r8;
    L_0x0153:
        r0 = new okhttp3.CacheControl;
        r9 = r0;
        r9.<init>(r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.CacheControl.parse(okhttp3.Headers):okhttp3.CacheControl");
    }

    public String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        str = headerValue();
        this.headerValue = str;
        return str;
    }

    private String headerValue() {
        StringBuilder stringBuilder = new StringBuilder();
        if (this.noCache) {
            stringBuilder.append("no-cache, ");
        }
        if (this.noStore) {
            stringBuilder.append("no-store, ");
        }
        if (this.maxAgeSeconds != -1) {
            stringBuilder.append("max-age=");
            stringBuilder.append(this.maxAgeSeconds);
            stringBuilder.append(", ");
        }
        if (this.sMaxAgeSeconds != -1) {
            stringBuilder.append("s-maxage=");
            stringBuilder.append(this.sMaxAgeSeconds);
            stringBuilder.append(", ");
        }
        if (this.isPrivate) {
            stringBuilder.append("private, ");
        }
        if (this.isPublic) {
            stringBuilder.append("public, ");
        }
        if (this.mustRevalidate) {
            stringBuilder.append("must-revalidate, ");
        }
        if (this.maxStaleSeconds != -1) {
            stringBuilder.append("max-stale=");
            stringBuilder.append(this.maxStaleSeconds);
            stringBuilder.append(", ");
        }
        if (this.minFreshSeconds != -1) {
            stringBuilder.append("min-fresh=");
            stringBuilder.append(this.minFreshSeconds);
            stringBuilder.append(", ");
        }
        if (this.onlyIfCached) {
            stringBuilder.append("only-if-cached, ");
        }
        if (this.noTransform) {
            stringBuilder.append("no-transform, ");
        }
        if (this.immutable) {
            stringBuilder.append("immutable, ");
        }
        if (stringBuilder.length() == 0) {
            return "";
        }
        stringBuilder.delete(stringBuilder.length() - 2, stringBuilder.length());
        return stringBuilder.toString();
    }
}
