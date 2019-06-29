package com.google.inject;

import com.google.inject.internal.Errors;
import com.google.inject.spi.Message;
import java.util.Collection;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;

public final class ConfigurationException extends RuntimeException {
    private static final long serialVersionUID = 0;
    private final ImmutableSet<Message> messages;
    private Object partialValue = null;

    public ConfigurationException(Iterable<Message> iterable) {
        this.messages = ImmutableSet.copyOf((Iterable) iterable);
        initCause(Errors.getOnlyCause(this.messages));
    }

    public ConfigurationException withPartialValue(Object obj) {
        Preconditions.checkState(this.partialValue == null, "Can't clobber existing partial value %s with %s", this.partialValue, obj);
        ConfigurationException configurationException = new ConfigurationException(this.messages);
        configurationException.partialValue = obj;
        return configurationException;
    }

    public Collection<Message> getErrorMessages() {
        return this.messages;
    }

    public <E> E getPartialValue() {
        return this.partialValue;
    }

    public String getMessage() {
        return Errors.format("Guice configuration errors", this.messages);
    }
}
