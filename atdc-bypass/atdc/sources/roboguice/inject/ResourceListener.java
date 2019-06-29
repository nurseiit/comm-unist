package roboguice.inject;

import android.app.Application;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import com.google.inject.Guice;
import com.google.inject.HierarchyTraversalFilter;
import com.google.inject.MembersInjector;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.TypeEncounter;
import com.google.inject.spi.TypeListener;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Set;

public class ResourceListener implements TypeListener {
    protected Application application;
    private HierarchyTraversalFilter filter;

    protected static class ResourceMembersInjector<T> implements MembersInjector<T> {
        protected InjectResource annotation;
        protected Application application;
        protected Field field;

        public ResourceMembersInjector(Field field, Application application, InjectResource injectResource) {
            this.field = field;
            this.application = application;
            this.annotation = injectResource;
        }

        public void injectMembers(T t) {
            Object obj = null;
            String string;
            try {
                Resources resources = this.application.getResources();
                int id = getId(resources, this.annotation);
                Class type = this.field.getType();
                if (String.class.isAssignableFrom(type)) {
                    string = resources.getString(id);
                } else {
                    if (!Boolean.TYPE.isAssignableFrom(type)) {
                        if (!Boolean.class.isAssignableFrom(type)) {
                            if (ColorStateList.class.isAssignableFrom(type)) {
                                string = resources.getColorStateList(id);
                            } else {
                                if (!Integer.TYPE.isAssignableFrom(type)) {
                                    if (!Integer.class.isAssignableFrom(type)) {
                                        if (Drawable.class.isAssignableFrom(type)) {
                                            string = resources.getDrawable(id);
                                        } else if (String[].class.isAssignableFrom(type)) {
                                            string = resources.getStringArray(id);
                                        } else {
                                            if (!int[].class.isAssignableFrom(type)) {
                                                if (!Integer[].class.isAssignableFrom(type)) {
                                                    if (Animation.class.isAssignableFrom(type)) {
                                                        string = AnimationUtils.loadAnimation(this.application, id);
                                                    } else {
                                                        if (Movie.class.isAssignableFrom(type)) {
                                                            string = resources.getMovie(id);
                                                        }
                                                        if (obj == null || !Nullable.notNullable(this.field)) {
                                                            this.field.setAccessible(true);
                                                            this.field.set(t, obj);
                                                        }
                                                        throw new NullPointerException(String.format("Can't inject null value into %s.%s when field is not @Nullable", new Object[]{this.field.getDeclaringClass(), this.field.getName()}));
                                                    }
                                                }
                                            }
                                            string = resources.getIntArray(id);
                                        }
                                    }
                                }
                                string = Integer.valueOf(resources.getInteger(id));
                            }
                        }
                    }
                    string = Boolean.valueOf(resources.getBoolean(id));
                }
                obj = string;
                if (obj == null) {
                }
                this.field.setAccessible(true);
                this.field.set(t, obj);
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (IllegalArgumentException unused) {
                string = "Can't assign %s value %s to %s field %s";
                Object[] objArr = new Object[4];
                objArr[0] = obj != null ? obj.getClass() : "(null)";
                objArr[1] = obj;
                objArr[2] = this.field.getType();
                objArr[3] = this.field.getName();
                throw new IllegalArgumentException(String.format(string, objArr));
            }
        }

        /* Access modifiers changed, original: protected */
        public int getId(Resources resources, InjectResource injectResource) {
            int value = injectResource.value();
            return value >= 0 ? value : resources.getIdentifier(injectResource.name(), null, this.application.getPackageName());
        }
    }

    public ResourceListener(Application application) {
        this.application = application;
    }

    public <I> void hear(TypeLiteral<I> typeLiteral, TypeEncounter<I> typeEncounter) {
        if (this.filter == null) {
            this.filter = Guice.createHierarchyTraversalFilter();
        } else {
            this.filter.reset();
        }
        Class rawType = typeLiteral.getRawType();
        while (isWorthScanning(rawType)) {
            Set<Field> allFields = this.filter.getAllFields(InjectResource.class.getName(), rawType);
            if (allFields != null) {
                for (Field field : allFields) {
                    if (field.isAnnotationPresent(InjectResource.class) && !Modifier.isStatic(field.getModifiers())) {
                        typeEncounter.register(new ResourceMembersInjector(field, this.application, (InjectResource) field.getAnnotation(InjectResource.class)));
                    }
                }
                rawType = rawType.getSuperclass();
            }
        }
    }

    private boolean isWorthScanning(Class<?> cls) {
        return this.filter.isWorthScanningForFields(InjectResource.class.getName(), cls);
    }
}
