package com.bumptech.glide.gifencoder;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class AnimatedGifEncoder {
    private static final double MIN_TRANSPARENT_PERCENTAGE = 4.0d;
    private static final String TAG = "AnimatedGifEncoder";
    private boolean closeStream = false;
    private int colorDepth;
    private byte[] colorTab;
    private int delay = 0;
    private int dispose = -1;
    private boolean firstFrame = true;
    private boolean hasTransparentPixels;
    private int height;
    private Bitmap image;
    private byte[] indexedPixels;
    private OutputStream out;
    private int palSize = 7;
    private byte[] pixels;
    private int repeat = -1;
    private int sample = 10;
    private boolean sizeSet = false;
    private boolean started = false;
    private int transIndex;
    private Integer transparent = null;
    private boolean[] usedEntry = new boolean[256];
    private int width;

    public void setDelay(int i) {
        this.delay = Math.round(((float) i) / 10.0f);
    }

    public void setDispose(int i) {
        if (i >= 0) {
            this.dispose = i;
        }
    }

    public void setRepeat(int i) {
        if (i >= 0) {
            this.repeat = i;
        }
    }

    public void setTransparent(int i) {
        this.transparent = Integer.valueOf(i);
    }

    public boolean addFrame(Bitmap bitmap) {
        boolean z = false;
        if (bitmap == null || !this.started) {
            return false;
        }
        try {
            if (!this.sizeSet) {
                setSize(bitmap.getWidth(), bitmap.getHeight());
            }
            this.image = bitmap;
            getImagePixels();
            analyzePixels();
            if (this.firstFrame) {
                writeLSD();
                writePalette();
                if (this.repeat >= 0) {
                    writeNetscapeExt();
                }
            }
            writeGraphicCtrlExt();
            writeImageDesc();
            if (!this.firstFrame) {
                writePalette();
            }
            writePixels();
            this.firstFrame = false;
            z = true;
        } catch (IOException unused) {
        }
        return z;
    }

    public boolean finish() {
        if (!this.started) {
            return false;
        }
        boolean z;
        this.started = false;
        try {
            this.out.write(59);
            this.out.flush();
            if (this.closeStream) {
                this.out.close();
            }
            z = true;
        } catch (IOException unused) {
            z = false;
        }
        this.transIndex = 0;
        this.out = null;
        this.image = null;
        this.pixels = null;
        this.indexedPixels = null;
        this.colorTab = null;
        this.closeStream = false;
        this.firstFrame = true;
        return z;
    }

    public void setFrameRate(float f) {
        if (f != 0.0f) {
            this.delay = Math.round(100.0f / f);
        }
    }

    public void setQuality(int i) {
        if (i < 1) {
            i = 1;
        }
        this.sample = i;
    }

    public void setSize(int i, int i2) {
        if (!this.started || this.firstFrame) {
            this.width = i;
            this.height = i2;
            if (this.width < 1) {
                this.width = 320;
            }
            if (this.height < 1) {
                this.height = 240;
            }
            this.sizeSet = true;
        }
    }

    public boolean start(OutputStream outputStream) {
        boolean z = false;
        if (outputStream == null) {
            return false;
        }
        this.closeStream = false;
        this.out = outputStream;
        try {
            writeString("GIF89a");
            z = true;
        } catch (IOException unused) {
        }
        this.started = z;
        return z;
    }

    public boolean start(String str) {
        boolean start;
        try {
            this.out = new BufferedOutputStream(new FileOutputStream(str));
            start = start(this.out);
            this.closeStream = true;
        } catch (IOException unused) {
            start = false;
        }
        this.started = start;
        return start;
    }

    private void analyzePixels() {
        int i;
        int i2;
        int length = this.pixels.length;
        int i3 = length / 3;
        this.indexedPixels = new byte[i3];
        NeuQuant neuQuant = new NeuQuant(this.pixels, length, this.sample);
        this.colorTab = neuQuant.process();
        for (i = 0; i < this.colorTab.length; i += 3) {
            byte b = this.colorTab[i];
            i2 = i + 2;
            this.colorTab[i] = this.colorTab[i2];
            this.colorTab[i2] = b;
            this.usedEntry[i / 3] = false;
        }
        i = 0;
        int i4 = 0;
        while (i < i3) {
            int i5 = i4 + 1;
            i2 = i5 + 1;
            int i6 = i2 + 1;
            i4 = neuQuant.map(this.pixels[i4] & 255, this.pixels[i5] & 255, this.pixels[i2] & 255);
            this.usedEntry[i4] = true;
            this.indexedPixels[i] = (byte) i4;
            i++;
            i4 = i6;
        }
        this.pixels = null;
        this.colorDepth = 8;
        this.palSize = 7;
        if (this.transparent != null) {
            this.transIndex = findClosest(this.transparent.intValue());
        } else if (this.hasTransparentPixels) {
            this.transIndex = findClosest(0);
        }
    }

    private int findClosest(int i) {
        if (this.colorTab == null) {
            return -1;
        }
        int red = Color.red(i);
        int green = Color.green(i);
        i = Color.blue(i);
        int length = this.colorTab.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 16777216;
        while (i2 < length) {
            int i5 = i2 + 1;
            i2 = red - (this.colorTab[i2] & 255);
            int i6 = i5 + 1;
            int i7 = green - (this.colorTab[i5] & 255);
            i5 = i - (this.colorTab[i6] & 255);
            i2 = ((i2 * i2) + (i7 * i7)) + (i5 * i5);
            i7 = i6 / 3;
            if (this.usedEntry[i7] && i2 < i4) {
                i4 = i2;
                i3 = i7;
            }
            i2 = i6 + 1;
        }
        return i3;
    }

    private void getImagePixels() {
        int width = this.image.getWidth();
        int height = this.image.getHeight();
        if (!(width == this.width && height == this.height)) {
            Bitmap createBitmap = Bitmap.createBitmap(this.width, this.height, Config.ARGB_8888);
            new Canvas(createBitmap).drawBitmap(createBitmap, 0.0f, 0.0f, null);
            this.image = createBitmap;
        }
        int[] iArr = new int[(width * height)];
        this.image.getPixels(iArr, 0, width, 0, 0, width, height);
        this.pixels = new byte[(iArr.length * 3)];
        boolean z = false;
        this.hasTransparentPixels = false;
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            width = iArr[i];
            if (width == 0) {
                i2++;
            }
            int i4 = i3 + 1;
            this.pixels[i3] = (byte) (width & 255);
            height = i4 + 1;
            this.pixels[i4] = (byte) ((width >> 8) & 255);
            i4 = height + 1;
            this.pixels[height] = (byte) ((width >> 16) & 255);
            i++;
            i3 = i4;
        }
        double length2 = ((double) (i2 * 100)) / ((double) iArr.length);
        if (length2 > MIN_TRANSPARENT_PERCENTAGE) {
            z = true;
        }
        this.hasTransparentPixels = z;
        if (Log.isLoggable(TAG, 3)) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("got pixels for frame with ");
            stringBuilder.append(length2);
            stringBuilder.append("% transparent pixels");
            Log.d(str, stringBuilder.toString());
        }
    }

    private void writeGraphicCtrlExt() throws IOException {
        int i;
        int i2;
        this.out.write(33);
        this.out.write(249);
        this.out.write(4);
        if (this.transparent != null || this.hasTransparentPixels) {
            i = 2;
            i2 = 1;
        } else {
            i = 0;
            i2 = 0;
        }
        if (this.dispose >= 0) {
            i = this.dispose & 7;
        }
        this.out.write((((i << 2) | 0) | 0) | i2);
        writeShort(this.delay);
        this.out.write(this.transIndex);
        this.out.write(0);
    }

    private void writeImageDesc() throws IOException {
        this.out.write(44);
        writeShort(0);
        writeShort(0);
        writeShort(this.width);
        writeShort(this.height);
        if (this.firstFrame) {
            this.out.write(0);
        } else {
            this.out.write(this.palSize | 128);
        }
    }

    private void writeLSD() throws IOException {
        writeShort(this.width);
        writeShort(this.height);
        this.out.write(this.palSize | 240);
        this.out.write(0);
        this.out.write(0);
    }

    private void writeNetscapeExt() throws IOException {
        this.out.write(33);
        this.out.write(255);
        this.out.write(11);
        writeString("NETSCAPE2.0");
        this.out.write(3);
        this.out.write(1);
        writeShort(this.repeat);
        this.out.write(0);
    }

    private void writePalette() throws IOException {
        this.out.write(this.colorTab, 0, this.colorTab.length);
        int length = 768 - this.colorTab.length;
        for (int i = 0; i < length; i++) {
            this.out.write(0);
        }
    }

    private void writePixels() throws IOException {
        new LZWEncoder(this.width, this.height, this.indexedPixels, this.colorDepth).encode(this.out);
    }

    private void writeShort(int i) throws IOException {
        this.out.write(i & 255);
        this.out.write((i >> 8) & 255);
    }

    private void writeString(String str) throws IOException {
        for (int i = 0; i < str.length(); i++) {
            this.out.write((byte) str.charAt(i));
        }
    }
}
