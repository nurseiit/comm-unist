package com.androidnetworking.internal;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.session.PlaybackStateCompat;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.androidnetworking.AndroidNetworking;
import com.androidnetworking.cache.LruBitmapCache;
import com.androidnetworking.common.ANRequest;
import com.androidnetworking.error.ANError;
import com.androidnetworking.interfaces.BitmapRequestListener;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

public class ANImageLoader {
    private static final int cacheSize = (maxMemory / 8);
    private static final int maxMemory = ((int) (Runtime.getRuntime().maxMemory() / PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID));
    private static ANImageLoader sInstance;
    private int mBatchResponseDelayMs = 100;
    private final HashMap<String, BatchedImageRequest> mBatchedResponses = new HashMap();
    private Options mBitmapOptions = new Options();
    private final ImageCache mCache;
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private final HashMap<String, BatchedImageRequest> mInFlightRequests = new HashMap();
    private Runnable mRunnable;

    private class BatchedImageRequest {
        private ANError mANError;
        private final LinkedList<ImageContainer> mContainers = new LinkedList();
        private final ANRequest mRequest;
        private Bitmap mResponseBitmap;

        public BatchedImageRequest(ANRequest aNRequest, ImageContainer imageContainer) {
            this.mRequest = aNRequest;
            this.mContainers.add(imageContainer);
        }

        public void setError(ANError aNError) {
            this.mANError = aNError;
        }

        public ANError getError() {
            return this.mANError;
        }

        public void addContainer(ImageContainer imageContainer) {
            this.mContainers.add(imageContainer);
        }

        public boolean removeContainerAndCancelIfNecessary(ImageContainer imageContainer) {
            this.mContainers.remove(imageContainer);
            if (this.mContainers.size() != 0) {
                return false;
            }
            this.mRequest.cancel(true);
            if (this.mRequest.isCanceled()) {
                this.mRequest.destroy();
                ANRequestQueue.getInstance().finish(this.mRequest);
            }
            return true;
        }
    }

    public interface ImageCache {
        void evictAllBitmap();

        void evictBitmap(String str);

        Bitmap getBitmap(String str);

        void putBitmap(String str, Bitmap bitmap);
    }

    public class ImageContainer {
        private Bitmap mBitmap;
        private final String mCacheKey;
        private final ImageListener mListener;
        private final String mRequestUrl;

        public ImageContainer(Bitmap bitmap, String str, String str2, ImageListener imageListener) {
            this.mBitmap = bitmap;
            this.mRequestUrl = str;
            this.mCacheKey = str2;
            this.mListener = imageListener;
        }

        public void cancelRequest() {
            if (this.mListener != null) {
                BatchedImageRequest batchedImageRequest = (BatchedImageRequest) ANImageLoader.this.mInFlightRequests.get(this.mCacheKey);
                if (batchedImageRequest == null) {
                    batchedImageRequest = (BatchedImageRequest) ANImageLoader.this.mBatchedResponses.get(this.mCacheKey);
                    if (batchedImageRequest != null) {
                        batchedImageRequest.removeContainerAndCancelIfNecessary(this);
                        if (batchedImageRequest.mContainers.size() == 0) {
                            ANImageLoader.this.mBatchedResponses.remove(this.mCacheKey);
                        }
                    }
                } else if (batchedImageRequest.removeContainerAndCancelIfNecessary(this)) {
                    ANImageLoader.this.mInFlightRequests.remove(this.mCacheKey);
                }
            }
        }

        public Bitmap getBitmap() {
            return this.mBitmap;
        }

        public String getRequestUrl() {
            return this.mRequestUrl;
        }
    }

    public interface ImageListener {
        void onError(ANError aNError);

        void onResponse(ImageContainer imageContainer, boolean z);
    }

    public static void initialize() {
        getInstance();
    }

    public static ANImageLoader getInstance() {
        if (sInstance == null) {
            synchronized (ANImageLoader.class) {
                if (sInstance == null) {
                    sInstance = new ANImageLoader(new LruBitmapCache(cacheSize));
                }
            }
        }
        return sInstance;
    }

    public ANImageLoader(ImageCache imageCache) {
        this.mCache = imageCache;
    }

    public ImageCache getImageCache() {
        return this.mCache;
    }

    public static ImageListener getImageListener(final ImageView imageView, final int i, final int i2) {
        return new ImageListener() {
            public void onResponse(ImageContainer imageContainer, boolean z) {
                if (imageContainer.getBitmap() != null) {
                    imageView.setImageBitmap(imageContainer.getBitmap());
                } else if (i != 0) {
                    imageView.setImageResource(i);
                }
            }

            public void onError(ANError aNError) {
                if (i2 != 0) {
                    imageView.setImageResource(i2);
                }
            }
        };
    }

    public boolean isCached(String str, int i, int i2) {
        return isCached(str, i, i2, ScaleType.CENTER_INSIDE);
    }

    public boolean isCached(String str, int i, int i2, ScaleType scaleType) {
        throwIfNotOnMainThread();
        return this.mCache.getBitmap(getCacheKey(str, i, i2, scaleType)) != null;
    }

