package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;

public final class GeoShapeBuilder extends IndexableBuilder<GeoShapeBuilder> {
    GeoShapeBuilder() {
        super("GeoShape");
    }

    public final GeoShapeBuilder setBox(@NonNull String str) {
        return (GeoShapeBuilder) put("box", str);
    }
}
