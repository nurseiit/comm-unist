package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v7.media.MediaRouteSelector;

public class MediaRouteChooserDialogFragment extends DialogFragment {
    private final String ARGUMENT_SELECTOR = "selector";
    private MediaRouteChooserDialog mDialog;
    private MediaRouteSelector mSelector;

    public MediaRouteChooserDialogFragment() {
        setCancelable(true);
    }

    public MediaRouteSelector getRouteSelector() {
        ensureRouteSelector();
        return this.mSelector;
    }

    private void ensureRouteSelector() {
        if (this.mSelector == null) {
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.mSelector = MediaRouteSelector.fromBundle(arguments.getBundle("selector"));
            }
            if (this.mSelector == null) {
                this.mSelector = MediaRouteSelector.EMPTY;
            }
        }
    }

    public void setRouteSelector(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        ensureRouteSelector();
        if (!this.mSelector.equals(mediaRouteSelector)) {
            this.mSelector = mediaRouteSelector;
            Bundle arguments = getArguments();
            if (arguments == null) {
                arguments = new Bundle();
            }
            arguments.putBundle("selector", mediaRouteSelector.asBundle());
            setArguments(arguments);
            MediaRouteChooserDialog mediaRouteChooserDialog = (MediaRouteChooserDialog) getDialog();
            if (mediaRouteChooserDialog != null) {
                mediaRouteChooserDialog.setRouteSelector(mediaRouteSelector);
            }
        }
    }

    public MediaRouteChooserDialog onCreateChooserDialog(Context context, Bundle bundle) {
        return new MediaRouteChooserDialog(context);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        this.mDialog = onCreateChooserDialog(getContext(), bundle);
        this.mDialog.setRouteSelector(getRouteSelector());
        return this.mDialog;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mDialog != null) {
            this.mDialog.updateLayout();
        }
    }
}
