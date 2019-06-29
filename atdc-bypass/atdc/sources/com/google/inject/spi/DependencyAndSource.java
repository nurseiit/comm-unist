package com.google.inject.spi;

import com.google.inject.internal.util.StackTraceElements;
import java.lang.reflect.Member;

public final class DependencyAndSource {
    private final Dependency<?> dependency;
    private final Object source;

    public DependencyAndSource(Dependency<?> dependency, Object obj) {
        this.dependency = dependency;
        this.source = obj;
    }

    public Dependency<?> getDependency() {
        return this.dependency;
    }

    public String getBindingSource() {
        if (this.source instanceof Class) {
            return StackTraceElements.forType((Class) this.source).toString();
        }
        if (this.source instanceof Member) {
            return StackTraceElements.forMember((Member) this.source).toString();
        }
        return this.source.toString();
    }

    public String toString() {
        Dependency dependency = getDependency();
        String bindingSource = getBindingSource();
        if (dependency != null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Dependency: ");
            stringBuilder.append(dependency);
            stringBuilder.append(", source: ");
            stringBuilder.append(bindingSource);
            return stringBuilder.toString();
        }
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("Source: ");
        stringBuilder2.append(bindingSource);
        return stringBuilder2.toString();
    }
}
