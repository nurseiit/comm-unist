package roboguice;

import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.inject.AnnotationDatabase;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import roboguice.fragment.FragmentUtil;

public class AnnotationDatabaseImpl extends AnnotationDatabase {
    public void fillAnnotationClassesAndFieldsNames(HashMap<String, Map<String, Set<String>>> hashMap) {
        String str = "com.google.inject.Inject";
        Map map = (Map) hashMap.get(str);
        if (map == null) {
            map = new HashMap();
            hashMap.put(str, map);
        }
        HashSet hashSet = new HashSet();
        hashSet.add("application");
        map.put("roboguice.inject.SharedPreferencesProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("activity");
        map.put("roboguice.fragment.provided.NativeFragmentUtil$FragmentManagerProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("context");
        map.put("roboguice.inject.AssetManagerProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboTabActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboSherlockActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("application");
        map.put("roboguice.inject.RoboApplicationProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("activity");
        map.put("roboguice.fragment.support.SupportFragmentUtil$FragmentManagerProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboSherlockPreferenceActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboExpandableListActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboListActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboActivityGroup", hashSet);
        hashSet = new HashSet();
        hashSet.add("context");
        map.put("roboguice.inject.ContentResolverProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboSherlockAccountAuthenticatorActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("handlerProvider");
        map.put("roboguice.event.eventListener.factory.EventListenerThreadingDecorator", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboSherlockFragmentActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("provider");
        map.put("roboguice.inject.ContextScopedProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboLauncherActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("context");
        map.put("roboguice.inject.AccountManagerProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboFragmentActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("context");
        map.put("roboguice.event.EventManager", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("activity");
        map.put("roboguice.inject.ContentViewListener", hashSet);
        hashSet = new HashSet();
        hashSet.add("activity");
        map.put("roboguice.inject.FragmentManagerProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboSherlockListActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboPreferenceActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboActionBarActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboMapActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add("ignored");
        map.put("roboguice.activity.RoboAccountAuthenticatorActivity", hashSet);
        hashSet = new HashSet();
        hashSet.add(Param.VALUE);
        map.put("roboguice.inject.SharedPreferencesProvider$PreferencesNameHolder", hashSet);
        hashSet = new HashSet();
        hashSet.add("lnImpl");
        map.put("roboguice.util.Ln", hashSet);
    }

    public void fillAnnotationClassesAndMethods(HashMap<String, Map<String, Set<String>>> hashMap) {
        String str = "com.google.inject.Provides";
        Map map = (Map) hashMap.get(str);
        if (map == null) {
            map = new HashMap();
            hashMap.put(str, map);
        }
        HashSet hashSet = new HashSet();
        hashSet.add("providesAndroidId");
        hashSet.add("providesPackageInfo");
        map.put("roboguice.config.DefaultRoboModule", hashSet);
        str = "roboguice.event.Observes";
        map = (Map) hashMap.get(str);
        if (map == null) {
            map = new HashMap();
            hashMap.put(str, map);
        }
        HashSet hashSet2 = new HashSet();
        hashSet2.add("optionallySetContentView:roboguice.context.event.OnCreateEvent");
        map.put("roboguice.inject.ContentViewListener", hashSet2);
    }

    public void fillAnnotationClassesAndConstructors(HashMap<String, Map<String, Set<String>>> hashMap) {
        String str = "com.google.inject.Inject";
        Map map = (Map) hashMap.get(str);
        if (map == null) {
            map = new HashMap();
            hashMap.put(str, map);
        }
        HashSet hashSet = new HashSet();
        hashSet.add("<init>:roboguice.inject.SharedPreferencesProvider$PreferencesNameHolder");
        map.put("roboguice.inject.SharedPreferencesProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("<init>:android.app.Application");
        map.put("roboguice.inject.ResourcesProvider", hashSet);
        hashSet = new HashSet();
        hashSet.add("<init>:android.content.res.Resources");
        map.put("roboguice.inject.StringResourceFactory", hashSet);
        hashSet = new HashSet();
        hashSet.add("<init>:android.app.Application");
        map.put("roboguice.util.LnImpl", hashSet);
    }

    public void fillClassesContainingInjectionPointSet(HashSet<String> hashSet) {
        hashSet.add("roboguice.inject.SharedPreferencesProvider");
        hashSet.add("roboguice.inject.ResourcesProvider");
        hashSet.add("roboguice.config.DefaultRoboModule");
        hashSet.add("roboguice.inject.StringResourceFactory");
        hashSet.add("roboguice.fragment.provided.NativeFragmentUtil$FragmentManagerProvider");
        hashSet.add("roboguice.util.LnImpl");
        hashSet.add("roboguice.activity.RoboTabActivity");
        hashSet.add("roboguice.inject.AssetManagerProvider");
        hashSet.add("roboguice.activity.RoboSherlockActivity");
        hashSet.add("roboguice.inject.RoboApplicationProvider");
        hashSet.add("roboguice.fragment.support.SupportFragmentUtil$FragmentManagerProvider");
        hashSet.add("roboguice.activity.RoboExpandableListActivity");
        hashSet.add("roboguice.activity.RoboSherlockPreferenceActivity");
        hashSet.add("roboguice.activity.RoboListActivity");
        hashSet.add("roboguice.activity.RoboActivityGroup");
        hashSet.add("roboguice.inject.ContentResolverProvider");
        hashSet.add("roboguice.activity.RoboSherlockAccountAuthenticatorActivity");
        hashSet.add("roboguice.event.eventListener.factory.EventListenerThreadingDecorator");
        hashSet.add("roboguice.activity.RoboSherlockFragmentActivity");
        hashSet.add("roboguice.inject.ContextScopedProvider");
        hashSet.add("roboguice.activity.RoboLauncherActivity");
        hashSet.add("roboguice.inject.AccountManagerProvider");
        hashSet.add("roboguice.activity.RoboFragmentActivity");
        hashSet.add("roboguice.event.EventManager");
        hashSet.add("roboguice.activity.RoboActivity");
        hashSet.add("roboguice.inject.ContentViewListener");
        hashSet.add("roboguice.inject.FragmentManagerProvider");
        hashSet.add("roboguice.activity.RoboActionBarActivity");
        hashSet.add("roboguice.activity.RoboPreferenceActivity");
        hashSet.add("roboguice.activity.RoboSherlockListActivity");
        hashSet.add("roboguice.activity.RoboMapActivity");
        hashSet.add("roboguice.inject.SharedPreferencesProvider$PreferencesNameHolder");
        hashSet.add("roboguice.activity.RoboAccountAuthenticatorActivity");
        hashSet.add("roboguice.util.Ln");
    }

    public void fillBindableClasses(HashSet<String> hashSet) {
        hashSet.add("com.google.inject.Provider");
        hashSet.add("roboguice.util.LnInterface");
        hashSet.add("roboguice.inject.ContentViewListener");
        hashSet.add("android.app.Activity");
        hashSet.add("android.content.Context");
        hashSet.add("roboguice.inject.SharedPreferencesProvider$PreferencesNameHolder");
        hashSet.add("roboguice.context.event.OnCreateEvent");
        hashSet.add("java.lang.String");
        hashSet.add("android.app.Application");
        hashSet.add("android.content.res.Resources");
        if (FragmentUtil.hasNative) {
            hashSet.add("android.app.FragmentManager");
        }
        if (FragmentUtil.hasSupport) {
            hashSet.add("android.support.v4.app.FragmentManager");
        }
    }
}
