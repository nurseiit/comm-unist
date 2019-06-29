package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;

public final class PersonBuilder extends IndexableBuilder<PersonBuilder> {
    PersonBuilder() {
        super("Person");
    }

    public final PersonBuilder setEmail(@NonNull String str) {
        return (PersonBuilder) put("email", str);
    }

    public final PersonBuilder setIsSelf(@NonNull boolean z) {
        return (PersonBuilder) put("isSelf", z);
    }

    public final PersonBuilder setTelephone(@NonNull String str) {
        return (PersonBuilder) put("telephone", str);
    }
}
