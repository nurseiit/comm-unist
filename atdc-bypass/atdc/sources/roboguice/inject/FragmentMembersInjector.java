package roboguice.inject;

import android.app.Activity;
import android.content.Context;
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

public class FragmentMembersInjector<T> implements MembersInjector<T> {
    protected static final WeakHashMap<Object, ArrayList<FragmentMembersInjector<?>>> VIEW_MEMBERS_INJECTORS = new WeakHashMap();
    protected Provider<Activity> activityProvider;
    protected Annotation annotation;
    protected Field field;
    protected Provider fragManager;
    protected f fragUtils;
    protected WeakReference<T> instanceRef;

    public FragmentMembersInjector(Field field, Annotation annotation, TypeEncounter<T> typeEncounter, f<?, ?> fVar) {
        this.field = field;
        this.annotation = annotation;
        this.activityProvider = typeEncounter.getProvider(Activity.class);
        if (fVar != null) {
            this.fragUtils = fVar;
            this.fragManager = typeEncounter.getProvider(fVar.fragmentManagerType());
        }
    }

    public void injectMembers(T t) {
        synchronized (FragmentMembersInjector.class) {
            Object obj = (this.fragUtils == null || !this.fragUtils.fragmentType().isInstance(t)) ? null : 1;
            if (obj != null) {
                obj = t;
            } else {
                obj = this.activityProvider.get();
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
        synchronized (FragmentMembersInjector.class) {
            ArrayList arrayList = (ArrayList) VIEW_MEMBERS_INJECTORS.get(obj);
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((FragmentMembersInjector) it.next()).reallyInjectMembers(obj);
                }
            }
        }
    }
}
