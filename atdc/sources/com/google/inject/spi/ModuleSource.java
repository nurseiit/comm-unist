package com.google.inject.spi;

import com.google.inject.Module;
import com.google.inject.internal.util.StackTraceElements;
import com.google.inject.internal.util.StackTraceElements.InMemoryStackTraceElement;
import java.util.List;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.ImmutableList.Builder;

final class ModuleSource {
    private final String moduleClassName;
    private final ModuleSource parent;
    private final InMemoryStackTraceElement[] partialCallStack;

    ModuleSource(Module module, StackTraceElement[] stackTraceElementArr) {
        this(null, module, stackTraceElementArr);
    }

    private ModuleSource(ModuleSource moduleSource, Module module, StackTraceElement[] stackTraceElementArr) {
        Preconditions.checkNotNull(module, "module cannot be null.");
        Preconditions.checkNotNull(stackTraceElementArr, "partialCallStack cannot be null.");
        this.parent = moduleSource;
        this.moduleClassName = module.getClass().getName();
        this.partialCallStack = StackTraceElements.convertToInMemoryStackTraceElement(stackTraceElementArr);
    }

    /* Access modifiers changed, original: 0000 */
    public String getModuleClassName() {
        return this.moduleClassName;
    }

    /* Access modifiers changed, original: 0000 */
    public StackTraceElement[] getPartialCallStack() {
        return StackTraceElements.convertToStackTraceElement(this.partialCallStack);
    }

    /* Access modifiers changed, original: 0000 */
    public int getPartialCallStackSize() {
        return this.partialCallStack.length;
    }

    /* Access modifiers changed, original: 0000 */
    public ModuleSource createChild(Module module, StackTraceElement[] stackTraceElementArr) {
        return new ModuleSource(this, module, stackTraceElementArr);
    }

    /* Access modifiers changed, original: 0000 */
    public ModuleSource getParent() {
        return this.parent;
    }

    /* Access modifiers changed, original: 0000 */
    public List<String> getModuleClassNames() {
        Builder builder = ImmutableList.builder();
        for (ModuleSource moduleSource = this; moduleSource != null; moduleSource = moduleSource.parent) {
            builder.add(moduleSource.moduleClassName);
        }
        return builder.build();
    }

    /* Access modifiers changed, original: 0000 */
    public int size() {
        if (this.parent == null) {
            return 1;
        }
        return this.parent.size() + 1;
    }

    /* Access modifiers changed, original: 0000 */
    public int getStackTraceSize() {
        if (this.parent == null) {
            return this.partialCallStack.length;
        }
        return this.parent.getStackTraceSize() + this.partialCallStack.length;
    }

    /* Access modifiers changed, original: 0000 */
    public StackTraceElement[] getStackTrace() {
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[getStackTraceSize()];
        ModuleSource moduleSource = this;
        int i = 0;
        while (moduleSource != null) {
            StackTraceElement[] convertToStackTraceElement = StackTraceElements.convertToStackTraceElement(moduleSource.partialCallStack);
            int length = convertToStackTraceElement.length;
            System.arraycopy(convertToStackTraceElement, 0, stackTraceElementArr, i, length);
            moduleSource = moduleSource.parent;
            i += length;
        }
        return stackTraceElementArr;
    }
}