    public ImageContainer get(String str, ImageListener imageListener) {
        return get(str, imageListener, 0, 0);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2) {
        return get(str, imageListener, i, i2, ScaleType.CENTER_INSIDE);
    }

    public ImageContainer get(String str, ImageListener imageListener, int i, int i2, ScaleType scaleType) {
        ImageListener imageListener2 = imageListener;
        throwIfNotOnMainThread();
        String str2 = str;
        int i3 = i;
        int i4 = i2;
        ScaleType scaleType2 = scaleType;
        String cacheKey = getCacheKey(str2, i3, i4, scaleType2);
        Bitmap bitmap = this.mCache.getBitmap(cacheKey);
        ImageContainer imageContainer;
        if (bitmap != null) {
            imageContainer = new ImageContainer(bitmap, str2, null, null);
            imageListener2.onResponse(imageContainer, true);
            return imageContainer;
        }
        imageContainer = new ImageContainer(null, str2, cacheKey, imageListener2);
        imageListener2.onResponse(imageContainer, true);
        BatchedImageRequest batchedImageRequest = (BatchedImageRequest) this.mInFlightRequests.get(cacheKey);
        if (batchedImageRequest != null) {
            batchedImageRequest.addContainer(imageContainer);
            return imageContainer;
        }
        this.mInFlightRequests.put(cacheKey, new BatchedImageRequest(makeImageRequest(str2, i3, i4, scaleType2, cacheKey), imageContainer));
        return imageContainer;
    }

    /* Access modifiers changed, original: protected */
    public ANRequest makeImageRequest(String str, int i, int i2, ScaleType scaleType, final String str2) {
        ANRequest build = AndroidNetworking.get(str).setTag((Object) "ImageRequestTag").setBitmapMaxHeight(i2).setBitmapMaxWidth(i).setImageScaleType(scaleType).setBitmapConfig(Config.RGB_565).setBitmapOptions(this.mBitmapOptions).build();
        build.getAsBitmap(new BitmapRequestListener() {
            public void onResponse(Bitmap bitmap) {
                ANImageLoader.this.onGetImageSuccess(str2, bitmap);
            }

            public void onError(ANError aNError) {
                ANImageLoader.this.onGetImageError(str2, aNError);
            }
        });
        return build;
    }

    public void setBitmapDecodeOptions(Options options) {
        this.mBitmapOptions = options;
    }

    public void setBatchedResponseDelay(int i) {
        this.mBatchResponseDelayMs = i;
    }

    /* Access modifiers changed, original: protected */
    public void onGetImageSuccess(String str, Bitmap bitmap) {
        this.mCache.putBitmap(str, bitmap);
        BatchedImageRequest batchedImageRequest = (BatchedImageRequest) this.mInFlightRequests.remove(str);
        if (batchedImageRequest != null) {
            batchedImageRequest.mResponseBitmap = bitmap;
            batchResponse(str, batchedImageRequest);
        }
    }

    /* Access modifiers changed, original: protected */
    public void onGetImageError(String str, ANError aNError) {
        BatchedImageRequest batchedImageRequest = (BatchedImageRequest) this.mInFlightRequests.remove(str);
        if (batchedImageRequest != null) {
            batchedImageRequest.setError(aNError);
            batchResponse(str, batchedImageRequest);
        }
    }

    private void batchResponse(String str, BatchedImageRequest batchedImageRequest) {
        this.mBatchedResponses.put(str, batchedImageRequest);
        if (this.mRunnable == null) {
            this.mRunnable = new Runnable() {
                public void run() {
                    for (BatchedImageRequest batchedImageRequest : ANImageLoader.this.mBatchedResponses.values()) {
                        Iterator it = batchedImageRequest.mContainers.iterator();
                        while (it.hasNext()) {
                            ImageContainer imageContainer = (ImageContainer) it.next();
                            if (imageContainer.mListener != null) {
                                if (batchedImageRequest.getError() == null) {
                                    imageContainer.mBitmap = batchedImageRequest.mResponseBitmap;
                                    imageContainer.mListener.onResponse(imageContainer, false);
                                } else {
                                    imageContainer.mListener.onError(batchedImageRequest.getError());
                                }
                            }
                        }
                    }
                    ANImageLoader.this.mBatchedResponses.clear();
                    ANImageLoader.this.mRunnable = null;
                }
            };
            this.mHandler.postDelayed(this.mRunnable, (long) this.mBatchResponseDelayMs);
        }
    }

    private void throwIfNotOnMainThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("ImageLoader must be invoked from the main thread.");
        }
    }

    private static String getCacheKey(String str, int i, int i2, ScaleType scaleType) {
        StringBuilder stringBuilder = new StringBuilder(str.length() + 12);
        stringBuilder.append("#W");
        stringBuilder.append(i);
        stringBuilder.append("#H");
        stringBuilder.append(i2);
        stringBuilder.append("#S");
        stringBuilder.append(scaleType.ordinal());
        stringBuilder.append(str);
        return stringBuilder.toString();
    }
}
