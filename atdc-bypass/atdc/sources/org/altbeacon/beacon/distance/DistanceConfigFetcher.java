package org.altbeacon.beacon.distance;

public class DistanceConfigFetcher {
    private static final String TAG = "DistanceConfigFetcher";
    protected Exception mException;
    protected String mResponse;
    private int mResponseCode = -1;
    private String mUrlString;
    private String mUserAgentString;

    public DistanceConfigFetcher(String str, String str2) {
        this.mUrlString = str;
        this.mUserAgentString = str2;
    }

    public int getResponseCode() {
        return this.mResponseCode;
    }

    public String getResponseString() {
        return this.mResponse;
    }

    public Exception getException() {
        return this.mException;
    }

    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f0 A:{SYNTHETIC, Splitter:B:45:0x00f0} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f0 A:{SYNTHETIC, Splitter:B:45:0x00f0} */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f0 A:{SYNTHETIC, Splitter:B:45:0x00f0} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f0 A:{SYNTHETIC, Splitter:B:45:0x00f0} */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f0 A:{SYNTHETIC, Splitter:B:45:0x00f0} */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00da  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00f0 A:{SYNTHETIC, Splitter:B:45:0x00f0} */
    /* JADX WARNING: Removed duplicated region for block: B:60:? A:{SYNTHETIC, RETURN} */
    public void request() {
        /*
        r10 = this;
        r0 = 0;
        r10.mResponse = r0;
        r1 = r10.mUrlString;
        r2 = new java.lang.StringBuilder;
        r2.<init>();
        r3 = 0;
        r4 = r0;
    L_0x000c:
        if (r3 == 0) goto L_0x003e;
    L_0x000e:
        r1 = org.altbeacon.beacon.BeaconManager.debug;
        if (r1 == 0) goto L_0x0038;
    L_0x0012:
        r1 = "DistanceConfigFetcher";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Following redirect from ";
        r5.append(r6);
        r6 = r10.mUrlString;
        r5.append(r6);
        r6 = " to ";
        r5.append(r6);
        r6 = "Location";
        r6 = r0.getHeaderField(r6);
        r5.append(r6);
        r5 = r5.toString();
        android.util.Log.d(r1, r5);
    L_0x0038:
        r1 = "Location";
        r1 = r0.getHeaderField(r1);
    L_0x003e:
        r3 = r3 + 1;
        r5 = -1;
        r10.mResponseCode = r5;
        r5 = new java.net.URL;	 Catch:{ Exception -> 0x004a }
        r5.<init>(r1);	 Catch:{ Exception -> 0x004a }
        r4 = r5;
        goto L_0x0065;
    L_0x004a:
        r5 = move-exception;
        r6 = "DistanceConfigFetcher";
        r7 = new java.lang.StringBuilder;
        r7.<init>();
        r8 = "Can't construct URL from: ";
        r7.append(r8);
        r8 = r10.mUrlString;
        r7.append(r8);
        r7 = r7.toString();
        android.util.Log.e(r6, r7);
        r10.mException = r5;
    L_0x0065:
        if (r4 != 0) goto L_0x0074;
    L_0x0067:
        r5 = org.altbeacon.beacon.BeaconManager.debug;
        if (r5 == 0) goto L_0x00d6;
    L_0x006b:
        r5 = "DistanceConfigFetcher";
        r6 = "URL is null.  Cannot make request";
        android.util.Log.d(r5, r6);
        goto L_0x00d6;
    L_0x0074:
        r5 = r4.openConnection();	 Catch:{ SecurityException -> 0x00c8, FileNotFoundException -> 0x00ba, IOException -> 0x00ac }
        r5 = (java.net.HttpURLConnection) r5;	 Catch:{ SecurityException -> 0x00c8, FileNotFoundException -> 0x00ba, IOException -> 0x00ac }
        r0 = "User-Agent";
        r6 = r10.mUserAgentString;	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        r5.addRequestProperty(r0, r6);	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        r0 = r5.getResponseCode();	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        r10.mResponseCode = r0;	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        r0 = org.altbeacon.beacon.BeaconManager.debug;	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        if (r0 == 0) goto L_0x00d5;
    L_0x008b:
        r0 = "DistanceConfigFetcher";
        r6 = new java.lang.StringBuilder;	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        r6.<init>();	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        r7 = "response code is ";
        r6.append(r7);	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        r7 = r5.getResponseCode();	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        r6.append(r7);	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        r6 = r6.toString();	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        android.util.Log.d(r0, r6);	 Catch:{ SecurityException -> 0x00aa, FileNotFoundException -> 0x00a8, IOException -> 0x00a6 }
        goto L_0x00d5;
    L_0x00a6:
        r0 = move-exception;
        goto L_0x00b0;
    L_0x00a8:
        r0 = move-exception;
        goto L_0x00be;
    L_0x00aa:
        r0 = move-exception;
        goto L_0x00cc;
    L_0x00ac:
        r5 = move-exception;
        r9 = r5;
        r5 = r0;
        r0 = r9;
    L_0x00b0:
        r6 = "DistanceConfigFetcher";
        r7 = "Can't reach server";
        android.util.Log.w(r6, r7, r0);
        r10.mException = r0;
        goto L_0x00d5;
    L_0x00ba:
        r5 = move-exception;
        r9 = r5;
        r5 = r0;
        r0 = r9;
    L_0x00be:
        r6 = "DistanceConfigFetcher";
        r7 = "No data exists at \"+urlString";
        android.util.Log.w(r6, r7, r0);
        r10.mException = r0;
        goto L_0x00d5;
    L_0x00c8:
        r5 = move-exception;
        r9 = r5;
        r5 = r0;
        r0 = r9;
    L_0x00cc:
        r6 = "DistanceConfigFetcher";
        r7 = "Can't reach sever.  Have you added android.permission.INTERNET to your manifest?";
        android.util.Log.w(r6, r7, r0);
        r10.mException = r0;
    L_0x00d5:
        r0 = r5;
    L_0x00d6:
        r5 = 10;
        if (r3 >= r5) goto L_0x00e0;
    L_0x00da:
        r5 = r10.mResponseCode;
        r6 = 302; // 0x12e float:4.23E-43 double:1.49E-321;
        if (r5 == r6) goto L_0x000c;
    L_0x00e0:
        r5 = r10.mResponseCode;
        r6 = 301; // 0x12d float:4.22E-43 double:1.487E-321;
        if (r5 == r6) goto L_0x000c;
    L_0x00e6:
        r5 = r10.mResponseCode;
        r6 = 303; // 0x12f float:4.25E-43 double:1.497E-321;
        if (r5 == r6) goto L_0x000c;
    L_0x00ec:
        r1 = r10.mException;
        if (r1 != 0) goto L_0x011c;
    L_0x00f0:
        r1 = new java.io.BufferedReader;	 Catch:{ Exception -> 0x0112 }
        r3 = new java.io.InputStreamReader;	 Catch:{ Exception -> 0x0112 }
        r0 = r0.getInputStream();	 Catch:{ Exception -> 0x0112 }
        r3.<init>(r0);	 Catch:{ Exception -> 0x0112 }
        r1.<init>(r3);	 Catch:{ Exception -> 0x0112 }
    L_0x00fe:
        r0 = r1.readLine();	 Catch:{ Exception -> 0x0112 }
        if (r0 == 0) goto L_0x0108;
    L_0x0104:
        r2.append(r0);	 Catch:{ Exception -> 0x0112 }
        goto L_0x00fe;
    L_0x0108:
        r1.close();	 Catch:{ Exception -> 0x0112 }
        r0 = r2.toString();	 Catch:{ Exception -> 0x0112 }
        r10.mResponse = r0;	 Catch:{ Exception -> 0x0112 }
        goto L_0x011c;
    L_0x0112:
        r0 = move-exception;
        r10.mException = r0;
        r1 = "DistanceConfigFetcher";
        r2 = "error reading beacon data";
        android.util.Log.w(r1, r2, r0);
    L_0x011c:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.distance.DistanceConfigFetcher.request():void");
    }
}
