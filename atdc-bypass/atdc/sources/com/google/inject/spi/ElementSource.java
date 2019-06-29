package com.google.inject.spi;

import com.google.inject.internal.util.StackTraceElements;
import com.google.inject.internal.util.StackTraceElements.InMemoryStackTraceElement;
import java.util.List;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableList;

public final class ElementSource {
    final Object declaringSource;
    final ModuleSource moduleSource;
    final ElementSource originalElementSource;
    final InMemoryStackTraceElement[] partialCallStack;

    ElementSource(ElementSource elementSource, Object obj, ModuleSource moduleSource, StackTraceElement[] stackTraceElementArr) {
        Preconditions.checkNotNull(obj, "declaringSource cannot be null.");
        Preconditions.checkNotNull(moduleSource, "moduleSource cannot be null.");
        Preconditions.checkNotNull(stackTraceElementArr, "partialCallStack cannot be null.");
        this.originalElementSource = elementSource;
        this.declaringSource = obj;
        this.moduleSource = moduleSource;
        this.partialCallStack = StackTraceElements.convertToInMemoryStackTraceElement(stackTraceElementArr);
    }

    public ElementSource getOriginalElementSource() {
        return this.originalElementSource;
    }

    public Object getDeclaringSource() {
        return this.declaringSource;
    }

    public List<String> getModuleClassNames() {
        return this.moduleSource.getModuleClassNames();
    }

    public List<Integer> getModuleConfigurePositionsInStackTrace() {
        int size = this.moduleSource.size();
        Object[] objArr = new Integer[size];
        int i = 1;
        objArr[0] = Integer.valueOf(this.partialCallStack.length - 1);
        ModuleSource moduleSource = this.moduleSource;
        while (i < size) {
            objArr[i] = Integer.valueOf(objArr[i - 1].intValue() + moduleSource.getPartialCallStackSize());
            moduleSource = moduleSource.getParent();
            i++;
        }
        return ImmutableList.copyOf(objArr);
    }

    public StackTraceElement[] getStackTrace() {
        int stackTraceSize = this.moduleSource.getStackTraceSize();
        int length = this.partialCallStack.length;
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[(this.moduleSource.getStackTraceSize() + length)];
        System.arraycopy(StackTraceElements.convertToStackTraceElement(this.partialCallStack), 0, stackTraceElementArr, 0, length);
        System.arraycopy(this.moduleSource.getStackTrace(), 0, stackTraceElementArr, length, stackTraceSize);
        return stackTraceElementArr;
    }

    public String toString() {
        return getDeclaringSource().toString();
    }
}
