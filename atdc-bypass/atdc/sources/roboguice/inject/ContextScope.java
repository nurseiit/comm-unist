package roboguice.inject;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import com.google.inject.Key;
import com.google.inject.Provider;
import com.google.inject.Scope;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import roboguice.util.RoboContext;

public class ContextScope implements Scope {
    protected Application application;
    protected Map<Key<?>, Object> applicationScopedObjects = new HashMap();
    protected ThreadLocal<Stack<WeakReference<Context>>> contextThreadLocal = new ThreadLocal();

    public ContextScope(Application application) {
        this.application = application;
        enter(application);
    }

    public void enter(Context context) {
        synchronized (ContextScope.class) {
            Stack contextStack = getContextStack();
            Map scopedObjectMap = getScopedObjectMap(context);
            contextStack.push(new WeakReference(context));
            Class cls = context.getClass();
            do {
                scopedObjectMap.put(Key.get(cls), context);
                cls = cls.getSuperclass();
            } while (cls != Object.class);
        }
    }

    public void exit(Context context) {
        synchronized (ContextScope.class) {
            Context context2 = (Context) ((WeakReference) getContextStack().pop()).get();
            if (context2 == null || context2 == context) {
            } else {
                throw new IllegalArgumentException(String.format("Scope for %s must be opened before it can be closed", new Object[]{context}));
            }
        }
    }

    public <T> Provider<T> scope(final Key<T> key, final Provider<T> provider) {
        return new Provider<T>() {
            /* JADX WARNING: Missing block: B:14:0x003c, code skipped:
            return r2;
     */
            public T get() {
                /*
                r4 = this;
                r0 = roboguice.inject.ContextScope.class;
                monitor-enter(r0);
                r1 = roboguice.inject.ContextScope.this;	 Catch:{ all -> 0x003d }
                r1 = r1.getContextStack();	 Catch:{ all -> 0x003d }
                r1 = r1.peek();	 Catch:{ all -> 0x003d }
                r1 = (java.lang.ref.WeakReference) r1;	 Catch:{ all -> 0x003d }
                r1 = r1.get();	 Catch:{ all -> 0x003d }
                r1 = (android.content.Context) r1;	 Catch:{ all -> 0x003d }
                r2 = roboguice.inject.ContextScope.this;	 Catch:{ all -> 0x003d }
                r1 = r2.getScopedObjectMap(r1);	 Catch:{ all -> 0x003d }
                if (r1 != 0) goto L_0x0020;
            L_0x001d:
                r1 = 0;
                monitor-exit(r0);	 Catch:{ all -> 0x003d }
                return r1;
            L_0x0020:
                r2 = r2;	 Catch:{ all -> 0x003d }
                r2 = r1.get(r2);	 Catch:{ all -> 0x003d }
                if (r2 != 0) goto L_0x003b;
            L_0x0028:
                r3 = r2;	 Catch:{ all -> 0x003d }
                r3 = r1.containsKey(r3);	 Catch:{ all -> 0x003d }
                if (r3 != 0) goto L_0x003b;
            L_0x0030:
                r2 = r3;	 Catch:{ all -> 0x003d }
                r2 = r2.get();	 Catch:{ all -> 0x003d }
                r3 = r2;	 Catch:{ all -> 0x003d }
                r1.put(r3, r2);	 Catch:{ all -> 0x003d }
            L_0x003b:
                monitor-exit(r0);	 Catch:{ all -> 0x003d }
                return r2;
            L_0x003d:
                r1 = move-exception;
                monitor-exit(r0);	 Catch:{ all -> 0x003d }
                throw r1;
                */
                throw new UnsupportedOperationException("Method not decompiled: roboguice.inject.ContextScope$AnonymousClass1.get():java.lang.Object");
            }
        };
    }

    public Stack<WeakReference<Context>> getContextStack() {
        Stack<WeakReference<Context>> stack = (Stack) this.contextThreadLocal.get();
        if (stack != null) {
            return stack;
        }
        Stack stack2 = new Stack();
        this.contextThreadLocal.set(stack2);
        return stack2;
    }

    /* Access modifiers changed, original: protected */
    public Map<Key<?>, Object> getScopedObjectMap(Context context) {
        boolean z;
        Context context2 = context;
        while (true) {
            z = context2 instanceof RoboContext;
            if (!z && !(context2 instanceof Application) && (context2 instanceof ContextWrapper)) {
                context2 = ((ContextWrapper) context2).getBaseContext();
            }
        }
        if (context2 instanceof Application) {
            return this.applicationScopedObjects;
        }
        if (z) {
            return ((RoboContext) context2).getScopedObjectMap();
        }
        throw new IllegalArgumentException(String.format("%s does not appear to be a RoboGuice context (instanceof RoboContext)", new Object[]{context}));
    }
}
