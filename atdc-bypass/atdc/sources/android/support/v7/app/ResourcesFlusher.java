package android.support.v7.app;

import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.annotation.RequiresApi;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

class ResourcesFlusher {
    private static final String TAG = "ResourcesFlusher";
    private static Field sDrawableCacheField;
    private static boolean sDrawableCacheFieldFetched;
    private static Field sResourcesImplField;
    private static boolean sResourcesImplFieldFetched;
    private static Class sThemedResourceCacheClazz;
    private static boolean sThemedResourceCacheClazzFetched;
    private static Field sThemedResourceCache_mUnthemedEntriesField;
    private static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;

    ResourcesFlusher() {
    }

    static boolean flush(@NonNull Resources resources) {
        if (VERSION.SDK_INT >= 24) {
            return flushNougats(resources);
        }
        if (VERSION.SDK_INT >= 23) {
            return flushMarshmallows(resources);
        }
        return VERSION.SDK_INT >= 21 ? flushLollipops(resources) : false;
    }

    @RequiresApi(21)
    private static boolean flushLollipops(@NonNull Resources resources) {
        if (!sDrawableCacheFieldFetched) {
            try {
                sDrawableCacheField = Resources.class.getDeclaredField("mDrawableCache");
                sDrawableCacheField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, "Could not retrieve Resources#mDrawableCache field", e);
            }
            sDrawableCacheFieldFetched = true;
        }
        if (sDrawableCacheField != null) {
            Map map;
            try {
                map = (Map) sDrawableCacheField.get(resources);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, "Could not retrieve value from Resources#mDrawableCache", e2);
                map = null;
            }
            if (map != null) {
                map.clear();
                return true;
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0038 A:{SKIP} */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0037 A:{RETURN} */
    @android.support.annotation.RequiresApi(23)
    private static boolean flushMarshmallows(@android.support.annotation.NonNull android.content.res.Resources r4) {
        /*
        r0 = sDrawableCacheFieldFetched;
        r1 = 1;
        if (r0 != 0) goto L_0x001f;
    L_0x0005:
        r0 = android.content.res.Resources.class;
        r2 = "mDrawableCache";
        r0 = r0.getDeclaredField(r2);	 Catch:{ NoSuchFieldException -> 0x0015 }
        sDrawableCacheField = r0;	 Catch:{ NoSuchFieldException -> 0x0015 }
        r0 = sDrawableCacheField;	 Catch:{ NoSuchFieldException -> 0x0015 }
        r0.setAccessible(r1);	 Catch:{ NoSuchFieldException -> 0x0015 }
        goto L_0x001d;
    L_0x0015:
        r0 = move-exception;
        r2 = "ResourcesFlusher";
        r3 = "Could not retrieve Resources#mDrawableCache field";
        android.util.Log.e(r2, r3, r0);
    L_0x001d:
        sDrawableCacheFieldFetched = r1;
    L_0x001f:
        r0 = 0;
        r2 = sDrawableCacheField;
        if (r2 == 0) goto L_0x0033;
    L_0x0024:
        r2 = sDrawableCacheField;	 Catch:{ IllegalAccessException -> 0x002b }
        r4 = r2.get(r4);	 Catch:{ IllegalAccessException -> 0x002b }
        goto L_0x0034;
    L_0x002b:
        r4 = move-exception;
        r2 = "ResourcesFlusher";
        r3 = "Could not retrieve value from Resources#mDrawableCache";
        android.util.Log.e(r2, r3, r4);
    L_0x0033:
        r4 = r0;
    L_0x0034:
        r0 = 0;
        if (r4 != 0) goto L_0x0038;
    L_0x0037:
        return r0;
    L_0x0038:
        if (r4 == 0) goto L_0x0041;
    L_0x003a:
        r4 = flushThemedResourcesCache(r4);
        if (r4 == 0) goto L_0x0041;
    L_0x0040:
        r0 = 1;
    L_0x0041:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.app.ResourcesFlusher.flushMarshmallows(android.content.res.Resources):boolean");
    }

    @RequiresApi(24)
    private static boolean flushNougats(@NonNull Resources resources) {
        boolean z = true;
        if (!sResourcesImplFieldFetched) {
            try {
                sResourcesImplField = Resources.class.getDeclaredField("mResourcesImpl");
                sResourcesImplField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, "Could not retrieve Resources#mResourcesImpl field", e);
            }
            sResourcesImplFieldFetched = true;
        }
        if (sResourcesImplField == null) {
            return false;
        }
        Object obj;
        try {
            obj = sResourcesImplField.get(resources);
        } catch (IllegalAccessException e2) {
            Log.e(TAG, "Could not retrieve value from Resources#mResourcesImpl", e2);
            obj = null;
        }
        if (obj == null) {
            return false;
        }
        if (!sDrawableCacheFieldFetched) {
            try {
                sDrawableCacheField = obj.getClass().getDeclaredField("mDrawableCache");
                sDrawableCacheField.setAccessible(true);
            } catch (NoSuchFieldException e3) {
                Log.e(TAG, "Could not retrieve ResourcesImpl#mDrawableCache field", e3);
            }
            sDrawableCacheFieldFetched = true;
        }
        if (sDrawableCacheField != null) {
            try {
                obj = sDrawableCacheField.get(obj);
            } catch (IllegalAccessException e22) {
                Log.e(TAG, "Could not retrieve value from ResourcesImpl#mDrawableCache", e22);
            }
            if (obj == null || !flushThemedResourcesCache(obj)) {
                z = false;
            }
            return z;
        }
        obj = null;
        z = false;
        return z;
    }

    @RequiresApi(16)
    private static boolean flushThemedResourcesCache(@NonNull Object obj) {
        if (!sThemedResourceCacheClazzFetched) {
            try {
                sThemedResourceCacheClazz = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e(TAG, "Could not find ThemedResourceCache class", e);
            }
            sThemedResourceCacheClazzFetched = true;
        }
        if (sThemedResourceCacheClazz == null) {
            return false;
        }
        if (!sThemedResourceCache_mUnthemedEntriesFieldFetched) {
            try {
                sThemedResourceCache_mUnthemedEntriesField = sThemedResourceCacheClazz.getDeclaredField("mUnthemedEntries");
                sThemedResourceCache_mUnthemedEntriesField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e(TAG, "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            sThemedResourceCache_mUnthemedEntriesFieldFetched = true;
        }
        if (sThemedResourceCache_mUnthemedEntriesField == null) {
            return false;
        }
        LongSparseArray longSparseArray;
        try {
            longSparseArray = (LongSparseArray) sThemedResourceCache_mUnthemedEntriesField.get(obj);
        } catch (IllegalAccessException e3) {
            Log.e(TAG, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
            longSparseArray = null;
        }
        if (longSparseArray == null) {
            return false;
        }
        longSparseArray.clear();
        return true;
    }
}
