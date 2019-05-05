package com.google.inject.internal;

import java.util.List;
import org.roboguice.shaded.goole.common.collect.Lists;

class ProcessedBindingData {
    private final List<CreationListener> creationListeners = Lists.newArrayList();
    private final List<Runnable> uninitializedBindings = Lists.newArrayList();

    ProcessedBindingData() {
    }

    /* Access modifiers changed, original: 0000 */
    public void addCreationListener(CreationListener creationListener) {
        this.creationListeners.add(creationListener);
    }

    /* Access modifiers changed, original: 0000 */
    public void addUninitializedBinding(Runnable runnable) {
        this.uninitializedBindings.add(runnable);
    }

    /* Access modifiers changed, original: 0000 */
    public void initializeBindings() {
        for (Runnable run : this.uninitializedBindings) {
            run.run();
        }
    }

    /* Access modifiers changed, original: 0000 */
    public void runCreationListeners(Errors errors) {
        for (CreationListener notify : this.creationListeners) {
            notify.notify(errors);
        }
    }
}
