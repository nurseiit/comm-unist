package roboguice.inject;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.google.inject.Guice;
import com.google.inject.HierarchyTraversalFilter;
import com.google.inject.Injector;
import com.google.inject.Key;
import com.google.inject.MembersInjector;
import com.google.inject.Provider;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.TypeEncounter;
import com.google.inject.spi.TypeListener;
import com.google.inject.util.Types;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Set;
import roboguice.RoboGuice;

public class ExtrasListener implements TypeListener {
    protected Provider<Context> contextProvider;
    private HierarchyTraversalFilter filter;

    protected static class ExtrasMembersInjector<T> implements MembersInjector<T> {
        protected InjectExtra annotation;
        protected Provider<Context> contextProvider;
        protected Field field;

        public ExtrasMembersInjector(Field field, Provider<Context> provider, InjectExtra injectExtra) {
            this.field = field;
            this.contextProvider = provider;
            this.annotation = injectExtra;
        }

        public void injectMembers(T t) {
            Context context = (Context) this.contextProvider.get();
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                String value = this.annotation.value();
                Bundle extras = activity.getIntent().getExtras();
                if (extras != null && extras.containsKey(value)) {
                    Object convert = convert(this.field, extras.get(value), RoboGuice.getOrCreateBaseApplicationInjector(activity.getApplication()));
                    if (convert == null && Nullable.notNullable(this.field)) {
                        throw new NullPointerException(String.format("Can't inject null value into %s.%s when field is not @Nullable", new Object[]{this.field.getDeclaringClass(), this.field.getName()}));
                    }
                    this.field.setAccessible(true);
                    try {
                        this.field.set(t, convert);
                        return;
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (IllegalArgumentException unused) {
                        value = "Can't assign %s value %s to %s field %s";
                        Object[] objArr = new Object[4];
                        objArr[0] = convert != null ? convert.getClass() : "(null)";
                        objArr[1] = convert;
                        objArr[2] = this.field.getType();
                        objArr[3] = this.field.getName();
                        throw new IllegalArgumentException(String.format(value, objArr));
                    }
                } else if (!this.annotation.optional()) {
                    throw new IllegalStateException(String.format("Can't find the mandatory extra identified by key [%s] on field %s.%s", new Object[]{value, this.field.getDeclaringClass(), this.field.getName()}));
                } else {
                    return;
                }
            }
            throw new UnsupportedOperationException(String.format("Extras may not be injected into contexts that are not Activities (error in class %s)", new Object[]{((Context) this.contextProvider.get()).getClass().getSimpleName()}));
        }

        /* Access modifiers changed, original: protected */
        public Object convert(Field field, Object obj, Injector injector) {
            if (obj == null || field.getType().isPrimitive()) {
                return obj;
            }
            Key key = Key.get(Types.newParameterizedType(ExtraConverter.class, obj.getClass(), field.getType()));
            if (injector.getBindings().containsKey(key)) {
                obj = ((ExtraConverter) injector.getInstance(key)).convert(obj);
            }
            return obj;
        }
    }

    public ExtrasListener(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    public <I> void hear(TypeLiteral<I> typeLiteral, TypeEncounter<I> typeEncounter) {
        if (this.filter == null) {
            this.filter = Guice.createHierarchyTraversalFilter();
        } else {
            this.filter.reset();
        }
        for (Class rawType = typeLiteral.getRawType(); isWorthScanning(rawType); rawType = rawType.getSuperclass()) {
            Set<Field> allFields = this.filter.getAllFields(InjectExtra.class.getName(), rawType);
            if (allFields != null) {
                for (Field field : allFields) {
                    if (field.isAnnotationPresent(InjectExtra.class)) {
                        if (Modifier.isStatic(field.getModifiers())) {
                            throw new UnsupportedOperationException("Extras may not be statically injected");
                        }
                        typeEncounter.register(new ExtrasMembersInjector(field, this.contextProvider, (InjectExtra) field.getAnnotation(InjectExtra.class)));
                    }
                }
                continue;
            }
        }
    }

    private boolean isWorthScanning(Class<?> cls) {
        return this.filter.isWorthScanningForFields(InjectExtra.class.getName(), cls);
    }
}
