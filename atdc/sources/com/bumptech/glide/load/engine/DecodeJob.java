package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.DiskCache.Writer;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import com.bumptech.glide.provider.DataLoadProvider;
import com.bumptech.glide.util.LogTime;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class DecodeJob<A, T, Z> {
    private static final FileOpener DEFAULT_FILE_OPENER = new FileOpener();
    private static final String TAG = "DecodeJob";
    private final DiskCacheProvider diskCacheProvider;
    private final DiskCacheStrategy diskCacheStrategy;
    private final DataFetcher<A> fetcher;
    private final FileOpener fileOpener;
    private final int height;
    private volatile boolean isCancelled;
    private final DataLoadProvider<A, T> loadProvider;
    private final Priority priority;
    private final EngineKey resultKey;
    private final ResourceTranscoder<T, Z> transcoder;
    private final Transformation<T> transformation;
    private final int width;

    interface DiskCacheProvider {
        DiskCache getDiskCache();
    }

    static class FileOpener {
        FileOpener() {
        }

        public OutputStream open(File file) throws FileNotFoundException {
            return new BufferedOutputStream(new FileOutputStream(file));
        }
    }

    class SourceWriter<DataType> implements Writer {
        private final DataType data;
        private final Encoder<DataType> encoder;

        public SourceWriter(Encoder<DataType> encoder, DataType dataType) {
            this.encoder = encoder;
            this.data = dataType;
        }

        /* JADX WARNING: Removed duplicated region for block: B:17:0x002f A:{Catch:{ all -> 0x0023 }} */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x0038 A:{SYNTHETIC, Splitter:B:19:0x0038} */
        /* JADX WARNING: Removed duplicated region for block: B:25:0x003f A:{SYNTHETIC, Splitter:B:25:0x003f} */
        public boolean write(java.io.File r5) {
            /*
            r4 = this;
            r0 = 0;
            r1 = com.bumptech.glide.load.engine.DecodeJob.this;	 Catch:{ FileNotFoundException -> 0x0025 }
            r1 = r1.fileOpener;	 Catch:{ FileNotFoundException -> 0x0025 }
            r5 = r1.open(r5);	 Catch:{ FileNotFoundException -> 0x0025 }
            r0 = r4.encoder;	 Catch:{ FileNotFoundException -> 0x001e, all -> 0x0019 }
            r1 = r4.data;	 Catch:{ FileNotFoundException -> 0x001e, all -> 0x0019 }
            r0 = r0.encode(r1, r5);	 Catch:{ FileNotFoundException -> 0x001e, all -> 0x0019 }
            if (r5 == 0) goto L_0x003c;
        L_0x0015:
            r5.close();	 Catch:{ IOException -> 0x003c }
            goto L_0x003c;
        L_0x0019:
            r0 = move-exception;
            r3 = r0;
            r0 = r5;
            r5 = r3;
            goto L_0x003d;
        L_0x001e:
            r0 = move-exception;
            r3 = r0;
            r0 = r5;
            r5 = r3;
            goto L_0x0026;
        L_0x0023:
            r5 = move-exception;
            goto L_0x003d;
        L_0x0025:
            r5 = move-exception;
        L_0x0026:
            r1 = "DecodeJob";
            r2 = 3;
            r1 = android.util.Log.isLoggable(r1, r2);	 Catch:{ all -> 0x0023 }
            if (r1 == 0) goto L_0x0036;
        L_0x002f:
            r1 = "DecodeJob";
            r2 = "Failed to find file to write to disk cache";
            android.util.Log.d(r1, r2, r5);	 Catch:{ all -> 0x0023 }
        L_0x0036:
            if (r0 == 0) goto L_0x003b;
        L_0x0038:
            r0.close();	 Catch:{ IOException -> 0x003b }
        L_0x003b:
            r0 = 0;
        L_0x003c:
            return r0;
        L_0x003d:
            if (r0 == 0) goto L_0x0042;
        L_0x003f:
            r0.close();	 Catch:{ IOException -> 0x0042 }
        L_0x0042:
            throw r5;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.DecodeJob$SourceWriter.write(java.io.File):boolean");
        }
    }

    public DecodeJob(EngineKey engineKey, int i, int i2, DataFetcher<A> dataFetcher, DataLoadProvider<A, T> dataLoadProvider, Transformation<T> transformation, ResourceTranscoder<T, Z> resourceTranscoder, DiskCacheProvider diskCacheProvider, DiskCacheStrategy diskCacheStrategy, Priority priority) {
        this(engineKey, i, i2, dataFetcher, dataLoadProvider, transformation, resourceTranscoder, diskCacheProvider, diskCacheStrategy, priority, DEFAULT_FILE_OPENER);
    }

    DecodeJob(EngineKey engineKey, int i, int i2, DataFetcher<A> dataFetcher, DataLoadProvider<A, T> dataLoadProvider, Transformation<T> transformation, ResourceTranscoder<T, Z> resourceTranscoder, DiskCacheProvider diskCacheProvider, DiskCacheStrategy diskCacheStrategy, Priority priority, FileOpener fileOpener) {
        this.resultKey = engineKey;
        this.width = i;
        this.height = i2;
        this.fetcher = dataFetcher;
        this.loadProvider = dataLoadProvider;
        this.transformation = transformation;
        this.transcoder = resourceTranscoder;
        this.diskCacheProvider = diskCacheProvider;
        this.diskCacheStrategy = diskCacheStrategy;
        this.priority = priority;
        this.fileOpener = fileOpener;
    }

    public Resource<Z> decodeResultFromCache() throws Exception {
        if (!this.diskCacheStrategy.cacheResult()) {
            return null;
        }
        long logTime = LogTime.getLogTime();
        Resource loadFromCache = loadFromCache(this.resultKey);
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Decoded transformed from cache", logTime);
        }
        logTime = LogTime.getLogTime();
        loadFromCache = transcode(loadFromCache);
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Transcoded transformed from cache", logTime);
        }
        return loadFromCache;
    }

    public Resource<Z> decodeSourceFromCache() throws Exception {
        if (!this.diskCacheStrategy.cacheSource()) {
            return null;
        }
        long logTime = LogTime.getLogTime();
        Resource loadFromCache = loadFromCache(this.resultKey.getOriginalKey());
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Decoded source from cache", logTime);
        }
        return transformEncodeAndTranscode(loadFromCache);
    }

    public Resource<Z> decodeFromSource() throws Exception {
        return transformEncodeAndTranscode(decodeSource());
    }

    public void cancel() {
        this.fetcher.cancel();
        this.isCancelled = true;
    }

    private Resource<Z> transformEncodeAndTranscode(Resource<T> resource) {
        long logTime = LogTime.getLogTime();
        Resource transform = transform(resource);
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Transformed resource from source", logTime);
        }
        writeTransformedToCache(transform);
        logTime = LogTime.getLogTime();
        transform = transcode(transform);
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Transcoded transformed from source", logTime);
        }
        return transform;
    }

    private void writeTransformedToCache(Resource<T> resource) {
        if (resource != null && this.diskCacheStrategy.cacheResult()) {
            long logTime = LogTime.getLogTime();
            this.diskCacheProvider.getDiskCache().put(this.resultKey, new SourceWriter(this.loadProvider.getEncoder(), resource));
            if (Log.isLoggable(TAG, 2)) {
                logWithTimeAndKey("Wrote transformed from source to cache", logTime);
            }
        }
    }

    private Resource<T> decodeSource() throws Exception {
        try {
            long logTime = LogTime.getLogTime();
            Object loadData = this.fetcher.loadData(this.priority);
            if (Log.isLoggable(TAG, 2)) {
                logWithTimeAndKey("Fetched data", logTime);
            }
            if (this.isCancelled) {
                return null;
            }
            Resource decodeFromSourceData = decodeFromSourceData(loadData);
            this.fetcher.cleanup();
            return decodeFromSourceData;
        } finally {
            this.fetcher.cleanup();
        }
    }

    private Resource<T> decodeFromSourceData(A a) throws IOException {
        if (this.diskCacheStrategy.cacheSource()) {
            return cacheAndDecodeSourceData(a);
        }
        long logTime = LogTime.getLogTime();
        Resource<T> decode = this.loadProvider.getSourceDecoder().decode(a, this.width, this.height);
        if (!Log.isLoggable(TAG, 2)) {
            return decode;
        }
        logWithTimeAndKey("Decoded from source", logTime);
        return decode;
    }

    private Resource<T> cacheAndDecodeSourceData(A a) throws IOException {
        long logTime = LogTime.getLogTime();
        this.diskCacheProvider.getDiskCache().put(this.resultKey.getOriginalKey(), new SourceWriter(this.loadProvider.getSourceEncoder(), a));
        if (Log.isLoggable(TAG, 2)) {
            logWithTimeAndKey("Wrote source to cache", logTime);
        }
        logTime = LogTime.getLogTime();
        Resource loadFromCache = loadFromCache(this.resultKey.getOriginalKey());
        if (Log.isLoggable(TAG, 2) && loadFromCache != null) {
            logWithTimeAndKey("Decoded source from cache", logTime);
        }
        return loadFromCache;
    }

    private Resource<T> loadFromCache(Key key) throws IOException {
        File file = this.diskCacheProvider.getDiskCache().get(key);
        if (file == null) {
            return null;
        }
        try {
            Resource<T> decode = this.loadProvider.getCacheDecoder().decode(file, this.width, this.height);
            if (decode == null) {
            }
            return decode;
        } finally {
            this.diskCacheProvider.getDiskCache().delete(key);
        }
    }

    private Resource<T> transform(Resource<T> resource) {
        if (resource == null) {
            return null;
        }
        Resource transform = this.transformation.transform(resource, this.width, this.height);
        if (!resource.equals(transform)) {
            resource.recycle();
        }
        return transform;
    }

    private Resource<Z> transcode(Resource<T> resource) {
        return resource == null ? null : this.transcoder.transcode(resource);
    }

    private void logWithTimeAndKey(String str, long j) {
        String str2 = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(" in ");
        stringBuilder.append(LogTime.getElapsedMillis(j));
        stringBuilder.append(this.resultKey);
        Log.v(str2, stringBuilder.toString());
    }
}
