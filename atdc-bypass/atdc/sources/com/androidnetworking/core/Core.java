package com.androidnetworking.core;

public class Core {
    private static Core sInstance;
    private final ExecutorSupplier mExecutorSupplier = new DefaultExecutorSupplier();

    private Core() {
    }

    public static Core getInstance() {
        if (sInstance == null) {
            synchronized (Core.class) {
                if (sInstance == null) {
                    sInstance = new Core();
                }
            }
        }
        return sInstance;
    }

    public ExecutorSupplier getExecutorSupplier() {
        return this.mExecutorSupplier;
    }

    public static void shutDown() {
        if (sInstance != null) {
            sInstance = null;
        }
    }
}
