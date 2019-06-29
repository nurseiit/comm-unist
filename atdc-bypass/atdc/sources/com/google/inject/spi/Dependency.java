package com.google.inject.spi;

import com.google.inject.Key;
import java.util.Collection;
import java.util.Set;
import org.roboguice.shaded.goole.common.base.Objects;
import org.roboguice.shaded.goole.common.base.Preconditions;
import org.roboguice.shaded.goole.common.collect.ImmutableSet;
import org.roboguice.shaded.goole.common.collect.Lists;

public final class Dependency<T> {
    private final InjectionPoint injectionPoint;
    private final Key<T> key;
    private final boolean nullable;
    private final int parameterIndex;

    Dependency(InjectionPoint injectionPoint, Key<T> key, boolean z, int i) {
        this.injectionPoint = injectionPoint;
        this.key = (Key) Preconditions.checkNotNull(key, "key");
        this.nullable = z;
        this.parameterIndex = i;
    }

    public static <T> Dependency<T> get(Key<T> key) {
        return new Dependency(null, key, true, -1);
    }

    public static Set<Dependency<?>> forInjectionPoints(Set<InjectionPoint> set) {
        Collection newArrayList = Lists.newArrayList();
        for (InjectionPoint dependencies : set) {
            newArrayList.addAll(dependencies.getDependencies());
        }
        return ImmutableSet.copyOf(newArrayList);
    }

    public Key<T> getKey() {
        return this.key;
    }

    public boolean isNullable() {
        return this.nullable;
    }

    public InjectionPoint getInjectionPoint() {
        return this.injectionPoint;
    }

    public int getParameterIndex() {
        return this.parameterIndex;
    }

    public int hashCode() {
        return Objects.hashCode(this.injectionPoint, Integer.valueOf(this.parameterIndex), this.key);
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof Dependency)) {
            return false;
        }
        Dependency dependency = (Dependency) obj;
        if (Objects.equal(this.injectionPoint, dependency.injectionPoint) && Objects.equal(Integer.valueOf(this.parameterIndex), Integer.valueOf(dependency.parameterIndex)) && Objects.equal(this.key, dependency.key)) {
            z = true;
        }
        return z;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this.key);
        if (this.injectionPoint != null) {
            stringBuilder.append("@");
            stringBuilder.append(this.injectionPoint);
            if (this.parameterIndex != -1) {
                stringBuilder.append("[");
                stringBuilder.append(this.parameterIndex);
                stringBuilder.append("]");
            }
        }
        return stringBuilder.toString();
    }
}
