package com.bumptech.glide.load.engine.bitmap_recycle;

import com.bumptech.glide.util.Util;
import java.util.Queue;

abstract class BaseKeyPool<T extends Poolable> {
    private static final int MAX_SIZE = 20;
    private final Queue<T> keyPool = Util.createQueue(20);

    public abstract T create();

    BaseKeyPool() {
    }

    /* Access modifiers changed, original: protected */
    public T get() {
        Poolable poolable = (Poolable) this.keyPool.poll();
        return poolable == null ? create() : poolable;
    }

    public void offer(T t) {
        if (this.keyPool.size() < 20) {
            this.keyPool.offer(t);
        }
    }
}
