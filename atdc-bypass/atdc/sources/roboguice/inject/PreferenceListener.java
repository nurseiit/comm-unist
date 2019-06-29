package roboguice.inject;

import android.app.Application;
import android.content.Context;
import com.google.inject.Guice;
import com.google.inject.HierarchyTraversalFilter;
import com.google.inject.MembersInjector;
import com.google.inject.Provider;
import com.google.inject.TypeLiteral;
import com.google.inject.spi.TypeEncounter;
import com.google.inject.spi.TypeListener;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Set;

public class PreferenceListener implements TypeListener {
    protected Application application;
    protected Provider<Context> contextProvider;
    private HierarchyTraversalFilter filter;
    protected ArrayList<PreferenceMembersInjector<?>> preferencesForInjection = new ArrayList();

    class PreferenceMembersInjector<T> implements MembersInjector<T> {
        protected InjectPreference annotation;
        protected Provider<Context> contextProvider;
        protected Field field;
        protected WeakReference<T> instanceRef;

        public PreferenceMembersInjector(Field field, Provider<Context> provider, InjectPreference injectPreference) {
            this.field = field;
            this.annotation = injectPreference;
            this.contextProvider = provider;
        }

        public void injectMembers(T t) {
            this.instanceRef = new WeakReference(t);
            PreferenceListener.this.registerPreferenceForInjection(this);
        }

        /* JADX WARNING: Removed duplicated region for block: B:23:0x0080 A:{ExcHandler: IllegalAccessException (r0_4 'e' java.lang.IllegalAccessException), Splitter:B:4:0x000d} */
        /* JADX WARNING: Removed duplicated region for block: B:20:0x0061  */
        /* JADX WARNING: Removed duplicated region for block: B:19:0x005c  */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing block: B:14:0x0052, code skipped:
            r5 = null;
     */
        /* JADX WARNING: Missing block: B:19:0x005c, code skipped:
            r7 = r5.getClass();
     */
        /* JADX WARNING: Missing block: B:20:0x0061, code skipped:
            r7 = "(null)";
     */
        /* JADX WARNING: Missing block: B:23:0x0080, code skipped:
            r0 = move-exception;
     */
        /* JADX WARNING: Missing block: B:25:0x0086, code skipped:
            throw new java.lang.RuntimeException(r0);
     */
        public void reallyInjectMembers() {
            /*
            r8 = this;
            r0 = r8.instanceRef;
            r0 = r0.get();
            if (r0 != 0) goto L_0x0009;
        L_0x0008:
            return;
        L_0x0009:
            r1 = 0;
            r2 = 0;
            r3 = 2;
            r4 = 1;
            r5 = r8.contextProvider;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0052 }
            r5 = r5.get();	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0052 }
            r5 = (android.preference.PreferenceActivity) r5;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0052 }
            r6 = r8.annotation;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0052 }
            r6 = r6.value();	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0052 }
            r5 = r5.findPreference(r6);	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0052 }
            if (r5 != 0) goto L_0x0047;
        L_0x0021:
            r1 = r8.field;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r1 = roboguice.inject.Nullable.notNullable(r1);	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            if (r1 == 0) goto L_0x0047;
        L_0x0029:
            r0 = new java.lang.NullPointerException;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r1 = "Can't inject null value into %s.%s when field is not @Nullable";
            r6 = new java.lang.Object[r3];	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r7 = r8.field;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r7 = r7.getDeclaringClass();	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r6[r2] = r7;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r7 = r8.field;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r7 = r7.getName();	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r6[r4] = r7;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r1 = java.lang.String.format(r1, r6);	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r0.<init>(r1);	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            throw r0;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
        L_0x0047:
            r1 = r8.field;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r1.setAccessible(r4);	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r1 = r8.field;	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            r1.set(r0, r5);	 Catch:{ IllegalAccessException -> 0x0080, IllegalArgumentException -> 0x0053 }
            return;
        L_0x0052:
            r5 = r1;
        L_0x0053:
            r0 = new java.lang.IllegalArgumentException;
            r1 = "Can't assign %s value %s to %s field %s";
            r6 = 4;
            r6 = new java.lang.Object[r6];
            if (r5 == 0) goto L_0x0061;
        L_0x005c:
            r7 = r5.getClass();
            goto L_0x0063;
        L_0x0061:
            r7 = "(null)";
        L_0x0063:
            r6[r2] = r7;
            r6[r4] = r5;
            r2 = r8.field;
            r2 = r2.getType();
            r6[r3] = r2;
            r2 = 3;
            r3 = r8.field;
            r3 = r3.getName();
            r6[r2] = r3;
            r1 = java.lang.String.format(r1, r6);
            r0.<init>(r1);
            throw r0;
        L_0x0080:
            r0 = move-exception;
            r1 = new java.lang.RuntimeException;
            r1.<init>(r0);
            throw r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: roboguice.inject.PreferenceListener$PreferenceMembersInjector.reallyInjectMembers():void");
        }
    }

    public PreferenceListener(Provider<Context> provider, Application application) {
        this.contextProvider = provider;
        this.application = application;
    }

    public <I> void hear(TypeLiteral<I> typeLiteral, TypeEncounter<I> typeEncounter) {
        if (this.filter == null) {
            this.filter = Guice.createHierarchyTraversalFilter();
        } else {
            this.filter.reset();
        }
        for (Class rawType = typeLiteral.getRawType(); isWorthScanning(rawType); rawType = rawType.getSuperclass()) {
            Set<Field> allFields = this.filter.getAllFields(InjectPreference.class.getName(), rawType);
            if (allFields != null) {
                for (Field field : allFields) {
                    if (field.isAnnotationPresent(InjectPreference.class)) {
                        if (Modifier.isStatic(field.getModifiers())) {
                            throw new UnsupportedOperationException("Preferences may not be statically injected");
                        }
                        typeEncounter.register(new PreferenceMembersInjector(field, this.contextProvider, (InjectPreference) field.getAnnotation(InjectPreference.class)));
                    }
                }
                continue;
            }
        }
    }

    private boolean isWorthScanning(Class<?> cls) {
        return this.filter.isWorthScanningForFields(InjectPreference.class.getName(), cls);
    }

    public void registerPreferenceForInjection(PreferenceMembersInjector<?> preferenceMembersInjector) {
        this.preferencesForInjection.add(preferenceMembersInjector);
    }

    public void injectPreferenceViews() {
        for (int size = this.preferencesForInjection.size() - 1; size >= 0; size--) {
            ((PreferenceMembersInjector) this.preferencesForInjection.remove(size)).reallyInjectMembers();
        }
    }
}
