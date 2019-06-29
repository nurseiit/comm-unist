package com.androidnetworking.utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.widget.ImageView.ScaleType;
import com.androidnetworking.common.ANConstants;
import com.androidnetworking.common.ANRequest;
import com.androidnetworking.common.ANResponse;
import com.androidnetworking.core.Core;
import com.androidnetworking.error.ANError;
import com.androidnetworking.interfaces.AnalyticsListener;
import java.io.File;
import java.io.IOException;
import java.net.URLConnection;
import okhttp3.Cache;
import okhttp3.Response;
import okio.Okio;

public class Utils {
    public static File getDiskCacheDir(Context context, String str) {
        return new File(context.getCacheDir(), str);
    }

    public static Cache getCache(Context context, int i, String str) {
        return new Cache(getDiskCacheDir(context, str), (long) i);
    }

    public static String getMimeType(String str) {
        str = URLConnection.getFileNameMap().getContentTypeFor(str);
        return str == null ? "application/octet-stream" : str;
    }

    public static ANResponse<Bitmap> decodeBitmap(Response response, int i, int i2, Config config, ScaleType scaleType) {
        return decodeBitmap(response, i, i2, config, new Options(), scaleType);
    }

    public static ANResponse<Bitmap> decodeBitmap(Response response, int i, int i2, Config config, Options options, ScaleType scaleType) {
        Object decodeByteArray;
        byte[] bArr = new byte[0];
        try {
            bArr = Okio.buffer(response.body().source()).readByteArray();
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (i == 0 && i2 == 0) {
            options.inPreferredConfig = config;
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i3 = options.outWidth;
            int i4 = options.outHeight;
            int resizedDimension = getResizedDimension(i, i2, i3, i4, scaleType);
            i = getResizedDimension(i2, i, i4, i3, scaleType);
            options.inJustDecodeBounds = false;
            options.inSampleSize = findBestSampleSize(i3, i4, resizedDimension, i);
            Bitmap decodeByteArray2 = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (decodeByteArray2 == null || (decodeByteArray2.getWidth() <= resizedDimension && decodeByteArray2.getHeight() <= i)) {
                decodeByteArray = decodeByteArray2;
            } else {
                decodeByteArray = Bitmap.createScaledBitmap(decodeByteArray2, resizedDimension, i, true);
                decodeByteArray2.recycle();
            }
        }
        if (decodeByteArray == null) {
            return ANResponse.failed(getErrorForParse(new ANError(response)));
        }
        return ANResponse.success(decodeByteArray);
    }

    private static int getResizedDimension(int i, int i2, int i3, int i4, ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        } else {
            if (i == 0) {
                return (int) (((double) i3) * (((double) i2) / ((double) i4)));
            } else if (i2 == 0) {
                return i;
            } else {
                double d = ((double) i4) / ((double) i3);
                double d2;
                if (scaleType == ScaleType.CENTER_CROP) {
                    d2 = (double) i2;
                    if (((double) i) * d < d2) {
                        i = (int) (d2 / d);
                    }
                    return i;
                }
                d2 = (double) i2;
                if (((double) i) * d > d2) {
                    i = (int) (d2 / d);
                }
                return i;
            }
        }
    }

