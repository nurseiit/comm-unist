package com.google.inject.internal;

import java.util.Arrays;
import java.util.logging.Logger;

public class InternalFlags {
    private static final Logger logger = Logger.getLogger(InternalFlags.class.getName());

    public enum IncludeStackTraceOption {
        OFF,
        ONLY_FOR_DECLARING_SOURCE,
        COMPLETE
    }

    public static IncludeStackTraceOption getIncludeStackTraceOption() {
        IncludeStackTraceOption valueOf;
        String property = System.getProperty("guice_include_stack_traces");
        if (property != null) {
            try {
                if (property.length() != 0) {
                    valueOf = IncludeStackTraceOption.valueOf(property);
                    return valueOf;
                }
            } catch (IllegalArgumentException unused) {
                Logger logger = logger;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(property);
                stringBuilder.append(" is not a valid flag value for guice_include_stack_traces. ");
                stringBuilder.append(" Values must be one of ");
                stringBuilder.append(Arrays.asList(IncludeStackTraceOption.values()));
                logger.warning(stringBuilder.toString());
                return IncludeStackTraceOption.ONLY_FOR_DECLARING_SOURCE;
            }
        }
        valueOf = IncludeStackTraceOption.ONLY_FOR_DECLARING_SOURCE;
        return valueOf;
    }
}
