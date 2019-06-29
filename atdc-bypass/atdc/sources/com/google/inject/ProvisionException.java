package com.google.inject;

import com.google.inject.internal.Errors;
import com.google.inject.spi.Message;
import java.util.Collection;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

public final class ProvisionException extends RuntimeException {
    private static final long serialVersionUID = 0;
    private final ImmutableSet<Message> messages;

    public ProvisionException(Iterable<Message> iterable) {
        this.messages = ImmutableSet.copyOf((Iterable) iterable);
        Preconditions.checkArgument(this.messages.isEmpty() ^ 1);
        initCause(Errors.getOnlyCause(this.messages));
    }

    public ProvisionException(String str, Throwable th) {
        super(th);
        this.messages = ImmutableSet.of(new Message(str, th));
    }

    public ProvisionException(String str) {
        this.messages = ImmutableSet.of(new Message(str));
    }

    public Collection<Message> getErrorMessages() {
        return this.messages;
    }

    public String getMessage() {
        return Errors.format("Unable to provision, see the following errors", this.messages);
    }
}
