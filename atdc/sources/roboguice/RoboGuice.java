package roboguice;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import com.google.inject.Guice;
import com.google.inject.HierarchyTraversalFilter;
import com.google.inject.HierarchyTraversalFilterFactory;
import com.google.inject.Injector;
import com.google.inject.Module;
import com.google.inject.Stage;
import com.google.inject.internal.util.Stopwatch;
import com.google.inject.util.Modules;
import edu.umd.cs.findbugs.annotations.SuppressWarnings;
import java.util.HashSet;
import java.util.List;
import java.util.WeakHashMap;
import roboguice.config.DefaultRoboModule;
import roboguice.config.RoboGuiceHierarchyTraversalFilter;
import roboguice.event.EventManager;
import roboguice.inject.ContextScope;
import roboguice.inject.ContextScopedRoboInjector;
import roboguice.inject.ResourceListener;
import roboguice.inject.RoboInjector;
import roboguice.inject.ViewListener;

public final class RoboGuice {
    @SuppressWarnings({"MS_SHOULD_BE_FINAL"})
    public static Stage DEFAULT_STAGE = Stage.PRODUCTION;
    @SuppressWarnings({"MS_SHOULD_BE_FINAL"})
    protected static WeakHashMap<Application, Injector> injectors = new WeakHashMap();
    @SuppressWarnings({"MS_SHOULD_BE_FINAL"})
    protected static WeakHashMap<Application, ResourceListener> resourceListeners = new WeakHashMap();
    private static boolean useAnnotationDatabases = true;
    @SuppressWarnings({"MS_SHOULD_BE_FINAL"})
    protected static WeakHashMap<Application, ViewListener> viewListeners = new WeakHashMap();

    public static final class Util {
        private Util() {
        }

        public static void reset() {
            RoboGuice.injectors.clear();
            RoboGuice.resourceListeners.clear();
            RoboGuice.viewListeners.clear();
            Guice.setAnnotationDatabasePackageNames(null);
            Guice.setHierarchyTraversalFilterFactory(new HierarchyTraversalFilterFactory());
        }
    }

    static {
        String str = System.getenv("roboguice.useAnnotationDatabases");
        if (str != null) {
            useAnnotationDatabases = Boolean.parseBoolean(str);
        }
    }

    private RoboGuice() {
    }

    public static Injector getOrCreateBaseApplicationInjector(Application application) {
        Injector injector = (Injector) injectors.get(application);
        if (injector != null) {
            return injector;
        }
        synchronized (RoboGuice.class) {
            Injector injector2 = (Injector) injectors.get(application);
            if (injector2 != null) {
                return injector2;
            }
            Injector orCreateBaseApplicationInjector = getOrCreateBaseApplicationInjector(application, DEFAULT_STAGE);
            return orCreateBaseApplicationInjector;
        }
    }

    public static Injector getOrCreateBaseApplicationInjector(Application application, Stage stage, Module... moduleArr) {
        Injector createGuiceInjector;
        Stopwatch stopwatch = new Stopwatch();
        synchronized (RoboGuice.class) {
            initializeAnnotationDatabaseFinderAndHierarchyTraversalFilterFactory(application);
            createGuiceInjector = createGuiceInjector(application, stage, stopwatch, moduleArr);
        }
        return createGuiceInjector;
    }

    public static Injector overrideApplicationInjector(Application application, Module... moduleArr) {
        Injector createInjector;
        synchronized (RoboGuice.class) {
            Iterable extractModulesFromManifest = extractModulesFromManifest(application);
            createInjector = Guice.createInjector(DEFAULT_STAGE, Modules.override(extractModulesFromManifest).with(moduleArr));
            injectors.put(application, createInjector);
        }
        return createInjector;
    }

