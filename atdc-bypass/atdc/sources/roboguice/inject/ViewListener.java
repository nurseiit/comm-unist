package roboguice.inject;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.inject.Guice;
import com.google.inject.HierarchyTraversalFilter;
import com.google.inject.MembersInjector;
import com.google.inject.Provider;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.TypeEncounter;
import com.google.inject.spi.TypeListener;
import edu.umd.cs.findbugs.annotations.SuppressWarnings;
import java.lang.annotation.Annotation;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;
import javax.inject.Singleton;
import roboguice.fragment.FragmentUtil;
import roboguice.fragment.FragmentUtil.f;

@Singleton
public class ViewListener implements TypeListener {
    private HierarchyTraversalFilter filter;

    public static class ViewMembersInjector<T> implements MembersInjector<T> {
        @SuppressWarnings({"MS_SHOULD_BE_FINAL"})
        protected static WeakHashMap<Object, ArrayList<ViewMembersInjector<?>>> viewMembersInjectors = new WeakHashMap();
        protected Provider<Activity> activityProvider;
        protected Annotation annotation;
        protected Field field;
        protected Provider fragManager;
        protected f fragUtils;
        protected WeakReference<T> instanceRef;

        public ViewMembersInjector(Field field, Annotation annotation, TypeEncounter<T> typeEncounter, f<?, ?> fVar) {
            this.field = field;
            this.annotation = annotation;
            this.activityProvider = typeEncounter.getProvider(Activity.class);
            if (fVar != null) {
                this.fragUtils = fVar;
                this.fragManager = typeEncounter.getProvider(fVar.fragmentManagerType());
            }
        }

        public void injectMembers(T t) {
            synchronized (ViewMembersInjector.class) {
                Object obj = (Activity) this.activityProvider.get();
                Object obj2 = (this.fragUtils == null || !this.fragUtils.fragmentType().isInstance(t)) ? null : 1;
                if (obj2 != null || (t instanceof View)) {
                    obj = t;
                }
                if (obj == null) {
                    return;
                }
                ArrayList arrayList = (ArrayList) viewMembersInjectors.get(obj);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    viewMembersInjectors.put(obj, arrayList);
                }
                arrayList.add(this);
                this.instanceRef = new WeakReference(t);
            }
        }

        public void reallyInjectMembers(Object obj) {
            if (this.annotation instanceof InjectView) {
                reallyInjectMemberViews(obj);
            } else {
                reallyInjectMemberFragments(obj);
            }
        }

