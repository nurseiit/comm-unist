package com.androidnetworking.common;

import com.androidnetworking.interfaces.ConnectionQualityChangeListener;

public class ConnectionClassManager {
    private static final long BANDWIDTH_LOWER_BOUND = 10;
    private static final int BYTES_TO_BITS = 8;
    private static final int DEFAULT_GOOD_BANDWIDTH = 2000;
    private static final int DEFAULT_MODERATE_BANDWIDTH = 550;
    private static final int DEFAULT_POOR_BANDWIDTH = 150;
    private static final int DEFAULT_SAMPLES_TO_QUALITY_CHANGE = 5;
    private static final int MINIMUM_SAMPLES_TO_DECIDE_QUALITY = 2;
    private static ConnectionClassManager sInstance;
    private ConnectionQualityChangeListener mConnectionQualityChangeListener;
    private int mCurrentBandwidth = 0;
    private int mCurrentBandwidthForSampling = 0;
    private ConnectionQuality mCurrentConnectionQuality = ConnectionQuality.UNKNOWN;
    private int mCurrentNumberOfSample = 0;

    public static ConnectionClassManager getInstance() {
        if (sInstance == null) {
            synchronized (ConnectionClassManager.class) {
                if (sInstance == null) {
                    sInstance = new ConnectionClassManager();
                }
            }
        }
        return sInstance;
    }

