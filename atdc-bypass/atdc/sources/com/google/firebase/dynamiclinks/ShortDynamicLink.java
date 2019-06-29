package com.google.firebase.dynamiclinks;

import android.net.Uri;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

public interface ShortDynamicLink {

    @Retention(RetentionPolicy.SOURCE)
    public @interface Suffix {
        public static final int SHORT = 2;
        public static final int UNGUESSABLE = 1;
    }

    public interface Warning {
        String getCode();

        String getMessage();
    }

    Uri getPreviewLink();

    Uri getShortLink();

    List<? extends Warning> getWarnings();
}
