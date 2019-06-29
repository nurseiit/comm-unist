package com.bumptech.glide.gifdecoder;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

public class GifDecoder {
    private static final Config BITMAP_CONFIG = Config.ARGB_8888;
    private static final int DISPOSAL_BACKGROUND = 2;
    private static final int DISPOSAL_NONE = 1;
    private static final int DISPOSAL_PREVIOUS = 3;
    private static final int DISPOSAL_UNSPECIFIED = 0;
    private static final int INITIAL_FRAME_POINTER = -1;
    private static final int MAX_STACK_SIZE = 4096;
    private static final int NULL_CODE = -1;
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    public static final int STATUS_PARTIAL_DECODE = 3;
    private static final String TAG = "GifDecoder";
    private int[] act;
    private BitmapProvider bitmapProvider;
    private final byte[] block = new byte[256];
    private byte[] data;
    private int framePointer;
    private GifHeader header;
    private byte[] mainPixels;
    private int[] mainScratch;
    private GifHeaderParser parser;
    private byte[] pixelStack;
    private short[] prefix;
    private Bitmap previousImage;
    private ByteBuffer rawData;
    private boolean savePrevious;
    private int status;
    private byte[] suffix;

    public interface BitmapProvider {
        Bitmap obtain(int i, int i2, Config config);

        void release(Bitmap bitmap);
    }

    public GifDecoder(BitmapProvider bitmapProvider) {
        this.bitmapProvider = bitmapProvider;
        this.header = new GifHeader();
    }

    public int getWidth() {
        return this.header.width;
    }

    public int getHeight() {
        return this.header.height;
    }

    public byte[] getData() {
        return this.data;
    }

    public int getStatus() {
        return this.status;
    }

    public void advance() {
        this.framePointer = (this.framePointer + 1) % this.header.frameCount;
    }

    public int getDelay(int i) {
        return (i < 0 || i >= this.header.frameCount) ? -1 : ((GifFrame) this.header.frames.get(i)).delay;
    }

    public int getNextDelay() {
        return (this.header.frameCount <= 0 || this.framePointer < 0) ? -1 : getDelay(this.framePointer);
    }

    public int getFrameCount() {
        return this.header.frameCount;
    }

    public int getCurrentFrameIndex() {
        return this.framePointer;
    }

    public void resetFrameIndex() {
        this.framePointer = -1;
    }

    public int getLoopCount() {
        return this.header.loopCount;
    }

