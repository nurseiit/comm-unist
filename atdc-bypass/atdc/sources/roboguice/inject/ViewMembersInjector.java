package roboguice.inject;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.google.inject.MembersInjector;
import com.google.inject.Provider;
import com.google.inject.spi.TypeEncounter;
import java.lang.annotation.Annotation;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import roboguice.fragment.FragmentUtil.f;

public class ViewMembersInjector<T> implements MembersInjector<T> {
    protected static final WeakHashMap<Object, ArrayList<ViewMembersInjector<?>>> VIEW_MEMBERS_INJECTORS = new WeakHashMap();
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
            ArrayList arrayList = (ArrayList) VIEW_MEMBERS_INJECTORS.get(obj);
            if (arrayList == null) {
                arrayList = new ArrayList();
                VIEW_MEMBERS_INJECTORS.put(obj, arrayList);
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
            ArrayList arrayList = (ArrayList) VIEW_MEMBERS_INJECTORS.get(obj);
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((ViewMembersInjector) it.next()).reallyInjectMembers(obj);
                }
            }
        }
    }
}
