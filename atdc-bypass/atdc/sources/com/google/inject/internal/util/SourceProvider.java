package com.google.inject.internal.util;

import java.util.ArrayList;
import java.util.List;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.ImmutableSet.Builder;
import org.roboguice.shaded.goole.common.collect.Lists;

public final class SourceProvider {
    public static final SourceProvider DEFAULT_INSTANCE = new SourceProvider(ImmutableSet.of(SourceProvider.class.getName()));
    public static final Object UNKNOWN_SOURCE = "[unknown source]";
    private final ImmutableSet<String> classNamesToSkip;
    private final SourceProvider parent;

    private SourceProvider(Iterable<String> iterable) {
        this(null, iterable);
    }

    private SourceProvider(SourceProvider sourceProvider, Iterable<String> iterable) {
        this.parent = sourceProvider;
        Builder builder = ImmutableSet.builder();
        for (Object obj : iterable) {
            if (sourceProvider == null || !sourceProvider.shouldBeSkipped(obj)) {
                builder.add(obj);
            }
        }
        this.classNamesToSkip = builder.build();
    }

    public SourceProvider plusSkippedClasses(Class... clsArr) {
        return new SourceProvider(this, asStrings(clsArr));
    }

    private boolean shouldBeSkipped(String str) {
        return (this.parent != null && this.parent.shouldBeSkipped(str)) || this.classNamesToSkip.contains(str);
    }

    private static List<String> asStrings(Class... clsArr) {
        ArrayList newArrayList = Lists.newArrayList();
        for (Class name : clsArr) {
            newArrayList.add(name.getName());
        }
        return newArrayList;
    }

    public StackTraceElement get(StackTraceElement[] stackTraceElementArr) {
        Preconditions.checkNotNull(stackTraceElementArr, "The stack trace elements cannot be null.");
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            if (!shouldBeSkipped(stackTraceElement.getClassName())) {
                return stackTraceElement;
            }
        }
        throw new AssertionError();
    }

    public Object getFromClassNames(List<String> list) {
        Preconditions.checkNotNull(list, "The list of module class names cannot be null.");
        for (String str : list) {
            if (!shouldBeSkipped(str)) {
                return new StackTraceElement(str, "configure", null, -1);
            }
        }
        return UNKNOWN_SOURCE;
    }
}
