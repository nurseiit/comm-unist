package com.androidnetworking.cache;

import android.graphics.Bitmap;
import com.androidnetworking.internal.ANImageLoader.ImageCache;

public class LruBitmapCache extends LruCache<String, Bitmap> implements ImageCache {
    public LruBitmapCache(int i) {
        super(i);
    }

    /* Access modifiers changed, original: protected */
    public int sizeOf(String str, Bitmap bitmap) {
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    public Bitmap getBitmap(String str) {
        return (Bitmap) get(str);
    }

    public void evictBitmap(String str) {
        remove(str);
    }

    public void evictAllBitmap() {
        evictAll();
    }

    public void putBitmap(String str, Bitmap bitmap) {
        put(str, bitmap);
    }
}
