package com.google.android.gms.cast.framework;

import android.content.Context;
import android.support.v4.view.MenuItemCompat;
import android.support.v7.app.MediaRouteActionProvider;
import android.support.v7.app.MediaRouteButton;
import android.view.Menu;
import android.view.MenuItem;
import com.google.android.gms.common.internal.zzbo;
import java.util.Locale;

public final class CastButtonFactory {
    private CastButtonFactory() {
    }

    public static MenuItem setUpMediaRouteButton(Context context, Menu menu, int i) {
        zzbo.zzcz("Must be called from the main thread.");
        zzbo.zzu(menu);
        CastContext sharedInstance = CastContext.getSharedInstance(context);
        MenuItem findItem = menu.findItem(i);
        if (findItem == null) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "menu doesn't contain a menu item whose ID is %d.", new Object[]{Integer.valueOf(i)}));
        }
        MediaRouteActionProvider mediaRouteActionProvider = (MediaRouteActionProvider) MenuItemCompat.getActionProvider(findItem);
        if (mediaRouteActionProvider == null) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "menu item with ID %d doesn't have a MediaRouteActionProvider.", new Object[]{Integer.valueOf(i)}));
        }
        mediaRouteActionProvider.setRouteSelector(sharedInstance.getMergedSelector());
        return findItem;
    }

    public static void setUpMediaRouteButton(Context context, MediaRouteButton mediaRouteButton) {
        zzbo.zzcz("Must be called from the main thread.");
        mediaRouteButton.setRouteSelector(CastContext.getSharedInstance(context).getMergedSelector());
    }
}
