package com.bumptech.glide.load.data;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore.Images.Thumbnails;
import android.provider.MediaStore.Video;
import com.bumptech.glide.Priority;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public class MediaStoreThumbFetcher implements DataFetcher<InputStream> {
    private static final ThumbnailStreamOpenerFactory DEFAULT_FACTORY = new ThumbnailStreamOpenerFactory();
    private static final int MINI_HEIGHT = 384;
    private static final int MINI_WIDTH = 512;
    private final Context context;
    private final DataFetcher<InputStream> defaultFetcher;
    private final ThumbnailStreamOpenerFactory factory;
    private final int height;
    private InputStream inputStream;
    private final Uri mediaStoreUri;
    private final int width;

    static class FileService {
        FileService() {
        }

        public boolean exists(File file) {
            return file.exists();
        }

        public long length(File file) {
            return file.length();
        }

        public File get(String str) {
            return new File(str);
        }
    }

    interface ThumbnailQuery {
        Cursor query(Context context, Uri uri);
    }

    static class ThumbnailStreamOpener {
        private static final FileService DEFAULT_SERVICE = new FileService();
        private ThumbnailQuery query;
        private final FileService service;

        public ThumbnailStreamOpener(ThumbnailQuery thumbnailQuery) {
            this(DEFAULT_SERVICE, thumbnailQuery);
        }

        public ThumbnailStreamOpener(FileService fileService, ThumbnailQuery thumbnailQuery) {
            this.service = fileService;
            this.query = thumbnailQuery;
        }

        /* JADX WARNING: Removed duplicated region for block: B:18:0x0043  */
        /* JADX WARNING: Removed duplicated region for block: B:22:? A:{SYNTHETIC, RETURN} */
        /* JADX WARNING: Removed duplicated region for block: B:20:0x0048  */
        public java.io.InputStream open(android.content.Context r8, android.net.Uri r9) throws java.io.FileNotFoundException {
            /*
            r7 = this;
            r0 = r7.query;
            r9 = r0.query(r8, r9);
            r0 = 0;
            if (r9 == 0) goto L_0x0040;
        L_0x0009:
            r1 = r9.moveToFirst();	 Catch:{ all -> 0x0039 }
            if (r1 == 0) goto L_0x0040;
        L_0x000f:
            r1 = 0;
            r1 = r9.getString(r1);	 Catch:{ all -> 0x0039 }
            r2 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x0039 }
            if (r2 != 0) goto L_0x0040;
        L_0x001a:
            r2 = r7.service;	 Catch:{ all -> 0x0039 }
            r1 = r2.get(r1);	 Catch:{ all -> 0x0039 }
            r2 = r7.service;	 Catch:{ all -> 0x0039 }
            r2 = r2.exists(r1);	 Catch:{ all -> 0x0039 }
            if (r2 == 0) goto L_0x0040;
        L_0x0028:
            r2 = r7.service;	 Catch:{ all -> 0x0039 }
            r2 = r2.length(r1);	 Catch:{ all -> 0x0039 }
            r4 = 0;
            r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1));
            if (r6 <= 0) goto L_0x0040;
        L_0x0034:
            r1 = android.net.Uri.fromFile(r1);	 Catch:{ all -> 0x0039 }
            goto L_0x0041;
        L_0x0039:
            r8 = move-exception;
            if (r9 == 0) goto L_0x003f;
        L_0x003c:
            r9.close();
        L_0x003f:
            throw r8;
        L_0x0040:
            r1 = r0;
        L_0x0041:
            if (r9 == 0) goto L_0x0046;
        L_0x0043:
            r9.close();
        L_0x0046:
            if (r1 == 0) goto L_0x0050;
        L_0x0048:
            r8 = r8.getContentResolver();
            r0 = r8.openInputStream(r1);
        L_0x0050:
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.MediaStoreThumbFetcher$ThumbnailStreamOpener.open(android.content.Context, android.net.Uri):java.io.InputStream");
        }
    }

    static class ThumbnailStreamOpenerFactory {
        ThumbnailStreamOpenerFactory() {
        }

        public ThumbnailStreamOpener build(Uri uri, int i, int i2) {
            if (!MediaStoreThumbFetcher.isMediaStoreUri(uri) || i > 512 || i2 > MediaStoreThumbFetcher.MINI_HEIGHT) {
                return null;
            }
            if (MediaStoreThumbFetcher.isMediaStoreVideo(uri)) {
                return new ThumbnailStreamOpener(new VideoThumbnailQuery());
            }
            return new ThumbnailStreamOpener(new ImageThumbnailQuery());
        }
    }

    static class ImageThumbnailQuery implements ThumbnailQuery {
        ImageThumbnailQuery() {
        }

        public Cursor query(Context context, Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            return context.getContentResolver().query(Thumbnails.EXTERNAL_CONTENT_URI, new String[]{"_data"}, "image_id = ? AND kind = ?", new String[]{lastPathSegment, String.valueOf(1)}, null);
        }
    }

    static class VideoThumbnailQuery implements ThumbnailQuery {
        VideoThumbnailQuery() {
        }

        public Cursor query(Context context, Uri uri) {
            String lastPathSegment = uri.getLastPathSegment();
            return context.getContentResolver().query(Video.Thumbnails.EXTERNAL_CONTENT_URI, new String[]{"_data"}, "video_id = ? AND kind = ?", new String[]{lastPathSegment, String.valueOf(1)}, null);
        }
    }

    public void cancel() {
    }

    public MediaStoreThumbFetcher(Context context, Uri uri, DataFetcher<InputStream> dataFetcher, int i, int i2) {
        this(context, uri, dataFetcher, i, i2, DEFAULT_FACTORY);
    }

    MediaStoreThumbFetcher(Context context, Uri uri, DataFetcher<InputStream> dataFetcher, int i, int i2, ThumbnailStreamOpenerFactory thumbnailStreamOpenerFactory) {
        this.context = context;
        this.mediaStoreUri = uri;
        this.defaultFetcher = dataFetcher;
        this.width = i;
        this.height = i2;
        this.factory = thumbnailStreamOpenerFactory;
    }

    public InputStream loadData(Priority priority) throws Exception {
        ThumbnailStreamOpener build = this.factory.build(this.mediaStoreUri, this.width, this.height);
        if (build != null) {
            this.inputStream = build.open(this.context, this.mediaStoreUri);
        }
        if (this.inputStream != null) {
            return this.inputStream;
        }
        return (InputStream) this.defaultFetcher.loadData(priority);
    }

    public void cleanup() {
        if (this.inputStream != null) {
            try {
                this.inputStream.close();
            } catch (IOException unused) {
            }
        }
        this.defaultFetcher.cleanup();
    }

    public String getId() {
        return this.mediaStoreUri.toString();
    }

    private static boolean isMediaStoreUri(Uri uri) {
        return uri != null && "content".equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    private static boolean isMediaStoreVideo(Uri uri) {
        return isMediaStoreUri(uri) && uri.getPathSegments().contains("video");
    }
}
