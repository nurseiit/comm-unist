package com.google.android.gms.games.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import android.view.Display;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import java.lang.ref.WeakReference;

@TargetApi(12)
final class zzq extends zzn implements OnAttachStateChangeListener, OnGlobalLayoutListener {
    private boolean zzaZu = false;
    private WeakReference<View> zzbaO;

    protected zzq(GamesClientImpl gamesClientImpl, int i) {
        super(gamesClientImpl, i, null);
    }

    @TargetApi(17)
    private final void zzu(View view) {
        int i = -1;
        if (com.google.android.gms.common.util.zzq.zzsa()) {
            Display display = view.getDisplay();
            if (display != null) {
                i = display.getDisplayId();
            }
        }
        IBinder windowToken = view.getWindowToken();
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int width = view.getWidth();
        int height = view.getHeight();
        this.zzbaL.zzbaN = i;
        this.zzbaL.zzbaM = windowToken;
        this.zzbaL.left = iArr[0];
        this.zzbaL.top = iArr[1];
        this.zzbaL.right = iArr[0] + width;
        this.zzbaL.bottom = iArr[1] + height;
        if (this.zzaZu) {
            zzuV();
            this.zzaZu = false;
        }
    }

    public final void onGlobalLayout() {
        if (this.zzbaO != null) {
            View view = (View) this.zzbaO.get();
            if (view != null) {
                zzu(view);
            }
        }
    }

    public final void onViewAttachedToWindow(View view) {
        zzu(view);
    }

    public final void onViewDetachedFromWindow(View view) {
        this.zzbaK.zzuP();
        view.removeOnAttachStateChangeListener(this);
    }

    /* Access modifiers changed, original: protected|final */
    public final void zzbb(int i) {
        this.zzbaL = new zzp(i, null, null);
    }

    @TargetApi(16)
    public final void zzt(View view) {
        this.zzbaK.zzuP();
        if (this.zzbaO != null) {
            View view2 = (View) this.zzbaO.get();
            Context context = this.zzbaK.getContext();
            if (view2 == null && (context instanceof Activity)) {
                view2 = ((Activity) context).getWindow().getDecorView();
            }
            if (view2 != null) {
                view2.removeOnAttachStateChangeListener(this);
                ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
                if (com.google.android.gms.common.util.zzq.zzrZ()) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
            }
        }
        this.zzbaO = null;
        Context context2 = this.zzbaK.getContext();
        if (view == null && (context2 instanceof Activity)) {
            Activity activity = (Activity) context2;
            view = activity.findViewById(16908290);
            if (view == null) {
                view = activity.getWindow().getDecorView();
            }
            zze.zzy("PopupManager", "You have not specified a View to use as content view for popups. Falling back to the Activity content view. Note that this may not work as expected in multi-screen environments");
        }
        if (view != null) {
            zzu(view);
            this.zzbaO = new WeakReference(view);
            view.addOnAttachStateChangeListener(this);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
            return;
        }
        zze.zzz("PopupManager", "No content view usable to display popups. Popups will not be displayed in response to this client's calls. Use setViewForPopups() to set your content view.");
    }

    public final void zzuV() {
        if (this.zzbaL.zzbaM != null) {
            super.zzuV();
        } else {
            this.zzaZu = this.zzbaO != null;
        }
    }
}
