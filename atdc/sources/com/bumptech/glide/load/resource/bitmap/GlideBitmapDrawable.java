package com.bumptech.glide.load.resource.bitmap;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.view.Gravity;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;

public class GlideBitmapDrawable extends GlideDrawable {
    private boolean applyGravity;
    private final Rect destRect;
    private int height;
    private boolean mutated;
    private BitmapState state;
    private int width;

    static class BitmapState extends ConstantState {
        private static final Paint DEFAULT_PAINT = new Paint(6);
        private static final int DEFAULT_PAINT_FLAGS = 6;
        private static final int GRAVITY = 119;
        final Bitmap bitmap;
        Paint paint;
        int targetDensity;

        public int getChangingConfigurations() {
            return 0;
        }

        public BitmapState(Bitmap bitmap) {
            this.paint = DEFAULT_PAINT;
            this.bitmap = bitmap;
        }

        BitmapState(BitmapState bitmapState) {
            this(bitmapState.bitmap);
            this.targetDensity = bitmapState.targetDensity;
        }

        /* Access modifiers changed, original: 0000 */
        public void setColorFilter(ColorFilter colorFilter) {
            mutatePaint();
            this.paint.setColorFilter(colorFilter);
        }

        /* Access modifiers changed, original: 0000 */
        public void setAlpha(int i) {
            mutatePaint();
            this.paint.setAlpha(i);
        }

        /* Access modifiers changed, original: 0000 */
        public void mutatePaint() {
            if (DEFAULT_PAINT == this.paint) {
                this.paint = new Paint(6);
            }
        }

        public Drawable newDrawable() {
            return new GlideBitmapDrawable(null, this);
        }

        public Drawable newDrawable(Resources resources) {
            return new GlideBitmapDrawable(resources, this);
        }
    }

    public boolean isAnimated() {
        return false;
    }

    public boolean isRunning() {
        return false;
    }

    public void setLoopCount(int i) {
    }

    public void start() {
    }

    public void stop() {
    }

    public GlideBitmapDrawable(Resources resources, Bitmap bitmap) {
        this(resources, new BitmapState(bitmap));
    }

    GlideBitmapDrawable(Resources resources, BitmapState bitmapState) {
        this.destRect = new Rect();
        if (bitmapState == null) {
            throw new NullPointerException("BitmapState must not be null");
        }
        int i;
        this.state = bitmapState;
        if (resources != null) {
            i = resources.getDisplayMetrics().densityDpi;
            if (i == 0) {
                i = 160;
            }
            bitmapState.targetDensity = i;
        } else {
            i = bitmapState.targetDensity;
        }
        this.width = bitmapState.bitmap.getScaledWidth(i);
        this.height = bitmapState.bitmap.getScaledHeight(i);
    }

    public int getIntrinsicWidth() {
        return this.width;
    }

    public int getIntrinsicHeight() {
        return this.height;
    }

    /* Access modifiers changed, original: protected */
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.applyGravity = true;
    }

    public ConstantState getConstantState() {
        return this.state;
    }

    public void draw(Canvas canvas) {
        if (this.applyGravity) {
            Gravity.apply(119, this.width, this.height, getBounds(), this.destRect);
            this.applyGravity = false;
        }
        canvas.drawBitmap(this.state.bitmap, null, this.destRect, this.state.paint);
    }

    public void setAlpha(int i) {
        if (this.state.paint.getAlpha() != i) {
            this.state.setAlpha(i);
            invalidateSelf();
        }
    }

    public void setColorFilter(ColorFilter colorFilter) {
        this.state.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public int getOpacity() {
        Bitmap bitmap = this.state.bitmap;
        return (bitmap == null || bitmap.hasAlpha() || this.state.paint.getAlpha() < 255) ? -3 : -1;
    }

    public Drawable mutate() {
        if (!this.mutated && super.mutate() == this) {
            this.state = new BitmapState(this.state);
            this.mutated = true;
        }
        return this;
    }

    public Bitmap getBitmap() {
        return this.state.bitmap;
    }
}
