package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;

public class GifDrawableTransformation implements Transformation<GifDrawable> {
    private final BitmapPool bitmapPool;
    private final Transformation<Bitmap> wrapped;

    public GifDrawableTransformation(Transformation<Bitmap> transformation, BitmapPool bitmapPool) {
        this.wrapped = transformation;
        this.bitmapPool = bitmapPool;
    }

    public Resource<GifDrawable> transform(Resource<GifDrawable> resource, int i, int i2) {
        GifDrawable gifDrawable = (GifDrawable) resource.get();
        BitmapResource bitmapResource = new BitmapResource(((GifDrawable) resource.get()).getFirstFrame(), this.bitmapPool);
        Resource transform = this.wrapped.transform(bitmapResource, i, i2);
        if (!bitmapResource.equals(transform)) {
            bitmapResource.recycle();
        }
        gifDrawable.setFrameTransformation(this.wrapped, (Bitmap) transform.get());
        return resource;
    }

    public String getId() {
        return this.wrapped.getId();
    }
}
