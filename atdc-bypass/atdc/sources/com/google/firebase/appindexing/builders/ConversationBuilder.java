package com.google.firebase.appindexing.builders;

import android.support.annotation.NonNull;

public final class ConversationBuilder extends IndexableBuilder<ConversationBuilder> {
    ConversationBuilder() {
        super("Conversation");
    }

    public final ConversationBuilder setId(@NonNull String str) {
        return (ConversationBuilder) put("id", str);
    }
}
