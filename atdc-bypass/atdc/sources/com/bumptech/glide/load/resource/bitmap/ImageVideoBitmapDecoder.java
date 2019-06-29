package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.model.ImageVideoWrapper;
import java.io.InputStream;

public class ImageVideoBitmapDecoder implements ResourceDecoder<ImageVideoWrapper, Bitmap> {
    private static final String TAG = "ImageVideoDecoder";
    private final ResourceDecoder<ParcelFileDescriptor, Bitmap> fileDescriptorDecoder;
    private final ResourceDecoder<InputStream, Bitmap> streamDecoder;

    public String getId() {
        return "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap";
    }

    public ImageVideoBitmapDecoder(ResourceDecoder<InputStream, Bitmap> resourceDecoder, ResourceDecoder<ParcelFileDescriptor, Bitmap> resourceDecoder2) {
        this.streamDecoder = resourceDecoder;
        this.fileDescriptorDecoder = resourceDecoder2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:? A:{SYNTHETIC, RETURN} */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0021  */
    public com.bumptech.glide.load.engine.Resource<android.graphics.Bitmap> decode(com.bumptech.glide.load.model.ImageVideoWrapper r4, int r5, int r6) throws java.io.IOException {
        /*
        r3 = this;
        r0 = r4.getStream();
        if (r0 == 0) goto L_0x001e;
    L_0x0006:
        r1 = r3.streamDecoder;	 Catch:{ IOException -> 0x000d }
        r0 = r1.decode(r0, r5, r6);	 Catch:{ IOException -> 0x000d }
        goto L_0x001f;
    L_0x000d:
        r0 = move-exception;
        r1 = "ImageVideoDecoder";
        r2 = 2;
        r1 = android.util.Log.isLoggable(r1, r2);
        if (r1 == 0) goto L_0x001e;
    L_0x0017:
        r1 = "ImageVideoDecoder";
        r2 = "Failed to load image from stream, trying FileDescriptor";
        android.util.Log.v(r1, r2, r0);
    L_0x001e:
        r0 = 0;
    L_0x001f:
        if (r0 != 0) goto L_0x002d;
    L_0x0021:
        r4 = r4.getFileDescriptor();
        if (r4 == 0) goto L_0x002d;
    L_0x0027:
        r0 = r3.fileDescriptorDecoder;
        r0 = r0.decode(r4, r5, r6);
    L_0x002d:
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.ImageVideoBitmapDecoder.decode(com.bumptech.glide.load.model.ImageVideoWrapper, int, int):com.bumptech.glide.load.engine.Resource");
    }
}
