package com.google.inject;

import com.google.inject.internal.Errors;
import com.google.inject.spi.Message;
import java.util.Collection;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

public class CreationException extends RuntimeException {
    private static final long serialVersionUID = 0;
    private final ImmutableSet<Message> messages;

    public CreationException(Collection<Message> collection) {
        this.messages = ImmutableSet.copyOf((Collection) collection);
        Preconditions.checkArgument(this.messages.isEmpty() ^ 1);
        initCause(Errors.getOnlyCause(this.messages));
    }

    public Collection<Message> getErrorMessages() {
        return this.messages;
    }

    public String getMessage() {
        return Errors.format("Unable to create injector, see the following errors", this.messages);
    }
}
