package com.bumptech.glide.request.animation;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;

public class DrawableCrossFadeFactory<T extends Drawable> implements GlideAnimationFactory<T> {
    private static final int DEFAULT_DURATION_MS = 300;
    private DrawableCrossFadeViewAnimation<T> animation;
    private final ViewAnimationFactory<T> animationFactory;
    private final int duration;

    private static class DefaultAnimationFactory implements AnimationFactory {
        private DefaultAnimationFactory() {
        }

        public Animation build() {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(150);
            return alphaAnimation;
        }
    }

    public DrawableCrossFadeFactory() {
        this(300);
    }

    public DrawableCrossFadeFactory(int i) {
        this(new ViewAnimationFactory(new DefaultAnimationFactory()), i);
    }

    public DrawableCrossFadeFactory(Context context, int i, int i2) {
        this(new ViewAnimationFactory(context, i), i2);
    }

    public DrawableCrossFadeFactory(Animation animation, int i) {
        this(new ViewAnimationFactory(animation), i);
    }

    DrawableCrossFadeFactory(ViewAnimationFactory<T> viewAnimationFactory, int i) {
        this.animationFactory = viewAnimationFactory;
        this.duration = i;
    }

    public GlideAnimation<T> build(boolean z, boolean z2) {
        if (z) {
            return NoAnimation.get();
        }
        if (this.animation == null) {
            this.animation = new DrawableCrossFadeViewAnimation(this.animationFactory.build(false, z2), this.duration);
        }
        return this.animation;
    }
}
