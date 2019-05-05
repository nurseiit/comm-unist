package com.google.inject;

import com.google.inject.spi.BindingScopingVisitor;
import com.google.inject.spi.BindingTargetVisitor;
import com.google.inject.spi.Element;

public interface Binding<T> extends Element {
    <V> V acceptScopingVisitor(BindingScopingVisitor<V> bindingScopingVisitor);

    <V> V acceptTargetVisitor(BindingTargetVisitor<? super T, V> bindingTargetVisitor);

    Key<T> getKey();

    Provider<T> getProvider();
}