        /* Access modifiers changed, original: protected */
        public void reallyInjectMemberViews(Object obj) {
            Object obj2;
            boolean z = this.fragUtils != null && this.fragUtils.fragmentType().isInstance(obj);
            if (z) {
                obj2 = obj;
            } else {
                obj2 = this.instanceRef.get();
            }
            if (obj2 != null) {
                InjectView injectView = (InjectView) this.annotation;
                int value = injectView.value();
                View extractContainerView = extractContainerView(obj, z);
                if (value >= 0) {
                    obj = extractContainerView.findViewById(value);
                } else {
                    obj = extractContainerView.findViewWithTag(injectView.tag());
                }
                if (obj == null && Nullable.notNullable(this.field)) {
                    throw new NullPointerException(String.format("Can't inject null value into %s.%s when field is not @Nullable", new Object[]{this.field.getDeclaringClass(), this.field.getName()}));
                }
                try {
                    this.field.setAccessible(true);
                    this.field.set(obj2, obj);
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (IllegalArgumentException e2) {
                    String str = "Can't assign %s value %s to %s field %s";
                    Object[] objArr = new Object[4];
                    objArr[0] = obj != null ? obj.getClass() : "(null)";
                    objArr[1] = obj;
                    objArr[2] = this.field.getType();
                    objArr[3] = this.field.getName();
                    throw new IllegalArgumentException(String.format(str, objArr), e2);
                }
            }
        }

        private View extractContainerView(Object obj, boolean z) {
            if (z) {
                return this.fragUtils.getView(obj);
            }
            if (obj instanceof View) {
                return (View) obj;
            }
            if (obj instanceof Activity) {
                return ((Activity) obj).getWindow().getDecorView();
            }
            throw new UnsupportedOperationException("Can't inject view into something that is not a Fragment, Activity or View.");
        }

        /* Access modifiers changed, original: protected */
        public void reallyInjectMemberFragments(Object obj) {
            Object obj2 = this.instanceRef.get();
            if (obj2 != null) {
                if (!(obj instanceof Context) || (obj instanceof Activity)) {
                    obj = null;
                    try {
                        Object findFragmentById;
                        InjectFragment injectFragment = (InjectFragment) this.annotation;
                        int value = injectFragment.value();
                        if (value >= 0) {
                            findFragmentById = this.fragUtils.findFragmentById(this.fragManager.get(), value);
                        } else {
                            findFragmentById = this.fragUtils.findFragmentByTag(this.fragManager.get(), injectFragment.tag());
                        }
                        obj = findFragmentById;
                        if (obj == null && Nullable.notNullable(this.field)) {
                            throw new NullPointerException(String.format("Can't inject null value into %s.%s when field is not @Nullable", new Object[]{this.field.getDeclaringClass(), this.field.getName()}));
                        }
                        this.field.setAccessible(true);
                        this.field.set(obj2, obj);
                        return;
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    } catch (IllegalArgumentException e2) {
                        String str = "Can't assign %s value %s to %s field %s";
                        Object[] objArr = new Object[4];
                        objArr[0] = obj != null ? obj.getClass() : "(null)";
                        objArr[1] = obj;
                        objArr[2] = this.field.getType();
                        objArr[3] = this.field.getName();
                        throw new IllegalArgumentException(String.format(str, objArr), e2);
                    }
                }
                throw new UnsupportedOperationException("Can't inject fragment into a non-Activity context");
            }
        }

        protected static void injectViews(Object obj) {
            synchronized (ViewMembersInjector.class) {
                ArrayList arrayList = (ArrayList) viewMembersInjectors.get(obj);
                if (arrayList != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((ViewMembersInjector) it.next()).reallyInjectMembers(obj);
                    }
                }
            }
        }
    }

    public <I> void hear(TypeLiteral<I> typeLiteral, TypeEncounter<I> typeEncounter) {
        if (this.filter == null) {
            this.filter = Guice.createHierarchyTraversalFilter();
        } else {
            this.filter.reset();
        }
        for (Class rawType = typeLiteral.getRawType(); isWorthScanning(rawType); rawType = rawType.getSuperclass()) {
            Set<Field> allFields = this.filter.getAllFields(InjectView.class.getName(), rawType);
            if (allFields != null) {
                for (Field prepareViewMembersInjector : allFields) {
                    prepareViewMembersInjector(typeEncounter, prepareViewMembersInjector);
                }
            }
            allFields = this.filter.getAllFields(InjectFragment.class.getName(), rawType);
            if (allFields != null) {
                for (Field prepareViewMembersInjector2 : allFields) {
                    prepareViewMembersInjector(typeEncounter, prepareViewMembersInjector2);
                }
            }
        }
    }

    private <I> void prepareViewMembersInjector(TypeEncounter<I> typeEncounter, Field field) {
        if (field.isAnnotationPresent(InjectView.class)) {
            if (Modifier.isStatic(field.getModifiers())) {
                throw new UnsupportedOperationException("Views may not be statically injected");
            } else if (!View.class.isAssignableFrom(field.getType())) {
                throw new UnsupportedOperationException("You may only use @InjectView on fields that extend View");
            } else if (!Context.class.isAssignableFrom(field.getDeclaringClass()) || Activity.class.isAssignableFrom(field.getDeclaringClass())) {
                f fVar = (FragmentUtil.hasSupport && (FragmentUtil.supportActivity.isAssignableFrom(field.getDeclaringClass()) || FragmentUtil.supportFrag.fragmentType().isAssignableFrom(field.getDeclaringClass()))) ? FragmentUtil.supportFrag : FragmentUtil.nativeFrag;
                typeEncounter.register(new ViewMembersInjector(field, field.getAnnotation(InjectView.class), typeEncounter, fVar));
            } else {
                throw new UnsupportedOperationException("You may only use @InjectView in Activity contexts");
            }
        } else if (!field.isAnnotationPresent(InjectFragment.class)) {
        } else {
            if (!FragmentUtil.hasNative && !FragmentUtil.hasSupport) {
                throw new RuntimeException(new ClassNotFoundException("No fragment classes were available"));
            } else if (Modifier.isStatic(field.getModifiers())) {
                throw new UnsupportedOperationException("Fragments may not be statically injected");
            } else {
                Object obj = null;
                Object obj2 = (FragmentUtil.hasNative && FragmentUtil.nativeFrag.fragmentType().isAssignableFrom(field.getType())) ? 1 : null;
                Object obj3 = (FragmentUtil.hasSupport && FragmentUtil.supportFrag.fragmentType().isAssignableFrom(field.getType())) ? 1 : null;
                Object obj4 = (FragmentUtil.hasSupport && FragmentUtil.supportActivity.isAssignableFrom(field.getDeclaringClass())) ? 1 : null;
                if (obj4 == null && Activity.class.isAssignableFrom(field.getDeclaringClass())) {
                    obj = 1;
                }
                if ((obj != null && obj2 != null) || (obj4 != null && obj3 != null)) {
                    typeEncounter.register(new ViewMembersInjector(field, field.getAnnotation(InjectFragment.class), typeEncounter, obj != null ? FragmentUtil.nativeFrag : FragmentUtil.supportFrag));
                } else if (obj != null && obj2 == null) {
                    throw new UnsupportedOperationException("You may only use @InjectFragment in native activities if fields are descended from type android.app.Fragment");
                } else if (obj4 == null && obj == null) {
                    throw new UnsupportedOperationException("You may only use @InjectFragment in Activity contexts");
                } else if (obj4 == null || obj3 != null) {
                    throw new RuntimeException("This should never happen.");
                } else {
                    throw new UnsupportedOperationException("You may only use @InjectFragment in support activities if fields are descended from type android.support.v4.app.Fragment");
                }
            }
        }
    }

    private boolean isWorthScanning(Class<?> cls) {
        return this.filter.isWorthScanningForFields(InjectView.class.getName(), cls) || this.filter.isWorthScanningForFields(InjectFragment.class.getName(), cls);
    }
}
