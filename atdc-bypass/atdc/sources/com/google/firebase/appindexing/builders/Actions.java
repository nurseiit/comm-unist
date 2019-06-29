package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;
import com.google.firebase.appindexing.Action;
import com.google.firebase.appindexing.Action.Builder;

public final class Actions {
    public static Action newView(@NonNull String str, @NonNull String str2) {
        return new Builder(Builder.VIEW_ACTION).setObject(str, str2).build();
    }
}
