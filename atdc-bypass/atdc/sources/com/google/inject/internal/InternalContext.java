package com.google.inject.internal;

import com.google.inject.Key;
import com.google.inject.spi.Dependency;
import com.google.inject.spi.DependencyAndSource;
import java.util.List;
import java.util.Map;
import org.roboguice.shaded.goole.common.collect.ImmutableList;
import org.roboguice.shaded.goole.common.collect.ImmutableList.Builder;
import org.roboguice.shaded.goole.common.collect.Lists;
import org.roboguice.shaded.goole.common.collect.Maps;

final class InternalContext {
    private Map<Object, ConstructionContext<?>> constructionContexts = Maps.newHashMap();
    private Dependency<?> dependency;
    private final List<Object> state = Lists.newArrayList();

    InternalContext() {
    }

    public <T> ConstructionContext<T> getConstructionContext(Object obj) {
        ConstructionContext<T> constructionContext = (ConstructionContext) this.constructionContexts.get(obj);
        if (constructionContext != null) {
            return constructionContext;
        }
        ConstructionContext constructionContext2 = new ConstructionContext();
        this.constructionContexts.put(obj, constructionContext2);
        return constructionContext2;
    }

    public Dependency<?> getDependency() {
        return this.dependency;
    }

    public Dependency<?> pushDependency(Dependency<?> dependency, Object obj) {
        Dependency dependency2 = this.dependency;
        this.dependency = dependency;
        this.state.add(dependency);
        this.state.add(obj);
        return dependency2;
    }

    public void popStateAndSetDependency(Dependency<?> dependency) {
        popState();
        this.dependency = dependency;
    }

    public void pushState(Key<?> key, Object obj) {
        this.state.add(key == null ? null : Dependency.get(key));
        this.state.add(obj);
    }

    public void popState() {
        this.state.remove(this.state.size() - 1);
        this.state.remove(this.state.size() - 1);
    }

    public List<DependencyAndSource> getDependencyChain() {
        Builder builder = ImmutableList.builder();
        for (int i = 0; i < this.state.size(); i += 2) {
            builder.add(new DependencyAndSource((Dependency) this.state.get(i), this.state.get(i + 1)));
        }
        return builder.build();
    }
}
