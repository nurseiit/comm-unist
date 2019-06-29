package com.google.inject.internal;

import com.google.inject.Binding;
import com.google.inject.Injector;
import com.google.inject.Key;
import com.google.inject.Stage;
import com.google.inject.spi.ProvisionListenerBinding;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.logging.Logger;
import org.roboguice.shaded.goole.common.cache.CacheBuilder;
import org.roboguice.shaded.goole.common.cache.CacheLoader;
import org.roboguice.shaded.goole.common.cache.LoadingCache;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.Lists;

final class ProvisionListenerCallbackStore {
    private static final Set<Key<?>> INTERNAL_BINDINGS = ImmutableSet.of(Key.get(Injector.class), Key.get(Stage.class), Key.get(Logger.class));
    private final LoadingCache<KeyBinding, ProvisionListenerStackCallback<?>> cache = CacheBuilder.newBuilder().build(new CacheLoader<KeyBinding, ProvisionListenerStackCallback<?>>() {
        public ProvisionListenerStackCallback<?> load(KeyBinding keyBinding) {
            return ProvisionListenerCallbackStore.this.create(keyBinding.binding);
        }
    });
    private final ImmutableList<ProvisionListenerBinding> listenerBindings;

    private static class KeyBinding {
        final Binding<?> binding;
        final Key<?> key;

        KeyBinding(Key<?> key, Binding<?> binding) {
            this.key = key;
            this.binding = binding;
        }

        public boolean equals(Object obj) {
            return (obj instanceof KeyBinding) && this.key.equals(((KeyBinding) obj).key);
        }

        public int hashCode() {
            return this.key.hashCode();
        }
    }

    ProvisionListenerCallbackStore(List<ProvisionListenerBinding> list) {
        this.listenerBindings = ImmutableList.copyOf((Collection) list);
    }

    public <T> ProvisionListenerStackCallback<T> get(Binding<T> binding) {
        if (INTERNAL_BINDINGS.contains(binding.getKey())) {
            return ProvisionListenerStackCallback.emptyListener();
        }
        return (ProvisionListenerStackCallback) this.cache.getUnchecked(new KeyBinding(binding.getKey(), binding));
    }

    /* Access modifiers changed, original: 0000 */
    public boolean remove(Binding<?> binding) {
        return this.cache.asMap().remove(binding) != null;
    }

    private <T> ProvisionListenerStackCallback<T> create(Binding<T> binding) {
        Iterator it = this.listenerBindings.iterator();
        List list = null;
        while (it.hasNext()) {
            ProvisionListenerBinding provisionListenerBinding = (ProvisionListenerBinding) it.next();
            if (provisionListenerBinding.getBindingMatcher().matches(binding)) {
                if (list == null) {
                    list = Lists.newArrayList();
                }
                list.addAll(provisionListenerBinding.getListeners());
            }
        }
        if (list == null || list.isEmpty()) {
            return ProvisionListenerStackCallback.emptyListener();
        }
        return new ProvisionListenerStackCallback(binding, list);
    }
}