    /* JADX WARNING: Missing block: B:38:0x00a5, code skipped:
            return;
     */
    /* JADX WARNING: Missing block: B:43:0x00aa, code skipped:
            return;
     */
    public synchronized void updateBandwidth(long r4, long r6) {
        /*
        r3 = this;
        monitor-enter(r3);
        r0 = 0;
        r2 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1));
        if (r2 == 0) goto L_0x00a9;
    L_0x0007:
        r0 = 20000; // 0x4e20 float:2.8026E-41 double:9.8813E-320;
        r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1));
        if (r2 < 0) goto L_0x00a9;
    L_0x000d:
        r4 = (double) r4;
        r0 = 4607182418800017408; // 0x3ff0000000000000 float:0.0 double:1.0;
        r4 = r4 * r0;
        r6 = (double) r6;
        r4 = r4 / r6;
        r6 = 4620693217682128896; // 0x4020000000000000 float:0.0 double:8.0;
        r4 = r4 * r6;
        r6 = 4621819117588971520; // 0x4024000000000000 float:0.0 double:10.0;
        r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
        if (r0 >= 0) goto L_0x0020;
    L_0x001e:
        goto L_0x00a9;
    L_0x0020:
        r6 = r3.mCurrentBandwidthForSampling;	 Catch:{ all -> 0x00a6 }
        r7 = r3.mCurrentNumberOfSample;	 Catch:{ all -> 0x00a6 }
        r6 = r6 * r7;
        r6 = (double) r6;	 Catch:{ all -> 0x00a6 }
        r6 = r6 + r4;
        r4 = r3.mCurrentNumberOfSample;	 Catch:{ all -> 0x00a6 }
        r4 = r4 + 1;
        r4 = (double) r4;	 Catch:{ all -> 0x00a6 }
        r6 = r6 / r4;
        r4 = (int) r6;	 Catch:{ all -> 0x00a6 }
        r3.mCurrentBandwidthForSampling = r4;	 Catch:{ all -> 0x00a6 }
        r4 = r3.mCurrentNumberOfSample;	 Catch:{ all -> 0x00a6 }
        r4 = r4 + 1;
        r3.mCurrentNumberOfSample = r4;	 Catch:{ all -> 0x00a6 }
        r4 = r3.mCurrentNumberOfSample;	 Catch:{ all -> 0x00a6 }
        r5 = 5;
        if (r4 == r5) goto L_0x0047;
    L_0x003c:
        r4 = r3.mCurrentConnectionQuality;	 Catch:{ all -> 0x00a6 }
        r6 = com.androidnetworking.common.ConnectionQuality.UNKNOWN;	 Catch:{ all -> 0x00a6 }
        if (r4 != r6) goto L_0x00a4;
    L_0x0042:
        r4 = r3.mCurrentNumberOfSample;	 Catch:{ all -> 0x00a6 }
        r6 = 2;
        if (r4 != r6) goto L_0x00a4;
    L_0x0047:
        r4 = r3.mCurrentConnectionQuality;	 Catch:{ all -> 0x00a6 }
        r6 = r3.mCurrentBandwidthForSampling;	 Catch:{ all -> 0x00a6 }
        r3.mCurrentBandwidth = r6;	 Catch:{ all -> 0x00a6 }
        r6 = r3.mCurrentBandwidthForSampling;	 Catch:{ all -> 0x00a6 }
        if (r6 > 0) goto L_0x0056;
    L_0x0051:
        r6 = com.androidnetworking.common.ConnectionQuality.UNKNOWN;	 Catch:{ all -> 0x00a6 }
        r3.mCurrentConnectionQuality = r6;	 Catch:{ all -> 0x00a6 }
        goto L_0x007f;
    L_0x0056:
        r6 = r3.mCurrentBandwidthForSampling;	 Catch:{ all -> 0x00a6 }
        r7 = 150; // 0x96 float:2.1E-43 double:7.4E-322;
        if (r6 >= r7) goto L_0x0061;
    L_0x005c:
        r6 = com.androidnetworking.common.ConnectionQuality.POOR;	 Catch:{ all -> 0x00a6 }
        r3.mCurrentConnectionQuality = r6;	 Catch:{ all -> 0x00a6 }
        goto L_0x007f;
    L_0x0061:
        r6 = r3.mCurrentBandwidthForSampling;	 Catch:{ all -> 0x00a6 }
        r7 = 550; // 0x226 float:7.71E-43 double:2.717E-321;
        if (r6 >= r7) goto L_0x006c;
    L_0x0067:
        r6 = com.androidnetworking.common.ConnectionQuality.MODERATE;	 Catch:{ all -> 0x00a6 }
        r3.mCurrentConnectionQuality = r6;	 Catch:{ all -> 0x00a6 }
        goto L_0x007f;
    L_0x006c:
        r6 = r3.mCurrentBandwidthForSampling;	 Catch:{ all -> 0x00a6 }
        r7 = 2000; // 0x7d0 float:2.803E-42 double:9.88E-321;
        if (r6 >= r7) goto L_0x0077;
    L_0x0072:
        r6 = com.androidnetworking.common.ConnectionQuality.GOOD;	 Catch:{ all -> 0x00a6 }
        r3.mCurrentConnectionQuality = r6;	 Catch:{ all -> 0x00a6 }
        goto L_0x007f;
    L_0x0077:
        r6 = r3.mCurrentBandwidthForSampling;	 Catch:{ all -> 0x00a6 }
        if (r6 <= r7) goto L_0x007f;
    L_0x007b:
        r6 = com.androidnetworking.common.ConnectionQuality.EXCELLENT;	 Catch:{ all -> 0x00a6 }
        r3.mCurrentConnectionQuality = r6;	 Catch:{ all -> 0x00a6 }
    L_0x007f:
        r6 = r3.mCurrentNumberOfSample;	 Catch:{ all -> 0x00a6 }
        if (r6 != r5) goto L_0x0088;
    L_0x0083:
        r5 = 0;
        r3.mCurrentBandwidthForSampling = r5;	 Catch:{ all -> 0x00a6 }
        r3.mCurrentNumberOfSample = r5;	 Catch:{ all -> 0x00a6 }
    L_0x0088:
        r5 = r3.mCurrentConnectionQuality;	 Catch:{ all -> 0x00a6 }
        if (r5 == r4) goto L_0x00a4;
    L_0x008c:
        r4 = r3.mConnectionQualityChangeListener;	 Catch:{ all -> 0x00a6 }
        if (r4 == 0) goto L_0x00a4;
    L_0x0090:
        r4 = com.androidnetworking.core.Core.getInstance();	 Catch:{ all -> 0x00a6 }
        r4 = r4.getExecutorSupplier();	 Catch:{ all -> 0x00a6 }
        r4 = r4.forMainThreadTasks();	 Catch:{ all -> 0x00a6 }
        r5 = new com.androidnetworking.common.ConnectionClassManager$1;	 Catch:{ all -> 0x00a6 }
        r5.<init>();	 Catch:{ all -> 0x00a6 }
        r4.execute(r5);	 Catch:{ all -> 0x00a6 }
    L_0x00a4:
        monitor-exit(r3);
        return;
    L_0x00a6:
        r4 = move-exception;
        monitor-exit(r3);
        throw r4;
    L_0x00a9:
        monitor-exit(r3);
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidnetworking.common.ConnectionClassManager.updateBandwidth(long, long):void");
    }

    public int getCurrentBandwidth() {
        return this.mCurrentBandwidth;
    }

    public ConnectionQuality getCurrentConnectionQuality() {
        return this.mCurrentConnectionQuality;
    }

    public void setListener(ConnectionQualityChangeListener connectionQualityChangeListener) {
        this.mConnectionQualityChangeListener = connectionQualityChangeListener;
    }

    public void removeListener() {
        this.mConnectionQualityChangeListener = null;
    }

    public static void shutDown() {
        if (sInstance != null) {
            sInstance = null;
        }
    }
}
