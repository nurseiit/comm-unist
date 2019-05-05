package com.bumptech.glide.load.engine.cache;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

public class MemorySizeCalculator {
    static final int BITMAP_POOL_TARGET_SCREENS = 4;
    static final int BYTES_PER_ARGB_8888_PIXEL = 4;
    static final float LOW_MEMORY_MAX_SIZE_MULTIPLIER = 0.33f;
    static final float MAX_SIZE_MULTIPLIER = 0.4f;
    static final int MEMORY_CACHE_TARGET_SCREENS = 2;
    private static final String TAG = "MemorySizeCalculator";
    private final int bitmapPoolSize;
    private final Context context;
    private final int memoryCacheSize;

    interface ScreenDimensions {
        int getHeightPixels();

        int getWidthPixels();
    }

    private static class DisplayMetricsScreenDimensions implements ScreenDimensions {
        private final DisplayMetrics displayMetrics;

        public DisplayMetricsScreenDimensions(DisplayMetrics displayMetrics) {
            this.displayMetrics = displayMetrics;
        }

        public int getWidthPixels() {
            return this.displayMetrics.widthPixels;
        }

        public int getHeightPixels() {
            return this.displayMetrics.heightPixels;
        }
    }

    public MemorySizeCalculator(Context context) {
        this(context, (ActivityManager) context.getSystemService("activity"), new DisplayMetricsScreenDimensions(context.getResources().getDisplayMetrics()));
    }

    MemorySizeCalculator(Context context, ActivityManager activityManager, ScreenDimensions screenDimensions) {
        this.context = context;
        int maxSize = getMaxSize(activityManager);
        int widthPixels = (screenDimensions.getWidthPixels() * screenDimensions.getHeightPixels()) * 4;
        int i = widthPixels * 4;
        widthPixels *= 2;
        int i2 = widthPixels + i;
        if (i2 <= maxSize) {
            this.memoryCacheSize = widthPixels;
            this.bitmapPoolSize = i;
        } else {
            i = Math.round(((float) maxSize) / 6.0f);
            this.memoryCacheSize = i * 2;
            this.bitmapPoolSize = i * 4;
        }
        if (Log.isLoggable(TAG, 3)) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Calculated memory cache size: ");
            stringBuilder.append(toMb(this.memoryCacheSize));
            stringBuilder.append(" pool size: ");
            stringBuilder.append(toMb(this.bitmapPoolSize));
            stringBuilder.append(" memory class limited? ");
            stringBuilder.append(i2 > maxSize);
            stringBuilder.append(" max size: ");
            stringBuilder.append(toMb(maxSize));
            stringBuilder.append(" memoryClass: ");
            stringBuilder.append(activityManager.getMemoryClass());
            stringBuilder.append(" isLowMemoryDevice: ");
            stringBuilder.append(isLowMemoryDevice(activityManager));
            Log.d(str, stringBuilder.toString());
        }
    }

    public int getMemoryCacheSize() {
        return this.memoryCacheSize;
    }

    public int getBitmapPoolSize() {
        return this.bitmapPoolSize;
    }

    private static int getMaxSize(ActivityManager activityManager) {
        return Math.round(((float) ((activityManager.getMemoryClass() * 1024) * 1024)) * (isLowMemoryDevice(activityManager) ? LOW_MEMORY_MAX_SIZE_MULTIPLIER : MAX_SIZE_MULTIPLIER));
    }

    private String toMb(int i) {
        return Formatter.formatFileSize(this.context, (long) i);
    }

    @TargetApi(19)
    private static boolean isLowMemoryDevice(ActivityManager activityManager) {
        int i = VERSION.SDK_INT;
        return i < 11 || (i >= 19 && activityManager.isLowRamDevice());
    }
}
