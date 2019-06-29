package com.google.inject.spi;

import com.google.inject.Binder;
import com.google.inject.internal.Errors;
import com.google.inject.internal.util.SourceProvider;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableList;

public final class Message implements Serializable, Element {
    private static final long serialVersionUID = 0;
    private final Throwable cause;
    private final String message;
    private final List<Object> sources;

    public Message(List<Object> list, String str, Throwable th) {
        this.sources = ImmutableList.copyOf((Collection) list);
        this.message = (String) Preconditions.checkNotNull(str, "message");
        this.cause = th;
    }

    public Message(String str, Throwable th) {
        this(ImmutableList.of(), str, th);
    }

    public Message(Object obj, String str) {
        this(ImmutableList.of(obj), str, null);
    }

    public Message(String str) {
        this(ImmutableList.of(), str, null);
    }

    public String getSource() {
        return (this.sources.isEmpty() ? SourceProvider.UNKNOWN_SOURCE : Errors.convert(this.sources.get(this.sources.size() - 1))).toString();
    }

    public List<Object> getSources() {
        return this.sources;
    }

    public String getMessage() {
        return this.message;
    }

    public <T> T acceptVisitor(ElementVisitor<T> elementVisitor) {
        return elementVisitor.visit(this);
    }

    public Throwable getCause() {
        return this.cause;
    }

    public String toString() {
        return this.message;
    }

    public int hashCode() {
        return this.message.hashCode();
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof Message)) {
            return false;
        }
        Message message = (Message) obj;
        if (this.message.equals(message.message) && Objects.equal(this.cause, message.cause) && this.sources.equals(message.sources)) {
            z = true;
        }
        return z;
    }

    public void applyTo(Binder binder) {
        binder.withSource(getSource()).addError(this);
    }

    private Object writeReplace() throws ObjectStreamException {
        Object[] toArray = this.sources.toArray();
        for (int i = 0; i < toArray.length; i++) {
            toArray[i] = Errors.convert(toArray[i]).toString();
        }
        return new Message(ImmutableList.copyOf(toArray), this.message, this.cause);
    }
}
