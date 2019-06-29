package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.cache.DiskCache.Factory;
import java.io.File;

public final class InternalCacheDiskCacheFactory implements Factory {
    private final Context context;
    private final String diskCacheName;
    private final int diskCacheSize;

    public InternalCacheDiskCacheFactory(Context context, int i) {
        this(context, null, i);
    }

    public InternalCacheDiskCacheFactory(Context context, String str, int i) {
        this.context = context;
        this.diskCacheName = str;
        this.diskCacheSize = i;
    }

    public DiskCache build() {
        File photoCacheDir;
        if (this.diskCacheName != null) {
            photoCacheDir = Glide.getPhotoCacheDir(this.context, this.diskCacheName);
        } else {
            photoCacheDir = Glide.getPhotoCacheDir(this.context);
        }
        DiskCache diskCache = photoCacheDir != null ? DiskLruCacheWrapper.get(photoCacheDir, this.diskCacheSize) : null;
        return diskCache == null ? new DiskCacheAdapter() : diskCache;
    }
}
