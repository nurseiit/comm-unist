package com.google.inject.internal.util;

import java.util.logging.Logger;

public final class Stopwatch {
    private static final Logger logger = Logger.getLogger(Stopwatch.class.getName());
    private long start = System.currentTimeMillis();

    public long reset() {
        long currentTimeMillis = System.currentTimeMillis();
        long j = currentTimeMillis - this.start;
        this.start = currentTimeMillis;
        return j;
    }

    public void resetAndLog(String str) {
        Logger logger = logger;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append(": ");
        stringBuilder.append(reset());
        stringBuilder.append("ms");
        logger.fine(stringBuilder.toString());
    }
}
