package com.bumptech.glide.request.target;

import android.widget.ImageView;
import com.bumptech.glide.load.resource.drawable.GlideDrawable;
import com.bumptech.glide.request.animation.GlideAnimation;

public class GlideDrawableImageViewTarget extends ImageViewTarget<GlideDrawable> {
    private static final float SQUARE_RATIO_MARGIN = 0.05f;
    private int maxLoopCount;
    private GlideDrawable resource;

    public GlideDrawableImageViewTarget(ImageView imageView) {
        this(imageView, -1);
    }

    public GlideDrawableImageViewTarget(ImageView imageView, int i) {
        super(imageView);
        this.maxLoopCount = i;
    }

    public void onResourceReady(GlideDrawable glideDrawable, GlideAnimation<? super GlideDrawable> glideAnimation) {
        Object glideDrawable2;
        if (!glideDrawable2.isAnimated()) {
            float intrinsicWidth = ((float) glideDrawable2.getIntrinsicWidth()) / ((float) glideDrawable2.getIntrinsicHeight());
            if (Math.abs((((float) ((ImageView) this.view).getWidth()) / ((float) ((ImageView) this.view).getHeight())) - 1.0f) <= SQUARE_RATIO_MARGIN && Math.abs(intrinsicWidth - 1.0f) <= SQUARE_RATIO_MARGIN) {
                glideDrawable2 = new SquaringDrawable(glideDrawable2, ((ImageView) this.view).getWidth());
            }
        }
        super.onResourceReady(glideDrawable2, glideAnimation);
        this.resource = glideDrawable2;
        glideDrawable2.setLoopCount(this.maxLoopCount);
        glideDrawable2.start();
    }

    /* Access modifiers changed, original: protected */
    public void setResource(GlideDrawable glideDrawable) {
        ((ImageView) this.view).setImageDrawable(glideDrawable);
    }

    public void onStart() {
        if (this.resource != null) {
            this.resource.start();
        }
    }

    public void onStop() {
        if (this.resource != null) {
            this.resource.stop();
        }
    }
}
