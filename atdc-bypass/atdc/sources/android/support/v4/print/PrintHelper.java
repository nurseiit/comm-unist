package android.support.v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.CancellationSignal.OnCancelListener;
import android.os.ParcelFileDescriptor;
import android.print.PageRange;
import android.print.PrintAttributes;
import android.print.PrintAttributes.Builder;
import android.print.PrintAttributes.Margins;
import android.print.PrintAttributes.MediaSize;
import android.print.PrintDocumentAdapter;
import android.print.PrintDocumentAdapter.LayoutResultCallback;
import android.print.PrintDocumentAdapter.WriteResultCallback;
import android.print.PrintDocumentInfo;
import android.print.PrintManager;
import android.support.annotation.RequiresApi;
import android.util.Log;
import java.io.FileNotFoundException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class PrintHelper {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    private final PrintHelperVersionImpl mImpl;

    @Retention(RetentionPolicy.SOURCE)
    private @interface ColorMode {
    }

    public interface OnPrintFinishCallback {
        void onFinish();
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface Orientation {
    }

    interface PrintHelperVersionImpl {
        int getColorMode();

        int getOrientation();

        int getScaleMode();

        void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback);

        void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException;

        void setColorMode(int i);

        void setOrientation(int i);

        void setScaleMode(int i);
    }

    @Retention(RetentionPolicy.SOURCE)
    private @interface ScaleMode {
    }

    @RequiresApi(19)
    private static class PrintHelperApi19 implements PrintHelperVersionImpl {
        private static final String LOG_TAG = "PrintHelperApi19";
        private static final int MAX_PRINT_SIZE = 3500;
        int mColorMode = 2;
        final Context mContext;
        Options mDecodeOptions = null;
        protected boolean mIsMinMarginsHandlingCorrect = true;
        private final Object mLock = new Object();
        int mOrientation;
        protected boolean mPrintActivityRespectsOrientation = true;
        int mScaleMode = 2;

        PrintHelperApi19(Context context) {
            this.mContext = context;
        }

        public void setScaleMode(int i) {
            this.mScaleMode = i;
        }

        public int getScaleMode() {
            return this.mScaleMode;
        }

        public void setColorMode(int i) {
            this.mColorMode = i;
        }

        public void setOrientation(int i) {
            this.mOrientation = i;
        }

        public int getOrientation() {
            if (this.mOrientation == 0) {
                return 1;
            }
            return this.mOrientation;
        }

        public int getColorMode() {
            return this.mColorMode;
        }

        private static boolean isPortrait(Bitmap bitmap) {
            return bitmap.getWidth() <= bitmap.getHeight();
        }

        /* Access modifiers changed, original: protected */
        public Builder copyAttributes(PrintAttributes printAttributes) {
            Builder minMargins = new Builder().setMediaSize(printAttributes.getMediaSize()).setResolution(printAttributes.getResolution()).setMinMargins(printAttributes.getMinMargins());
            if (printAttributes.getColorMode() != 0) {
                minMargins.setColorMode(printAttributes.getColorMode());
            }
            return minMargins;
        }

        public void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
            if (bitmap != null) {
                MediaSize mediaSize;
                final int i = this.mScaleMode;
                PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
                if (isPortrait(bitmap)) {
                    mediaSize = MediaSize.UNKNOWN_PORTRAIT;
                } else {
                    mediaSize = MediaSize.UNKNOWN_LANDSCAPE;
                }
                final String str2 = str;
                final Bitmap bitmap2 = bitmap;
                final OnPrintFinishCallback onPrintFinishCallback2 = onPrintFinishCallback;
                printManager.print(str, new PrintDocumentAdapter() {
                    private PrintAttributes mAttributes;

                    public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
                        this.mAttributes = printAttributes2;
                        layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(str2).setContentType(1).setPageCount(1).build(), printAttributes2.equals(printAttributes) ^ 1);
                    }

                    public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
                        PrintHelperApi19.this.writeBitmap(this.mAttributes, i, bitmap2, parcelFileDescriptor, cancellationSignal, writeResultCallback);
                    }

                    public void onFinish() {
                        if (onPrintFinishCallback2 != null) {
                            onPrintFinishCallback2.onFinish();
                        }
                    }
                }, new Builder().setMediaSize(mediaSize).setColorMode(this.mColorMode).build());
            }
        }

        private Matrix getMatrix(int i, int i2, RectF rectF, int i3) {
            float max;
            Matrix matrix = new Matrix();
            float f = (float) i;
            float width = rectF.width() / f;
            if (i3 == 2) {
                max = Math.max(width, rectF.height() / ((float) i2));
            } else {
                max = Math.min(width, rectF.height() / ((float) i2));
            }
            matrix.postScale(max, max);
            matrix.postTranslate((rectF.width() - (f * max)) / 2.0f, (rectF.height() - (((float) i2) * max)) / 2.0f);
            return matrix;
        }

        private void writeBitmap(PrintAttributes printAttributes, int i, Bitmap bitmap, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
            PrintAttributes printAttributes2;
            if (this.mIsMinMarginsHandlingCorrect) {
                printAttributes2 = printAttributes;
            } else {
                printAttributes2 = copyAttributes(printAttributes).setMinMargins(new Margins(0, 0, 0, 0)).build();
            }
            final CancellationSignal cancellationSignal2 = cancellationSignal;
            final Bitmap bitmap2 = bitmap;
            final PrintAttributes printAttributes3 = printAttributes;
            final int i2 = i;
            final ParcelFileDescriptor parcelFileDescriptor2 = parcelFileDescriptor;
            final WriteResultCallback writeResultCallback2 = writeResultCallback;
            new AsyncTask<Void, Void, Throwable>() {
                /* Access modifiers changed, original: protected|varargs */
                /* JADX WARNING: Removed duplicated region for block: B:27:0x00af A:{Catch:{ all -> 0x00d5, Throwable -> 0x00ea }} */
                /* JADX WARNING: Missing exception handler attribute for start block: B:24:0x00ab */
                /* JADX WARNING: Removed duplicated region for block: B:49:0x00e6 A:{Catch:{ all -> 0x00d5, Throwable -> 0x00ea }} */
                /* JADX WARNING: Missing exception handler attribute for start block: B:46:0x00e2 */
                /* JADX WARNING: Removed duplicated region for block: B:39:0x00d1 A:{Catch:{ all -> 0x00d5, Throwable -> 0x00ea }} */
                /* JADX WARNING: Missing exception handler attribute for start block: B:36:0x00cd */
                /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
                /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
                /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
                public java.lang.Throwable doInBackground(java.lang.Void... r9) {
                    /*
                    r8 = this;
                    r9 = r2;	 Catch:{ Throwable -> 0x00ea }
                    r9 = r9.isCanceled();	 Catch:{ Throwable -> 0x00ea }
                    r0 = 0;
                    if (r9 == 0) goto L_0x000a;
                L_0x0009:
                    return r0;
                L_0x000a:
                    r9 = new android.print.pdf.PrintedPdfDocument;	 Catch:{ Throwable -> 0x00ea }
                    r1 = android.support.v4.print.PrintHelper.PrintHelperApi19.this;	 Catch:{ Throwable -> 0x00ea }
                    r1 = r1.mContext;	 Catch:{ Throwable -> 0x00ea }
                    r2 = r3;	 Catch:{ Throwable -> 0x00ea }
                    r9.<init>(r1, r2);	 Catch:{ Throwable -> 0x00ea }
                    r1 = android.support.v4.print.PrintHelper.PrintHelperApi19.this;	 Catch:{ Throwable -> 0x00ea }
                    r2 = r4;	 Catch:{ Throwable -> 0x00ea }
                    r3 = r3;	 Catch:{ Throwable -> 0x00ea }
                    r3 = r3.getColorMode();	 Catch:{ Throwable -> 0x00ea }
                    r1 = r1.convertBitmapForColorMode(r2, r3);	 Catch:{ Throwable -> 0x00ea }
                    r2 = r2;	 Catch:{ Throwable -> 0x00ea }
                    r2 = r2.isCanceled();	 Catch:{ Throwable -> 0x00ea }
                    if (r2 == 0) goto L_0x002c;
                L_0x002b:
                    return r0;
                L_0x002c:
                    r2 = 1;
                    r3 = r9.startPage(r2);	 Catch:{ all -> 0x00d5 }
                    r4 = android.support.v4.print.PrintHelper.PrintHelperApi19.this;	 Catch:{ all -> 0x00d5 }
                    r4 = r4.mIsMinMarginsHandlingCorrect;	 Catch:{ all -> 0x00d5 }
                    if (r4 == 0) goto L_0x0045;
                L_0x0037:
                    r2 = new android.graphics.RectF;	 Catch:{ all -> 0x00d5 }
                    r4 = r3.getInfo();	 Catch:{ all -> 0x00d5 }
                    r4 = r4.getContentRect();	 Catch:{ all -> 0x00d5 }
                    r2.<init>(r4);	 Catch:{ all -> 0x00d5 }
                    goto L_0x0068;
                L_0x0045:
                    r4 = new android.print.pdf.PrintedPdfDocument;	 Catch:{ all -> 0x00d5 }
                    r5 = android.support.v4.print.PrintHelper.PrintHelperApi19.this;	 Catch:{ all -> 0x00d5 }
                    r5 = r5.mContext;	 Catch:{ all -> 0x00d5 }
                    r6 = r5;	 Catch:{ all -> 0x00d5 }
                    r4.<init>(r5, r6);	 Catch:{ all -> 0x00d5 }
                    r2 = r4.startPage(r2);	 Catch:{ all -> 0x00d5 }
                    r5 = new android.graphics.RectF;	 Catch:{ all -> 0x00d5 }
                    r6 = r2.getInfo();	 Catch:{ all -> 0x00d5 }
                    r6 = r6.getContentRect();	 Catch:{ all -> 0x00d5 }
                    r5.<init>(r6);	 Catch:{ all -> 0x00d5 }
                    r4.finishPage(r2);	 Catch:{ all -> 0x00d5 }
                    r4.close();	 Catch:{ all -> 0x00d5 }
                    r2 = r5;
                L_0x0068:
                    r4 = android.support.v4.print.PrintHelper.PrintHelperApi19.this;	 Catch:{ all -> 0x00d5 }
                    r5 = r1.getWidth();	 Catch:{ all -> 0x00d5 }
                    r6 = r1.getHeight();	 Catch:{ all -> 0x00d5 }
                    r7 = r6;	 Catch:{ all -> 0x00d5 }
                    r4 = r4.getMatrix(r5, r6, r2, r7);	 Catch:{ all -> 0x00d5 }
                    r5 = android.support.v4.print.PrintHelper.PrintHelperApi19.this;	 Catch:{ all -> 0x00d5 }
                    r5 = r5.mIsMinMarginsHandlingCorrect;	 Catch:{ all -> 0x00d5 }
                    if (r5 == 0) goto L_0x007f;
                L_0x007e:
                    goto L_0x008d;
                L_0x007f:
                    r5 = r2.left;	 Catch:{ all -> 0x00d5 }
                    r6 = r2.top;	 Catch:{ all -> 0x00d5 }
                    r4.postTranslate(r5, r6);	 Catch:{ all -> 0x00d5 }
                    r5 = r3.getCanvas();	 Catch:{ all -> 0x00d5 }
                    r5.clipRect(r2);	 Catch:{ all -> 0x00d5 }
                L_0x008d:
                    r2 = r3.getCanvas();	 Catch:{ all -> 0x00d5 }
                    r2.drawBitmap(r1, r4, r0);	 Catch:{ all -> 0x00d5 }
                    r9.finishPage(r3);	 Catch:{ all -> 0x00d5 }
                    r2 = r2;	 Catch:{ all -> 0x00d5 }
                    r2 = r2.isCanceled();	 Catch:{ all -> 0x00d5 }
                    if (r2 == 0) goto L_0x00b3;
                L_0x009f:
                    r9.close();	 Catch:{ Throwable -> 0x00ea }
                    r9 = r7;	 Catch:{ Throwable -> 0x00ea }
                    if (r9 == 0) goto L_0x00ab;
                L_0x00a6:
                    r9 = r7;	 Catch:{ IOException -> 0x00ab }
                    r9.close();	 Catch:{ IOException -> 0x00ab }
                L_0x00ab:
                    r9 = r4;	 Catch:{ Throwable -> 0x00ea }
                    if (r1 == r9) goto L_0x00b2;
                L_0x00af:
                    r1.recycle();	 Catch:{ Throwable -> 0x00ea }
                L_0x00b2:
                    return r0;
                L_0x00b3:
                    r2 = new java.io.FileOutputStream;	 Catch:{ all -> 0x00d5 }
                    r3 = r7;	 Catch:{ all -> 0x00d5 }
                    r3 = r3.getFileDescriptor();	 Catch:{ all -> 0x00d5 }
                    r2.<init>(r3);	 Catch:{ all -> 0x00d5 }
                    r9.writeTo(r2);	 Catch:{ all -> 0x00d5 }
                    r9.close();	 Catch:{ Throwable -> 0x00ea }
                    r9 = r7;	 Catch:{ Throwable -> 0x00ea }
                    if (r9 == 0) goto L_0x00cd;
                L_0x00c8:
                    r9 = r7;	 Catch:{ IOException -> 0x00cd }
                    r9.close();	 Catch:{ IOException -> 0x00cd }
                L_0x00cd:
                    r9 = r4;	 Catch:{ Throwable -> 0x00ea }
                    if (r1 == r9) goto L_0x00d4;
                L_0x00d1:
                    r1.recycle();	 Catch:{ Throwable -> 0x00ea }
                L_0x00d4:
                    return r0;
                L_0x00d5:
                    r0 = move-exception;
                    r9.close();	 Catch:{ Throwable -> 0x00ea }
                    r9 = r7;	 Catch:{ Throwable -> 0x00ea }
                    if (r9 == 0) goto L_0x00e2;
                L_0x00dd:
                    r9 = r7;	 Catch:{ IOException -> 0x00e2 }
                    r9.close();	 Catch:{ IOException -> 0x00e2 }
                L_0x00e2:
                    r9 = r4;	 Catch:{ Throwable -> 0x00ea }
                    if (r1 == r9) goto L_0x00e9;
                L_0x00e6:
                    r1.recycle();	 Catch:{ Throwable -> 0x00ea }
                L_0x00e9:
                    throw r0;	 Catch:{ Throwable -> 0x00ea }
                L_0x00ea:
                    r9 = move-exception;
                    return r9;
                    */
                    throw new UnsupportedOperationException("Method not decompiled: android.support.v4.print.PrintHelper$PrintHelperApi19$AnonymousClass2.doInBackground(java.lang.Void[]):java.lang.Throwable");
                }

                /* Access modifiers changed, original: protected */
                public void onPostExecute(Throwable th) {
                    if (cancellationSignal2.isCanceled()) {
                        writeResultCallback2.onWriteCancelled();
                    } else if (th == null) {
                        writeResultCallback2.onWriteFinished(new PageRange[]{PageRange.ALL_PAGES});
                    } else {
                        Log.e(PrintHelperApi19.LOG_TAG, "Error writing printed content", th);
                        writeResultCallback2.onWriteFailed(null);
                    }
                }
            }.execute(new Void[0]);
        }

        public void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException {
            final int i = this.mScaleMode;
            final String str2 = str;
            final Uri uri2 = uri;
            final OnPrintFinishCallback onPrintFinishCallback2 = onPrintFinishCallback;
            AnonymousClass3 anonymousClass3 = new PrintDocumentAdapter() {
                private PrintAttributes mAttributes;
                Bitmap mBitmap = null;
                AsyncTask<Uri, Boolean, Bitmap> mLoadBitmap;

                public void onLayout(PrintAttributes printAttributes, PrintAttributes printAttributes2, CancellationSignal cancellationSignal, LayoutResultCallback layoutResultCallback, Bundle bundle) {
                    synchronized (this) {
                        this.mAttributes = printAttributes2;
                    }
                    if (cancellationSignal.isCanceled()) {
                        layoutResultCallback.onLayoutCancelled();
                    } else if (this.mBitmap != null) {
                        layoutResultCallback.onLayoutFinished(new PrintDocumentInfo.Builder(str2).setContentType(1).setPageCount(1).build(), printAttributes2.equals(printAttributes) ^ 1);
                    } else {
                        final CancellationSignal cancellationSignal2 = cancellationSignal;
                        final PrintAttributes printAttributes3 = printAttributes2;
                        final PrintAttributes printAttributes4 = printAttributes;
                        final LayoutResultCallback layoutResultCallback2 = layoutResultCallback;
                        this.mLoadBitmap = new AsyncTask<Uri, Boolean, Bitmap>() {
                            /* Access modifiers changed, original: protected */
                            public void onPreExecute() {
                                cancellationSignal2.setOnCancelListener(new OnCancelListener() {
                                    public void onCancel() {
                                        AnonymousClass3.this.cancelLoad();
                                        AnonymousClass1.this.cancel(false);
                                    }
                                });
                            }

                            /* Access modifiers changed, original: protected|varargs */
                            public Bitmap doInBackground(Uri... uriArr) {
                                try {
                                    return PrintHelperApi19.this.loadConstrainedBitmap(uri2);
                                } catch (FileNotFoundException unused) {
                                    return null;
                                }
                            }

                            /* Access modifiers changed, original: protected */
                            public void onPostExecute(Bitmap bitmap) {
                                super.onPostExecute(bitmap);
                                if (bitmap != null && (!PrintHelperApi19.this.mPrintActivityRespectsOrientation || PrintHelperApi19.this.mOrientation == 0)) {
                                    MediaSize mediaSize;
                                    synchronized (this) {
                                        mediaSize = AnonymousClass3.this.mAttributes.getMediaSize();
                                    }
                                    if (!(mediaSize == null || mediaSize.isPortrait() == PrintHelperApi19.isPortrait(bitmap))) {
                                        Matrix matrix = new Matrix();
                                        matrix.postRotate(90.0f);
                                        bitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                                    }
                                }
                                AnonymousClass3.this.mBitmap = bitmap;
                                if (bitmap != null) {
                                    layoutResultCallback2.onLayoutFinished(new PrintDocumentInfo.Builder(str2).setContentType(1).setPageCount(1).build(), 1 ^ printAttributes3.equals(printAttributes4));
                                } else {
                                    layoutResultCallback2.onLayoutFailed(null);
                                }
                                AnonymousClass3.this.mLoadBitmap = null;
                            }

                            /* Access modifiers changed, original: protected */
                            public void onCancelled(Bitmap bitmap) {
                                layoutResultCallback2.onLayoutCancelled();
                                AnonymousClass3.this.mLoadBitmap = null;
                            }
                        }.execute(new Uri[0]);
                    }
                }

                private void cancelLoad() {
                    synchronized (PrintHelperApi19.this.mLock) {
                        if (PrintHelperApi19.this.mDecodeOptions != null) {
                            PrintHelperApi19.this.mDecodeOptions.requestCancelDecode();
                            PrintHelperApi19.this.mDecodeOptions = null;
                        }
                    }
                }

                public void onFinish() {
                    super.onFinish();
                    cancelLoad();
                    if (this.mLoadBitmap != null) {
                        this.mLoadBitmap.cancel(true);
                    }
                    if (onPrintFinishCallback2 != null) {
                        onPrintFinishCallback2.onFinish();
                    }
                    if (this.mBitmap != null) {
                        this.mBitmap.recycle();
                        this.mBitmap = null;
                    }
                }

                public void onWrite(PageRange[] pageRangeArr, ParcelFileDescriptor parcelFileDescriptor, CancellationSignal cancellationSignal, WriteResultCallback writeResultCallback) {
                    PrintHelperApi19.this.writeBitmap(this.mAttributes, i, this.mBitmap, parcelFileDescriptor, cancellationSignal, writeResultCallback);
                }
            };
            PrintManager printManager = (PrintManager) this.mContext.getSystemService("print");
            Builder builder = new Builder();
            builder.setColorMode(this.mColorMode);
            if (this.mOrientation == 1 || this.mOrientation == 0) {
                builder.setMediaSize(MediaSize.UNKNOWN_LANDSCAPE);
            } else if (this.mOrientation == 2) {
                builder.setMediaSize(MediaSize.UNKNOWN_PORTRAIT);
            }
            printManager.print(str, anonymousClass3, builder.build());
        }

        private Bitmap loadConstrainedBitmap(Uri uri) throws FileNotFoundException {
            if (uri == null || this.mContext == null) {
                throw new IllegalArgumentException("bad argument to getScaledBitmap");
            }
            Options options = new Options();
            options.inJustDecodeBounds = true;
            loadBitmap(uri, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            if (i <= 0 || i2 <= 0) {
                return null;
            }
            int max = Math.max(i, i2);
            int i3 = 1;
            while (max > MAX_PRINT_SIZE) {
                max >>>= 1;
                i3 <<= 1;
            }
            if (i3 <= 0 || Math.min(i, i2) / i3 <= 0) {
                return null;
            }
            Options options2;
            synchronized (this.mLock) {
                this.mDecodeOptions = new Options();
                this.mDecodeOptions.inMutable = true;
                this.mDecodeOptions.inSampleSize = i3;
                options2 = this.mDecodeOptions;
            }
            try {
                Bitmap loadBitmap = loadBitmap(uri, options2);
                synchronized (this.mLock) {
                    this.mDecodeOptions = null;
                }
                return loadBitmap;
            } catch (Throwable th) {
                synchronized (this.mLock) {
                    this.mDecodeOptions = null;
                }
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:18:0x002b A:{SYNTHETIC, Splitter:B:18:0x002b} */
        private android.graphics.Bitmap loadBitmap(android.net.Uri r3, android.graphics.BitmapFactory.Options r4) throws java.io.FileNotFoundException {
            /*
            r2 = this;
            if (r3 == 0) goto L_0x0038;
        L_0x0002:
            r0 = r2.mContext;
            if (r0 != 0) goto L_0x0007;
        L_0x0006:
            goto L_0x0038;
        L_0x0007:
            r0 = 0;
            r1 = r2.mContext;	 Catch:{ all -> 0x0028 }
            r1 = r1.getContentResolver();	 Catch:{ all -> 0x0028 }
            r3 = r1.openInputStream(r3);	 Catch:{ all -> 0x0028 }
            r4 = android.graphics.BitmapFactory.decodeStream(r3, r0, r4);	 Catch:{ all -> 0x0025 }
            if (r3 == 0) goto L_0x0024;
        L_0x0018:
            r3.close();	 Catch:{ IOException -> 0x001c }
            goto L_0x0024;
        L_0x001c:
            r3 = move-exception;
            r0 = "PrintHelperApi19";
            r1 = "close fail ";
            android.util.Log.w(r0, r1, r3);
        L_0x0024:
            return r4;
        L_0x0025:
            r4 = move-exception;
            r0 = r3;
            goto L_0x0029;
        L_0x0028:
            r4 = move-exception;
        L_0x0029:
            if (r0 == 0) goto L_0x0037;
        L_0x002b:
            r0.close();	 Catch:{ IOException -> 0x002f }
            goto L_0x0037;
        L_0x002f:
            r3 = move-exception;
            r0 = "PrintHelperApi19";
            r1 = "close fail ";
            android.util.Log.w(r0, r1, r3);
        L_0x0037:
            throw r4;
        L_0x0038:
            r3 = new java.lang.IllegalArgumentException;
            r4 = "bad argument to loadBitmap";
            r3.<init>(r4);
            throw r3;
            */
            throw new UnsupportedOperationException("Method not decompiled: android.support.v4.print.PrintHelper$PrintHelperApi19.loadBitmap(android.net.Uri, android.graphics.BitmapFactory$Options):android.graphics.Bitmap");
        }

        private Bitmap convertBitmapForColorMode(Bitmap bitmap, int i) {
            if (i != 1) {
                return bitmap;
            }
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            Paint paint = new Paint();
            ColorMatrix colorMatrix = new ColorMatrix();
            colorMatrix.setSaturation(0.0f);
            paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
            canvas.setBitmap(null);
            return createBitmap;
        }
    }

    private static final class PrintHelperStub implements PrintHelperVersionImpl {
        int mColorMode;
        int mOrientation;
        int mScaleMode;

        public void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
        }

        public void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) {
        }

        private PrintHelperStub() {
            this.mScaleMode = 2;
            this.mColorMode = 2;
            this.mOrientation = 1;
        }

        public void setScaleMode(int i) {
            this.mScaleMode = i;
        }

        public int getScaleMode() {
            return this.mScaleMode;
        }

        public int getColorMode() {
            return this.mColorMode;
        }

        public void setColorMode(int i) {
            this.mColorMode = i;
        }

        public void setOrientation(int i) {
            this.mOrientation = i;
        }

        public int getOrientation() {
            return this.mOrientation;
        }
    }

    @RequiresApi(20)
    private static class PrintHelperApi20 extends PrintHelperApi19 {
        PrintHelperApi20(Context context) {
            super(context);
            this.mPrintActivityRespectsOrientation = false;
        }
    }

    @RequiresApi(23)
    private static class PrintHelperApi23 extends PrintHelperApi20 {
        /* Access modifiers changed, original: protected */
        public Builder copyAttributes(PrintAttributes printAttributes) {
            Builder copyAttributes = super.copyAttributes(printAttributes);
            if (printAttributes.getDuplexMode() != 0) {
                copyAttributes.setDuplexMode(printAttributes.getDuplexMode());
            }
            return copyAttributes;
        }

        PrintHelperApi23(Context context) {
            super(context);
            this.mIsMinMarginsHandlingCorrect = false;
        }
    }

    @RequiresApi(24)
    private static class PrintHelperApi24 extends PrintHelperApi23 {
        PrintHelperApi24(Context context) {
            super(context);
            this.mIsMinMarginsHandlingCorrect = true;
            this.mPrintActivityRespectsOrientation = true;
        }
    }

    public static boolean systemSupportsPrint() {
        return VERSION.SDK_INT >= 19;
    }

    public PrintHelper(Context context) {
        if (VERSION.SDK_INT >= 24) {
            this.mImpl = new PrintHelperApi24(context);
        } else if (VERSION.SDK_INT >= 23) {
            this.mImpl = new PrintHelperApi23(context);
        } else if (VERSION.SDK_INT >= 20) {
            this.mImpl = new PrintHelperApi20(context);
        } else if (VERSION.SDK_INT >= 19) {
            this.mImpl = new PrintHelperApi19(context);
        } else {
            this.mImpl = new PrintHelperStub();
        }
    }

    public void setScaleMode(int i) {
        this.mImpl.setScaleMode(i);
    }

    public int getScaleMode() {
        return this.mImpl.getScaleMode();
    }

    public void setColorMode(int i) {
        this.mImpl.setColorMode(i);
    }

    public int getColorMode() {
        return this.mImpl.getColorMode();
    }

    public void setOrientation(int i) {
        this.mImpl.setOrientation(i);
    }

    public int getOrientation() {
        return this.mImpl.getOrientation();
    }

    public void printBitmap(String str, Bitmap bitmap) {
        this.mImpl.printBitmap(str, bitmap, null);
    }

    public void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
        this.mImpl.printBitmap(str, bitmap, onPrintFinishCallback);
    }

    public void printBitmap(String str, Uri uri) throws FileNotFoundException {
        this.mImpl.printBitmap(str, uri, null);
    }

    public void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) throws FileNotFoundException {
        this.mImpl.printBitmap(str, uri, onPrintFinishCallback);
    }
}
