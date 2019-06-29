package com.bumptech.glide.manager;

import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

class ActivityFragmentLifecycle implements Lifecycle {
    private boolean isDestroyed;
    private boolean isStarted;
    private final Set<LifecycleListener> lifecycleListeners = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    ActivityFragmentLifecycle() {
    }

    public void addListener(LifecycleListener lifecycleListener) {
        this.lifecycleListeners.add(lifecycleListener);
        if (this.isDestroyed) {
            lifecycleListener.onDestroy();
        } else if (this.isStarted) {
            lifecycleListener.onStart();
        } else {
            lifecycleListener.onStop();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void onStart() {
        this.isStarted = true;
        for (LifecycleListener onStart : this.lifecycleListeners) {
            onStart.onStart();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void onStop() {
        this.isStarted = false;
        for (LifecycleListener onStop : this.lifecycleListeners) {
            onStop.onStop();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void onDestroy() {
        this.isDestroyed = true;
        for (LifecycleListener onDestroy : this.lifecycleListeners) {
            onDestroy.onDestroy();
        }
    }
}
