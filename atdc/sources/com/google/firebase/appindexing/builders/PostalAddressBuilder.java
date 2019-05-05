package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;

public final class PostalAddressBuilder extends IndexableBuilder<PostalAddressBuilder> {
    PostalAddressBuilder() {
        super("PostalAddress");
    }

    public final PostalAddressBuilder setAddressCountry(@NonNull String str) {
        return (PostalAddressBuilder) put("addressCountry", str);
    }

    public final PostalAddressBuilder setAddressLocality(@NonNull String str) {
        return (PostalAddressBuilder) put("addressLocality", str);
    }

    public final PostalAddressBuilder setPostalCode(@NonNull String str) {
        return (PostalAddressBuilder) put("postalCode", str);
    }

    public final PostalAddressBuilder setStreetAddress(@NonNull String str) {
        return (PostalAddressBuilder) put("streetAddress", str);
    }
}
