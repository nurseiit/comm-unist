package com.bumptech.glide.request.target;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import com.bumptech.glide.request.Request;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public abstract class ViewTarget<T extends View, Z> extends BaseTarget<Z> {
    private static final String TAG = "ViewTarget";
    private final SizeDeterminer sizeDeterminer;
    protected final T view;

    private static class SizeDeterminer {
        private static final int PENDING_SIZE = 0;
        private final List<SizeReadyCallback> cbs = new ArrayList();
        private Point displayDimens;
        private SizeDeterminerLayoutListener layoutListener;
        private final View view;

        private static class SizeDeterminerLayoutListener implements OnPreDrawListener {
            private final WeakReference<SizeDeterminer> sizeDeterminerRef;

            public SizeDeterminerLayoutListener(SizeDeterminer sizeDeterminer) {
                this.sizeDeterminerRef = new WeakReference(sizeDeterminer);
            }

            public boolean onPreDraw() {
                if (Log.isLoggable(ViewTarget.TAG, 2)) {
                    String str = ViewTarget.TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("OnGlobalLayoutListener called listener=");
                    stringBuilder.append(this);
                    Log.v(str, stringBuilder.toString());
                }
                SizeDeterminer sizeDeterminer = (SizeDeterminer) this.sizeDeterminerRef.get();
                if (sizeDeterminer != null) {
                    sizeDeterminer.checkCurrentDimens();
                }
                return true;
            }
        }

        private boolean isSizeValid(int i) {
            return i > 0 || i == -2;
        }

        public SizeDeterminer(View view) {
            this.view = view;
        }

        private void notifyCbs(int i, int i2) {
            for (SizeReadyCallback onSizeReady : this.cbs) {
                onSizeReady.onSizeReady(i, i2);
            }
            this.cbs.clear();
        }

        private void checkCurrentDimens() {
            if (!this.cbs.isEmpty()) {
                int viewWidthOrParam = getViewWidthOrParam();
                int viewHeightOrParam = getViewHeightOrParam();
                if (isSizeValid(viewWidthOrParam) && isSizeValid(viewHeightOrParam)) {
                    notifyCbs(viewWidthOrParam, viewHeightOrParam);
                    ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
                    if (viewTreeObserver.isAlive()) {
                        viewTreeObserver.removeOnPreDrawListener(this.layoutListener);
                    }
                    this.layoutListener = null;
                }
            }
        }

        public void getSize(SizeReadyCallback sizeReadyCallback) {
            int viewWidthOrParam = getViewWidthOrParam();
            int viewHeightOrParam = getViewHeightOrParam();
            if (isSizeValid(viewWidthOrParam) && isSizeValid(viewHeightOrParam)) {
                sizeReadyCallback.onSizeReady(viewWidthOrParam, viewHeightOrParam);
                return;
            }
            if (!this.cbs.contains(sizeReadyCallback)) {
                this.cbs.add(sizeReadyCallback);
            }
            if (this.layoutListener == null) {
                ViewTreeObserver viewTreeObserver = this.view.getViewTreeObserver();
                this.layoutListener = new SizeDeterminerLayoutListener(this);
                viewTreeObserver.addOnPreDrawListener(this.layoutListener);
            }
        }

        private int getViewHeightOrParam() {
            LayoutParams layoutParams = this.view.getLayoutParams();
            if (isSizeValid(this.view.getHeight())) {
                return this.view.getHeight();
            }
            return layoutParams != null ? getSizeForParam(layoutParams.height, true) : 0;
        }

        private int getViewWidthOrParam() {
            LayoutParams layoutParams = this.view.getLayoutParams();
            if (isSizeValid(this.view.getWidth())) {
                return this.view.getWidth();
            }
            if (layoutParams != null) {
                return getSizeForParam(layoutParams.width, false);
            }
            return 0;
        }

        private int getSizeForParam(int i, boolean z) {
            if (i != -2) {
                return i;
            }
            Point displayDimens = getDisplayDimens();
            return z ? displayDimens.y : displayDimens.x;
        }

        @TargetApi(13)
        private Point getDisplayDimens() {
            if (this.displayDimens != null) {
                return this.displayDimens;
            }
            Display defaultDisplay = ((WindowManager) this.view.getContext().getSystemService("window")).getDefaultDisplay();
            if (VERSION.SDK_INT >= 13) {
                this.displayDimens = new Point();
                defaultDisplay.getSize(this.displayDimens);
            } else {
                this.displayDimens = new Point(defaultDisplay.getWidth(), defaultDisplay.getHeight());
            }
            return this.displayDimens;
        }
    }

    public ViewTarget(T t) {
        if (t == null) {
            throw new NullPointerException("View must not be null!");
        }
        this.view = t;
        this.sizeDeterminer = new SizeDeterminer(t);
    }

    public T getView() {
        return this.view;
    }

    public void getSize(SizeReadyCallback sizeReadyCallback) {
        this.sizeDeterminer.getSize(sizeReadyCallback);
    }

    public void setRequest(Request request) {
        this.view.setTag(request);
    }

    public Request getRequest() {
        Object tag = this.view.getTag();
        if (tag == null) {
            return null;
        }
        if (tag instanceof Request) {
            return (Request) tag;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Target for: ");
        stringBuilder.append(this.view);
        return stringBuilder.toString();
    }
}
