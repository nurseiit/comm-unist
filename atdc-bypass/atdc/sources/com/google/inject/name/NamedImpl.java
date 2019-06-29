package com.google.inject.name;

import android.support.v4.media.TransportMediator;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import java.io.Serializable;
import java.lang.annotation.Annotation;
import org.roboguice.shaded.goole.common.base.Preconditions;

class NamedImpl implements Named, Serializable {
    private static final long serialVersionUID = 0;
    private final String value;

    public NamedImpl(String str) {
        this.value = (String) Preconditions.checkNotNull(str, "name");
    }

    public String value() {
        return this.value;
    }

    public int hashCode() {
        return (Param.VALUE.hashCode() * TransportMediator.KEYCODE_MEDIA_PAUSE) ^ this.value.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Named)) {
            return false;
        }
        return this.value.equals(((Named) obj).value());
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("@");
        stringBuilder.append(Named.class.getName());
        stringBuilder.append("(value=");
        stringBuilder.append(this.value);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public Class<? extends Annotation> annotationType() {
        return Named.class;
    }
}