    /* JADX WARNING: Missing block: B:41:0x00b9, code skipped:
            return r1;
     */
    /* JADX WARNING: Missing block: B:47:0x00db, code skipped:
            return null;
     */
    public synchronized android.graphics.Bitmap getNextFrame() {
        /*
        r9 = this;
        monitor-enter(r9);
        r0 = r9.header;	 Catch:{ all -> 0x00dc }
        r0 = r0.frameCount;	 Catch:{ all -> 0x00dc }
        r1 = 3;
        r2 = 1;
        if (r0 <= 0) goto L_0x000d;
    L_0x0009:
        r0 = r9.framePointer;	 Catch:{ all -> 0x00dc }
        if (r0 >= 0) goto L_0x003b;
    L_0x000d:
        r0 = TAG;	 Catch:{ all -> 0x00dc }
        r0 = android.util.Log.isLoggable(r0, r1);	 Catch:{ all -> 0x00dc }
        if (r0 == 0) goto L_0x0039;
    L_0x0015:
        r0 = TAG;	 Catch:{ all -> 0x00dc }
        r3 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00dc }
        r3.<init>();	 Catch:{ all -> 0x00dc }
        r4 = "unable to decode frame, frameCount=";
        r3.append(r4);	 Catch:{ all -> 0x00dc }
        r4 = r9.header;	 Catch:{ all -> 0x00dc }
        r4 = r4.frameCount;	 Catch:{ all -> 0x00dc }
        r3.append(r4);	 Catch:{ all -> 0x00dc }
        r4 = " framePointer=";
        r3.append(r4);	 Catch:{ all -> 0x00dc }
        r4 = r9.framePointer;	 Catch:{ all -> 0x00dc }
        r3.append(r4);	 Catch:{ all -> 0x00dc }
        r3 = r3.toString();	 Catch:{ all -> 0x00dc }
        android.util.Log.d(r0, r3);	 Catch:{ all -> 0x00dc }
    L_0x0039:
        r9.status = r2;	 Catch:{ all -> 0x00dc }
    L_0x003b:
        r0 = r9.status;	 Catch:{ all -> 0x00dc }
        r3 = 0;
        if (r0 == r2) goto L_0x00ba;
    L_0x0040:
        r0 = r9.status;	 Catch:{ all -> 0x00dc }
        r4 = 2;
        if (r0 != r4) goto L_0x0047;
    L_0x0045:
        goto L_0x00ba;
    L_0x0047:
        r0 = 0;
        r9.status = r0;	 Catch:{ all -> 0x00dc }
        r4 = r9.header;	 Catch:{ all -> 0x00dc }
        r4 = r4.frames;	 Catch:{ all -> 0x00dc }
        r5 = r9.framePointer;	 Catch:{ all -> 0x00dc }
        r4 = r4.get(r5);	 Catch:{ all -> 0x00dc }
        r4 = (com.bumptech.glide.gifdecoder.GifFrame) r4;	 Catch:{ all -> 0x00dc }
        r5 = r9.framePointer;	 Catch:{ all -> 0x00dc }
        r5 = r5 - r2;
        if (r5 < 0) goto L_0x0066;
    L_0x005b:
        r6 = r9.header;	 Catch:{ all -> 0x00dc }
        r6 = r6.frames;	 Catch:{ all -> 0x00dc }
        r5 = r6.get(r5);	 Catch:{ all -> 0x00dc }
        r5 = (com.bumptech.glide.gifdecoder.GifFrame) r5;	 Catch:{ all -> 0x00dc }
        goto L_0x0067;
    L_0x0066:
        r5 = r3;
    L_0x0067:
        r6 = r4.lct;	 Catch:{ all -> 0x00dc }
        if (r6 != 0) goto L_0x0072;
    L_0x006b:
        r6 = r9.header;	 Catch:{ all -> 0x00dc }
        r6 = r6.gct;	 Catch:{ all -> 0x00dc }
        r9.act = r6;	 Catch:{ all -> 0x00dc }
        goto L_0x0082;
    L_0x0072:
        r6 = r4.lct;	 Catch:{ all -> 0x00dc }
        r9.act = r6;	 Catch:{ all -> 0x00dc }
        r6 = r9.header;	 Catch:{ all -> 0x00dc }
        r6 = r6.bgIndex;	 Catch:{ all -> 0x00dc }
        r7 = r4.transIndex;	 Catch:{ all -> 0x00dc }
        if (r6 != r7) goto L_0x0082;
    L_0x007e:
        r6 = r9.header;	 Catch:{ all -> 0x00dc }
        r6.bgColor = r0;	 Catch:{ all -> 0x00dc }
    L_0x0082:
        r6 = r4.transparency;	 Catch:{ all -> 0x00dc }
        if (r6 == 0) goto L_0x0093;
    L_0x0086:
        r6 = r9.act;	 Catch:{ all -> 0x00dc }
        r7 = r4.transIndex;	 Catch:{ all -> 0x00dc }
        r6 = r6[r7];	 Catch:{ all -> 0x00dc }
        r7 = r9.act;	 Catch:{ all -> 0x00dc }
        r8 = r4.transIndex;	 Catch:{ all -> 0x00dc }
        r7[r8] = r0;	 Catch:{ all -> 0x00dc }
        r0 = r6;
    L_0x0093:
        r6 = r9.act;	 Catch:{ all -> 0x00dc }
        if (r6 != 0) goto L_0x00aa;
    L_0x0097:
        r0 = TAG;	 Catch:{ all -> 0x00dc }
        r0 = android.util.Log.isLoggable(r0, r1);	 Catch:{ all -> 0x00dc }
        if (r0 == 0) goto L_0x00a6;
    L_0x009f:
        r0 = TAG;	 Catch:{ all -> 0x00dc }
        r1 = "No Valid Color Table";
        android.util.Log.d(r0, r1);	 Catch:{ all -> 0x00dc }
    L_0x00a6:
        r9.status = r2;	 Catch:{ all -> 0x00dc }
        monitor-exit(r9);
        return r3;
    L_0x00aa:
        r1 = r9.setPixels(r4, r5);	 Catch:{ all -> 0x00dc }
        r2 = r4.transparency;	 Catch:{ all -> 0x00dc }
        if (r2 == 0) goto L_0x00b8;
    L_0x00b2:
        r2 = r9.act;	 Catch:{ all -> 0x00dc }
        r3 = r4.transIndex;	 Catch:{ all -> 0x00dc }
        r2[r3] = r0;	 Catch:{ all -> 0x00dc }
    L_0x00b8:
        monitor-exit(r9);
        return r1;
    L_0x00ba:
        r0 = TAG;	 Catch:{ all -> 0x00dc }
        r0 = android.util.Log.isLoggable(r0, r1);	 Catch:{ all -> 0x00dc }
        if (r0 == 0) goto L_0x00da;
    L_0x00c2:
        r0 = TAG;	 Catch:{ all -> 0x00dc }
        r1 = new java.lang.StringBuilder;	 Catch:{ all -> 0x00dc }
        r1.<init>();	 Catch:{ all -> 0x00dc }
        r2 = "Unable to decode frame, status=";
        r1.append(r2);	 Catch:{ all -> 0x00dc }
        r2 = r9.status;	 Catch:{ all -> 0x00dc }
        r1.append(r2);	 Catch:{ all -> 0x00dc }
        r1 = r1.toString();	 Catch:{ all -> 0x00dc }
        android.util.Log.d(r0, r1);	 Catch:{ all -> 0x00dc }
    L_0x00da:
        monitor-exit(r9);
        return r3;
    L_0x00dc:
        r0 = move-exception;
        monitor-exit(r9);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.GifDecoder.getNextFrame():android.graphics.Bitmap");
    }

    public int read(InputStream inputStream, int i) {
        if (inputStream != null) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i > 0 ? i + 4096 : 16384);
                byte[] bArr = new byte[16384];
                while (true) {
                    int read = inputStream.read(bArr, 0, bArr.length);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                byteArrayOutputStream.flush();
                read(byteArrayOutputStream.toByteArray());
            } catch (IOException e) {
                Log.w(TAG, "Error reading data from stream", e);
            }
        } else {
            this.status = 2;
        }
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
                Log.w(TAG, "Error closing stream", e2);
            }
        }
        return this.status;
    }

    public void clear() {
        this.header = null;
        this.data = null;
        this.mainPixels = null;
        this.mainScratch = null;
        if (this.previousImage != null) {
            this.bitmapProvider.release(this.previousImage);
        }
        this.previousImage = null;
    }

    public void setData(GifHeader gifHeader, byte[] bArr) {
        this.header = gifHeader;
        this.data = bArr;
        this.status = 0;
        this.framePointer = -1;
        this.rawData = ByteBuffer.wrap(bArr);
        this.rawData.rewind();
        this.rawData.order(ByteOrder.LITTLE_ENDIAN);
        this.savePrevious = false;
        for (GifFrame gifFrame : gifHeader.frames) {
            if (gifFrame.dispose == 3) {
                this.savePrevious = true;
                break;
            }
        }
        this.mainPixels = new byte[(gifHeader.width * gifHeader.height)];
        this.mainScratch = new int[(gifHeader.width * gifHeader.height)];
    }

    private GifHeaderParser getHeaderParser() {
        if (this.parser == null) {
            this.parser = new GifHeaderParser();
        }
        return this.parser;
    }

    public int read(byte[] bArr) {
        this.data = bArr;
        this.header = getHeaderParser().setData(bArr).parseHeader();
        if (bArr != null) {
            this.rawData = ByteBuffer.wrap(bArr);
            this.rawData.rewind();
            this.rawData.order(ByteOrder.LITTLE_ENDIAN);
            this.mainPixels = new byte[(this.header.width * this.header.height)];
            this.mainScratch = new int[(this.header.width * this.header.height)];
            this.savePrevious = false;
            for (GifFrame gifFrame : this.header.frames) {
                if (gifFrame.dispose == 3) {
                    this.savePrevious = true;
                    break;
                }
            }
        }
        return this.status;
    }

    private Bitmap setPixels(GifFrame gifFrame, GifFrame gifFrame2) {
        int i = this.header.width;
        int i2 = this.header.height;
        int[] iArr = this.mainScratch;
        int i3 = 0;
        if (gifFrame2 != null && gifFrame2.dispose > 0) {
            if (gifFrame2.dispose == 2) {
                Arrays.fill(iArr, !gifFrame.transparency ? this.header.bgColor : 0);
            } else if (gifFrame2.dispose == 3 && this.previousImage != null) {
                this.previousImage.getPixels(iArr, 0, i, 0, 0, i, i2);
            }
        }
        decodeBitmapData(gifFrame);
        int i4 = 0;
        int i5 = 1;
        int i6 = 8;
        while (i3 < gifFrame.ih) {
            int i7;
            if (gifFrame.interlace) {
                if (i4 >= gifFrame.ih) {
                    i5++;
                    switch (i5) {
                        case 2:
                            i4 = 4;
                            break;
                        case 3:
                            i4 = 2;
                            i6 = 4;
                            break;
                        case 4:
                            i4 = 1;
                            i6 = 2;
                            break;
                    }
                }
                i7 = i4 + i6;
            } else {
                i7 = i4;
                i4 = i3;
            }
            i4 += gifFrame.iy;
            if (i4 < this.header.height) {
                i4 *= this.header.width;
                int i8 = gifFrame.ix + i4;
                int i9 = gifFrame.iw + i8;
                if (this.header.width + i4 < i9) {
                    i9 = this.header.width + i4;
                }
                i4 = gifFrame.iw * i3;
                while (i8 < i9) {
                    int i10 = i4 + 1;
                    i4 = this.act[this.mainPixels[i4] & 255];
                    if (i4 != 0) {
                        iArr[i8] = i4;
                    }
                    i8++;
                    i4 = i10;
                }
            }
            i3++;
            i4 = i7;
        }
        if (this.savePrevious && (gifFrame.dispose == 0 || gifFrame.dispose == 1)) {
            if (this.previousImage == null) {
                this.previousImage = getNextBitmap();
            }
            this.previousImage.setPixels(iArr, 0, i, 0, 0, i, i2);
        }
        Bitmap nextBitmap = getNextBitmap();
        nextBitmap.setPixels(iArr, 0, i, 0, 0, i, i2);
        return nextBitmap;
    }

    private void decodeBitmapData(GifFrame gifFrame) {
        int i;
        int i2;
        GifFrame gifFrame2 = gifFrame;
        if (gifFrame2 != null) {
            this.rawData.position(gifFrame2.bufferFrameStart);
        }
        if (gifFrame2 == null) {
            i = this.header.width * this.header.height;
        } else {
            i = gifFrame2.ih * gifFrame2.iw;
        }
        if (this.mainPixels == null || this.mainPixels.length < i) {
            this.mainPixels = new byte[i];
        }
        if (this.prefix == null) {
            this.prefix = new short[4096];
        }
        if (this.suffix == null) {
            this.suffix = new byte[4096];
        }
        if (this.pixelStack == null) {
            this.pixelStack = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        int read = read();
        int i3 = 1;
        int i4 = 1 << read;
        int i5 = i4 + 1;
        int i6 = i4 + 2;
        read++;
        int i7 = (1 << read) - 1;
        for (i2 = 0; i2 < i4; i2++) {
            this.prefix[i2] = (short) 0;
            this.suffix[i2] = (byte) i2;
        }
        i2 = -1;
        int i8 = read;
        int i9 = i6;
        int i10 = i7;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = -1;
        while (i11 < i) {
            int i20;
            int i21 = 3;
            if (i12 == 0) {
                i12 = readBlock();
                if (i12 <= 0) {
                    this.status = 3;
                    break;
                }
                i15 = 0;
            }
            i14 += (this.block[i15] & 255) << i16;
            i15 += i3;
            i12 += i2;
            int i22 = i16 + 8;
            int i23 = i17;
            i3 = i19;
            i16 = i11;
            i17 = i13;
            i13 = i9;
            i11 = i8;
            while (i22 >= i11) {
                i2 = i14 & i10;
                i14 >>= i11;
                i22 -= i11;
                if (i2 != i4) {
                    if (i2 > i13) {
                        this.status = i21;
                    } else if (i2 != i5) {
                        if (i3 == -1) {
                            i9 = i18 + 1;
                            this.pixelStack[i18] = this.suffix[i2];
                            i3 = i2;
                            i23 = i3;
                            i18 = i9;
                        } else {
                            int i24;
                            int i25;
                            if (i2 >= i13) {
                                i9 = i18 + 1;
                                i24 = read;
                                this.pixelStack[i18] = (byte) i23;
                                read = i3;
                                i18 = i9;
                            } else {
                                i24 = read;
                                read = i2;
                            }
                            while (read >= i4) {
                                i9 = i18 + 1;
                                i25 = i22;
                                this.pixelStack[i18] = this.suffix[read];
                                read = this.prefix[read];
                                i18 = i9;
                                i22 = i25;
                            }
                            i25 = i22;
                            read = this.suffix[read] & 255;
                            i21 = i18 + 1;
                            i20 = i4;
                            byte b = (byte) read;
                            this.pixelStack[i18] = b;
                            if (i13 < 4096) {
                                this.prefix[i13] = (short) i3;
                                this.suffix[i13] = b;
                                i13++;
                                if ((i13 & i10) == 0) {
                                    if (i13 < 4096) {
                                        i11++;
                                        i10 += i13;
                                    }
                                }
                            }
                            i18 = i21;
                            while (i18 > 0) {
                                i18--;
                                i4 = i17 + 1;
                                this.mainPixels[i17] = this.pixelStack[i18];
                                i16++;
                                i17 = i4;
                            }
                            i23 = read;
                            i3 = i2;
                            read = i24;
                            i22 = i25;
                            i4 = i20;
                        }
                        i21 = 3;
                    }
                    i19 = i3;
                    i8 = i11;
                    i9 = i13;
                    i11 = i16;
                    i13 = i17;
                    i17 = i23;
                    i3 = 1;
                    i2 = -1;
                    i16 = i22;
                    break;
                }
                i11 = read;
                i13 = i6;
                i10 = i7;
                i3 = -1;
                i2 = -1;
            }
            i20 = i4;
            i19 = i3;
            i8 = i11;
            i9 = i13;
            i11 = i16;
            i13 = i17;
            i3 = 1;
            i17 = i23;
            i16 = i22;
            read = read;
        }
        while (i13 < i) {
            this.mainPixels[i13] = (byte) 0;
            i13++;
        }
    }

    private int read() {
        try {
            return this.rawData.get() & 255;
        } catch (Exception unused) {
            this.status = 1;
            return 0;
        }
    }

    private int readBlock() {
        int read = read();
        int i = 0;
        if (read > 0) {
            while (i < read) {
                int i2 = read - i;
                try {
                    this.rawData.get(this.block, i, i2);
                    i += i2;
                } catch (Exception e) {
                    Log.w(TAG, "Error Reading Block", e);
                    this.status = 1;
                }
            }
        }
        return i;
    }

    private Bitmap getNextBitmap() {
        Bitmap obtain = this.bitmapProvider.obtain(this.header.width, this.header.height, BITMAP_CONFIG);
        if (obtain == null) {
            obtain = Bitmap.createBitmap(this.header.width, this.header.height, BITMAP_CONFIG);
        }
        setAlpha(obtain);
        return obtain;
    }

    @TargetApi(12)
    private static void setAlpha(Bitmap bitmap) {
        if (VERSION.SDK_INT >= 12) {
            bitmap.setHasAlpha(true);
        }
    }
}
