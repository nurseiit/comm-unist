package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap.Config;
import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.prefill.PreFillType.Builder;
import com.bumptech.glide.util.Util;
import java.util.HashMap;

public final class BitmapPreFiller {
    private final BitmapPool bitmapPool;
    private BitmapPreFillRunner current;
    private final DecodeFormat defaultFormat;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final MemoryCache memoryCache;

    public BitmapPreFiller(MemoryCache memoryCache, BitmapPool bitmapPool, DecodeFormat decodeFormat) {
        this.memoryCache = memoryCache;
        this.bitmapPool = bitmapPool;
        this.defaultFormat = decodeFormat;
    }

    public void preFill(Builder... builderArr) {
        if (this.current != null) {
            this.current.cancel();
        }
        PreFillType[] preFillTypeArr = new PreFillType[builderArr.length];
        for (int i = 0; i < builderArr.length; i++) {
            Builder builder = builderArr[i];
            if (builder.getConfig() == null) {
                Config config = (this.defaultFormat == DecodeFormat.ALWAYS_ARGB_8888 || this.defaultFormat == DecodeFormat.PREFER_ARGB_8888) ? Config.ARGB_8888 : Config.RGB_565;
                builder.setConfig(config);
            }
            preFillTypeArr[i] = builder.build();
        }
        this.current = new BitmapPreFillRunner(this.bitmapPool, this.memoryCache, generateAllocationOrder(preFillTypeArr));
        this.handler.post(this.current);
    }

    /* Access modifiers changed, original: 0000 */
    public PreFillQueue generateAllocationOrder(PreFillType[] preFillTypeArr) {
        int maxSize = (this.memoryCache.getMaxSize() - this.memoryCache.getCurrentSize()) + this.bitmapPool.getMaxSize();
        int i = 0;
        for (PreFillType weight : preFillTypeArr) {
            i += weight.getWeight();
        }
        float f = ((float) maxSize) / ((float) i);
        HashMap hashMap = new HashMap();
        for (PreFillType preFillType : preFillTypeArr) {
            hashMap.put(preFillType, Integer.valueOf(Math.round(((float) preFillType.getWeight()) * f) / getSizeInBytes(preFillType)));
        }
        return new PreFillQueue(hashMap);
    }

    private static int getSizeInBytes(PreFillType preFillType) {
        return Util.getBitmapByteSize(preFillType.getWidth(), preFillType.getHeight(), preFillType.getConfig());
    }
}
