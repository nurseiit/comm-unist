package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import com.bumptech.glide.load.data.DataFetcher;

public class ResourceLoader<T> implements ModelLoader<Integer, T> {
    private final Resources resources;
    private final ModelLoader<Uri, T> uriLoader;

    public ResourceLoader(Context context, ModelLoader<Uri, T> modelLoader) {
        this(context.getResources(), (ModelLoader) modelLoader);
    }

    public ResourceLoader(Resources resources, ModelLoader<Uri, T> modelLoader) {
        this.resources = resources;
        this.uriLoader = modelLoader;
    }

    public DataFetcher<T> getResourceFetcher(Integer num, int i, int i2) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("android.resource://");
        stringBuilder.append(this.resources.getResourcePackageName(num.intValue()));
        stringBuilder.append('/');
        stringBuilder.append(this.resources.getResourceTypeName(num.intValue()));
        stringBuilder.append('/');
        stringBuilder.append(this.resources.getResourceEntryName(num.intValue()));
        return this.uriLoader.getResourceFetcher(Uri.parse(stringBuilder.toString()), i, i2);
    }
}