    public static Injector getOrCreateBaseApplicationInjector(Application application, Stage stage) {
        Injector createGuiceInjector;
        Stopwatch stopwatch = new Stopwatch();
        synchronized (RoboGuice.class) {
            initializeAnnotationDatabaseFinderAndHierarchyTraversalFilterFactory(application);
            List extractModulesFromManifest = extractModulesFromManifest(application);
            createGuiceInjector = createGuiceInjector(application, stage, stopwatch, (Module[]) extractModulesFromManifest.toArray(new Module[extractModulesFromManifest.size()]));
        }
        return createGuiceInjector;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x005f */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    private static java.util.List<com.google.inject.Module> extractModulesFromManifest(android.app.Application r9) {
        /*
        r0 = new java.util.ArrayList;	 Catch:{ Exception -> 0x006a }
        r0.<init>();	 Catch:{ Exception -> 0x006a }
        r1 = r9.getPackageManager();	 Catch:{ Exception -> 0x006a }
        r2 = r9.getPackageName();	 Catch:{ Exception -> 0x006a }
        r3 = 128; // 0x80 float:1.794E-43 double:6.32E-322;
        r1 = r1.getApplicationInfo(r2, r3);	 Catch:{ Exception -> 0x006a }
        r1 = r1.metaData;	 Catch:{ Exception -> 0x006a }
        if (r1 == 0) goto L_0x001e;
    L_0x0017:
        r2 = "roboguice.modules";
        r1 = r1.getString(r2);	 Catch:{ Exception -> 0x006a }
        goto L_0x001f;
    L_0x001e:
        r1 = 0;
    L_0x001f:
        r2 = newDefaultRoboModule(r9);	 Catch:{ Exception -> 0x006a }
        r3 = 0;
        if (r1 == 0) goto L_0x002d;
    L_0x0026:
        r4 = "[\\s,]";
        r1 = r1.split(r4);	 Catch:{ Exception -> 0x006a }
        goto L_0x002f;
    L_0x002d:
        r1 = new java.lang.String[r3];	 Catch:{ Exception -> 0x006a }
    L_0x002f:
        r0.add(r2);	 Catch:{ Exception -> 0x006a }
        r2 = r1.length;	 Catch:{ Exception -> 0x006a }
        r4 = 0;
    L_0x0034:
        if (r4 >= r2) goto L_0x0069;
    L_0x0036:
        r5 = r1[r4];	 Catch:{ Exception -> 0x006a }
        r6 = roboguice.util.Strings.notEmpty(r5);	 Catch:{ Exception -> 0x006a }
        if (r6 == 0) goto L_0x0066;
    L_0x003e:
        r5 = java.lang.Class.forName(r5);	 Catch:{ Exception -> 0x006a }
        r6 = com.google.inject.Module.class;
        r5 = r5.asSubclass(r6);	 Catch:{ Exception -> 0x006a }
        r6 = 1;
        r7 = new java.lang.Class[r6];	 Catch:{ NoSuchMethodException -> 0x005f }
        r8 = android.app.Application.class;
        r7[r3] = r8;	 Catch:{ NoSuchMethodException -> 0x005f }
        r7 = r5.getDeclaredConstructor(r7);	 Catch:{ NoSuchMethodException -> 0x005f }
        r6 = new java.lang.Object[r6];	 Catch:{ NoSuchMethodException -> 0x005f }
        r6[r3] = r9;	 Catch:{ NoSuchMethodException -> 0x005f }
        r6 = r7.newInstance(r6);	 Catch:{ NoSuchMethodException -> 0x005f }
        r0.add(r6);	 Catch:{ NoSuchMethodException -> 0x005f }
        goto L_0x0066;
    L_0x005f:
        r5 = r5.newInstance();	 Catch:{ Exception -> 0x006a }
        r0.add(r5);	 Catch:{ Exception -> 0x006a }
    L_0x0066:
        r4 = r4 + 1;
        goto L_0x0034;
    L_0x0069:
        return r0;
    L_0x006a:
        r9 = move-exception;
        r0 = new java.lang.RuntimeException;
        r1 = "Unable to instantiate your Module.  Check your roboguice.modules metadata in your AndroidManifest.xml";
        r0.<init>(r1, r9);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: roboguice.RoboGuice.extractModulesFromManifest(android.app.Application):java.util.List");
    }

    private static Injector createGuiceInjector(Application application, Stage stage, Stopwatch stopwatch, Module... moduleArr) {
        try {
            Injector createInjector;
            synchronized (RoboGuice.class) {
                createInjector = Guice.createInjector(stage, moduleArr);
                injectors.put(application, createInjector);
            }
            stopwatch.resetAndLog("BaseApplicationInjector creation");
            return createInjector;
        } catch (Throwable th) {
            stopwatch.resetAndLog("BaseApplicationInjector creation");
        }
    }

    public static RoboInjector getInjector(Context context) {
        return new ContextScopedRoboInjector(context, getOrCreateBaseApplicationInjector((Application) context.getApplicationContext()));
    }

    public static <T> T injectMembers(Context context, T t) {
        getInjector(context).injectMembers(t);
        return t;
    }

    public static DefaultRoboModule newDefaultRoboModule(Application application) {
        return new DefaultRoboModule(application, new ContextScope(application), getViewListener(application), getResourceListener(application));
    }

    public static void setUseAnnotationDatabases(boolean z) {
        useAnnotationDatabases = z;
    }

    @SuppressWarnings(justification = "Double check lock", value = {"NP_LOAD_OF_KNOWN_NULL_VALUE"})
    protected static ResourceListener getResourceListener(Application application) {
        ResourceListener resourceListener = (ResourceListener) resourceListeners.get(application);
        if (resourceListener == null) {
            synchronized (RoboGuice.class) {
                if (resourceListener == null) {
                    try {
                        resourceListener = new ResourceListener(application);
                        resourceListeners.put(application, resourceListener);
                    } catch (Throwable th) {
                    }
                }
            }
        }
        return resourceListener;
    }

    @SuppressWarnings(justification = "Double check lock", value = {"NP_LOAD_OF_KNOWN_NULL_VALUE"})
    protected static ViewListener getViewListener(Application application) {
        ViewListener viewListener = (ViewListener) viewListeners.get(application);
        if (viewListener == null) {
            synchronized (RoboGuice.class) {
                if (viewListener == null) {
                    try {
                        viewListener = new ViewListener();
                        viewListeners.put(application, viewListener);
                    } catch (Throwable th) {
                    }
                }
            }
        }
        return viewListener;
    }

    public static void destroyInjector(Context context) {
        ((EventManager) getInjector(context).getInstance(EventManager.class)).destroy();
        injectors.remove(context);
    }

    private static void initializeAnnotationDatabaseFinderAndHierarchyTraversalFilterFactory(Application application) {
        if (useAnnotationDatabases) {
            Log.d(RoboGuice.class.getName(), "Using annotation database(s).");
            long currentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
            try {
                String string;
                HashSet hashSet = new HashSet();
                try {
                    Bundle bundle = application.getPackageManager().getApplicationInfo(application.getPackageName(), 128).metaData;
                    string = bundle != null ? bundle.getString("roboguice.annotations.packages") : null;
                    if (string != null) {
                        for (Object add : string.split("[\\s,]")) {
                            hashSet.add(add);
                        }
                    }
                } catch (NameNotFoundException e) {
                    Log.d(RoboGuice.class.getName(), "Failed to read manifest properly.");
                    e.printStackTrace();
                }
                if (hashSet.isEmpty()) {
                    hashSet.add("");
                }
                hashSet.add("roboguice");
                string = RoboGuice.class.getName();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Using annotation database(s) : ");
                stringBuilder.append(hashSet.toString());
                Log.d(string, stringBuilder.toString());
                String[] strArr = new String[hashSet.size()];
                hashSet.toArray(strArr);
                Guice.setAnnotationDatabasePackageNames(strArr);
                long currentThreadTimeMillis2 = SystemClock.currentThreadTimeMillis();
                string = RoboGuice.class.getName();
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("Time spent loading annotation databases : ");
                stringBuilder2.append(currentThreadTimeMillis2 - currentThreadTimeMillis);
                Log.d(string, stringBuilder2.toString());
                return;
            } catch (Exception e2) {
                throw new IllegalStateException("Unable to use annotation database(s)", e2);
            }
        }
        Log.d(RoboGuice.class.getName(), "Using full reflection. Try using RoboGuice annotation processor for better performance.");
        Guice.setHierarchyTraversalFilterFactory(new HierarchyTraversalFilterFactory() {
            public HierarchyTraversalFilter createHierarchyTraversalFilter() {
                return new RoboGuiceHierarchyTraversalFilter();
            }
        });
    }
}
