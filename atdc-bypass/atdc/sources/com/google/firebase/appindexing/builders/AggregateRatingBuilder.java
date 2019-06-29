package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;

public final class AggregateRatingBuilder extends IndexableBuilder<AggregateRatingBuilder> {
    AggregateRatingBuilder() {
        super("AggregateRating");
    }

    public final AggregateRatingBuilder setRatingCount(@NonNull long j) {
        return (AggregateRatingBuilder) put("ratingCount", j);
    }

    public final AggregateRatingBuilder setRatingValue(@NonNull String str) {
        return (AggregateRatingBuilder) put("ratingValue", str);
    }
}
