package android.support.v7.app;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.view.ActionProvider;
import android.support.v7.media.MediaRouteSelector;
import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.ProviderInfo;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.lang.ref.WeakReference;

public class MediaRouteActionProvider extends ActionProvider {
    private static final String TAG = "MediaRouteActionProvider";
    private MediaRouteButton mButton;
    private final MediaRouterCallback mCallback;
    private MediaRouteDialogFactory mDialogFactory = MediaRouteDialogFactory.getDefault();
    private final MediaRouter mRouter;
    private MediaRouteSelector mSelector = MediaRouteSelector.EMPTY;

    private static final class MediaRouterCallback extends Callback {
        private final WeakReference<MediaRouteActionProvider> mProviderWeak;

        public MediaRouterCallback(MediaRouteActionProvider mediaRouteActionProvider) {
            this.mProviderWeak = new WeakReference(mediaRouteActionProvider);
        }

        public void onRouteAdded(MediaRouter mediaRouter, RouteInfo routeInfo) {
            refreshRoute(mediaRouter);
        }

        public void onRouteRemoved(MediaRouter mediaRouter, RouteInfo routeInfo) {
            refreshRoute(mediaRouter);
        }

        public void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
            refreshRoute(mediaRouter);
        }

        public void onProviderAdded(MediaRouter mediaRouter, ProviderInfo providerInfo) {
            refreshRoute(mediaRouter);
        }

        public void onProviderRemoved(MediaRouter mediaRouter, ProviderInfo providerInfo) {
            refreshRoute(mediaRouter);
        }

        public void onProviderChanged(MediaRouter mediaRouter, ProviderInfo providerInfo) {
            refreshRoute(mediaRouter);
        }

        private void refreshRoute(MediaRouter mediaRouter) {
            MediaRouteActionProvider mediaRouteActionProvider = (MediaRouteActionProvider) this.mProviderWeak.get();
            if (mediaRouteActionProvider != null) {
                mediaRouteActionProvider.refreshRoute();
            } else {
                mediaRouter.removeCallback(this);
            }
        }
    }

    public boolean overridesItemVisibility() {
        return true;
    }

    public MediaRouteActionProvider(Context context) {
        super(context);
        this.mRouter = MediaRouter.getInstance(context);
        this.mCallback = new MediaRouterCallback(this);
    }

    @NonNull
    public MediaRouteSelector getRouteSelector() {
        return this.mSelector;
    }

    public void setRouteSelector(@NonNull MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector == null) {
            throw new IllegalArgumentException("selector must not be null");
        } else if (!this.mSelector.equals(mediaRouteSelector)) {
            if (!this.mSelector.isEmpty()) {
                this.mRouter.removeCallback(this.mCallback);
            }
            if (!mediaRouteSelector.isEmpty()) {
                this.mRouter.addCallback(mediaRouteSelector, this.mCallback);
            }
            this.mSelector = mediaRouteSelector;
            refreshRoute();
            if (this.mButton != null) {
                this.mButton.setRouteSelector(mediaRouteSelector);
            }
        }
    }

    @NonNull
    public MediaRouteDialogFactory getDialogFactory() {
        return this.mDialogFactory;
    }

    public void setDialogFactory(@NonNull MediaRouteDialogFactory mediaRouteDialogFactory) {
        if (mediaRouteDialogFactory == null) {
            throw new IllegalArgumentException("factory must not be null");
        } else if (this.mDialogFactory != mediaRouteDialogFactory) {
            this.mDialogFactory = mediaRouteDialogFactory;
            if (this.mButton != null) {
                this.mButton.setDialogFactory(mediaRouteDialogFactory);
            }
        }
    }

    @Nullable
    public MediaRouteButton getMediaRouteButton() {
        return this.mButton;
    }

    public MediaRouteButton onCreateMediaRouteButton() {
        return new MediaRouteButton(getContext());
    }

    public View onCreateActionView() {
        if (this.mButton != null) {
            Log.e(TAG, "onCreateActionView: this ActionProvider is already associated with a menu item. Don't reuse MediaRouteActionProvider instances! Abandoning the old menu item...");
        }
        this.mButton = onCreateMediaRouteButton();
        this.mButton.setCheatSheetEnabled(true);
        this.mButton.setRouteSelector(this.mSelector);
        this.mButton.setDialogFactory(this.mDialogFactory);
        this.mButton.setLayoutParams(new LayoutParams(-2, -1));
        return this.mButton;
    }

    public boolean onPerformDefaultAction() {
        return this.mButton != null ? this.mButton.showDialog() : false;
    }

    public boolean isVisible() {
        return this.mRouter.isRouteAvailable(this.mSelector, 1);
    }

    /* Access modifiers changed, original: 0000 */
    public void refreshRoute() {
        refreshVisibility();
    }
}