    public static int findBestSampleSize(int i, int i2, int i3, int i4) {
        double min = Math.min(((double) i) / ((double) i3), ((double) i2) / ((double) i4));
        float f = 1.0f;
        while (true) {
            float f2 = 2.0f * f;
            if (((double) f2) > min) {
                return (int) f;
            }
            f = f2;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:29:0x0052 A:{SYNTHETIC, Splitter:B:29:0x0052} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x005c A:{SYNTHETIC, Splitter:B:34:0x005c} */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0052 A:{SYNTHETIC, Splitter:B:29:0x0052} */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x005c A:{SYNTHETIC, Splitter:B:34:0x005c} */
    public static void saveFile(okhttp3.Response r3, java.lang.String r4, java.lang.String r5) throws java.io.IOException {
        /*
        r0 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;
        r0 = new byte[r0];
        r1 = 0;
        r3 = r3.body();	 Catch:{ all -> 0x004e }
        r3 = r3.byteStream();	 Catch:{ all -> 0x004e }
        r2 = new java.io.File;	 Catch:{ all -> 0x004c }
        r2.<init>(r4);	 Catch:{ all -> 0x004c }
        r4 = r2.exists();	 Catch:{ all -> 0x004c }
        if (r4 != 0) goto L_0x001b;
    L_0x0018:
        r2.mkdirs();	 Catch:{ all -> 0x004c }
    L_0x001b:
        r4 = new java.io.File;	 Catch:{ all -> 0x004c }
        r4.<init>(r2, r5);	 Catch:{ all -> 0x004c }
        r5 = new java.io.FileOutputStream;	 Catch:{ all -> 0x004c }
        r5.<init>(r4);	 Catch:{ all -> 0x004c }
    L_0x0025:
        r4 = r3.read(r0);	 Catch:{ all -> 0x0049 }
        r1 = -1;
        if (r4 == r1) goto L_0x0031;
    L_0x002c:
        r1 = 0;
        r5.write(r0, r1, r4);	 Catch:{ all -> 0x0049 }
        goto L_0x0025;
    L_0x0031:
        r5.flush();	 Catch:{ all -> 0x0049 }
        if (r3 == 0) goto L_0x003e;
    L_0x0036:
        r3.close();	 Catch:{ IOException -> 0x003a }
        goto L_0x003e;
    L_0x003a:
        r3 = move-exception;
        r3.printStackTrace();
    L_0x003e:
        if (r5 == 0) goto L_0x0048;
    L_0x0040:
        r5.close();	 Catch:{ IOException -> 0x0044 }
        goto L_0x0048;
    L_0x0044:
        r3 = move-exception;
        r3.printStackTrace();
    L_0x0048:
        return;
    L_0x0049:
        r4 = move-exception;
        r1 = r5;
        goto L_0x0050;
    L_0x004c:
        r4 = move-exception;
        goto L_0x0050;
    L_0x004e:
        r4 = move-exception;
        r3 = r1;
    L_0x0050:
        if (r3 == 0) goto L_0x005a;
    L_0x0052:
        r3.close();	 Catch:{ IOException -> 0x0056 }
        goto L_0x005a;
    L_0x0056:
        r3 = move-exception;
        r3.printStackTrace();
    L_0x005a:
        if (r1 == 0) goto L_0x0064;
    L_0x005c:
        r1.close();	 Catch:{ IOException -> 0x0060 }
        goto L_0x0064;
    L_0x0060:
        r3 = move-exception;
        r3.printStackTrace();
    L_0x0064:
        throw r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.androidnetworking.utils.Utils.saveFile(okhttp3.Response, java.lang.String, java.lang.String):void");
    }

    public static void sendAnalytics(AnalyticsListener analyticsListener, long j, long j2, long j3, boolean z) {
        final AnalyticsListener analyticsListener2 = analyticsListener;
        final long j4 = j;
        final long j5 = j2;
        final long j6 = j3;
        final boolean z2 = z;
        Core.getInstance().getExecutorSupplier().forMainThreadTasks().execute(new Runnable() {
            public void run() {
                if (analyticsListener2 != null) {
                    analyticsListener2.onReceived(j4, j5, j6, z2);
                }
            }
        });
    }

    public static ANError getErrorForConnection(ANError aNError) {
        aNError.setErrorDetail(ANConstants.CONNECTION_ERROR);
        aNError.setErrorCode(0);
        return aNError;
    }

    public static ANError getErrorForServerResponse(ANError aNError, ANRequest aNRequest, int i) {
        aNError = aNRequest.parseNetworkError(aNError);
        aNError.setErrorCode(i);
        aNError.setErrorDetail(ANConstants.RESPONSE_FROM_SERVER_ERROR);
        return aNError;
    }

    public static ANError getErrorForParse(ANError aNError) {
        aNError.setErrorCode(0);
        aNError.setErrorDetail(ANConstants.PARSE_ERROR);
        return aNError;
    }
}
