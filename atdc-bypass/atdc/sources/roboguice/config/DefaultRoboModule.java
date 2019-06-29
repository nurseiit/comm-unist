package roboguice.config;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.Application;
import android.app.DownloadManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.app.SearchManager;
import android.app.Service;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.PowerManager;
import android.os.Vibrator;
import android.provider.Settings.Secure;
import android.support.v4.app.NotificationCompat;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import com.google.firebase.analytics.FirebaseAnalytics.Event;
import com.google.firebase.analytics.FirebaseAnalytics.Param;
import com.google.firebase.auth.PhoneAuthProvider;
import com.google.inject.AbstractModule;
import com.google.inject.Provider;
import com.google.inject.Provides;
import com.google.inject.Singleton;
import com.google.inject.matcher.Matchers;
import com.google.inject.name.Named;
import com.google.inject.name.Names;
import com.google.inject.spi.TypeListener;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import roboguice.activity.RoboActivity;
import roboguice.event.EventManager;
import roboguice.event.ObservesTypeListener;
import roboguice.event.eventListener.factory.EventListenerThreadingDecorator;
import roboguice.fragment.FragmentUtil;
import roboguice.inject.AccountManagerProvider;
import roboguice.inject.AssetManagerProvider;
import roboguice.inject.ContentResolverProvider;
import roboguice.inject.ContextScope;
import roboguice.inject.ContextScopedSystemServiceProvider;
import roboguice.inject.ContextSingleton;
import roboguice.inject.ExtrasListener;
import roboguice.inject.HandlerProvider;
import roboguice.inject.InjectExtra;
import roboguice.inject.InjectPreference;
import roboguice.inject.InjectResource;
import roboguice.inject.NullProvider;
import roboguice.inject.PreferenceListener;
import roboguice.inject.ResourceListener;
import roboguice.inject.ResourcesProvider;
import roboguice.inject.SharedPreferencesProvider;
import roboguice.inject.SystemServiceProvider;
import roboguice.inject.ViewListener;
import roboguice.service.RoboService;
import roboguice.util.Ln;
import roboguice.util.LnImpl;
import roboguice.util.LnInterface;

public class DefaultRoboModule extends AbstractModule {
    public static final String GLOBAL_EVENT_MANAGER_NAME = "GlobalEventManager";
    private static Map<Class, String> mapSystemSericeClassToName = new HashMap();
    protected Application application;
    protected ContextScope contextScope;
    protected ResourceListener resourceListener;
    protected ViewListener viewListener;

    static {
        mapSystemSericeClassToName.put(LocationManager.class, Param.LOCATION);
        mapSystemSericeClassToName.put(WindowManager.class, "window");
        mapSystemSericeClassToName.put(ActivityManager.class, "activity");
        mapSystemSericeClassToName.put(PowerManager.class, "power");
        mapSystemSericeClassToName.put(AlarmManager.class, NotificationCompat.CATEGORY_ALARM);
        mapSystemSericeClassToName.put(NotificationManager.class, "notification");
        mapSystemSericeClassToName.put(KeyguardManager.class, "keyguard");
        mapSystemSericeClassToName.put(Vibrator.class, "vibrator");
        mapSystemSericeClassToName.put(ConnectivityManager.class, "connectivity");
        mapSystemSericeClassToName.put(WifiManager.class, "wifi");
        mapSystemSericeClassToName.put(InputMethodManager.class, "input_method");
        mapSystemSericeClassToName.put(SensorManager.class, "sensor");
        mapSystemSericeClassToName.put(TelephonyManager.class, PhoneAuthProvider.PROVIDER_ID);
        mapSystemSericeClassToName.put(AudioManager.class, "audio");
        if (VERSION.SDK_INT >= 9) {
            mapSystemSericeClassToName.put(DownloadManager.class, "download");
        }
    }

    public DefaultRoboModule(Application application, ContextScope contextScope, ViewListener viewListener, ResourceListener resourceListener) {
        this.application = application;
        this.contextScope = contextScope;
        this.viewListener = viewListener;
        this.resourceListener = resourceListener;
    }

    /* Access modifiers changed, original: protected */
    public void configure() {
        Provider provider = getProvider(Context.class);
        EventListenerThreadingDecorator eventListenerThreadingDecorator = new EventListenerThreadingDecorator();
        bind(ViewListener.class).toInstance(this.viewListener);
        bindScope(ContextSingleton.class, this.contextScope);
        superbind(ContextScope.class).toInstance(this.contextScope);
        bind(AssetManager.class).toProvider(AssetManagerProvider.class);
        bind(Context.class).toProvider((Provider) NullProvider.instance()).in(ContextSingleton.class);
        bind(Activity.class).toProvider((Provider) NullProvider.instance()).in(ContextSingleton.class);
        bind(RoboActivity.class).toProvider((Provider) NullProvider.instance()).in(ContextSingleton.class);
        bind(Service.class).toProvider((Provider) NullProvider.instance()).in(ContextSingleton.class);
        bind(RoboService.class).toProvider((Provider) NullProvider.instance()).in(ContextSingleton.class);
        bind(SharedPreferences.class).toProvider(SharedPreferencesProvider.class);
        bind(Resources.class).toProvider(ResourcesProvider.class);
        bind(ContentResolver.class).toProvider(ContentResolverProvider.class);
        bind(Application.class).toInstance(this.application);
        bind(EventListenerThreadingDecorator.class).toInstance(eventListenerThreadingDecorator);
        bind(EventManager.class).annotatedWith(Names.named(GLOBAL_EVENT_MANAGER_NAME)).to(EventManager.class).asEagerSingleton();
        bind(Handler.class).toProvider(HandlerProvider.class);
        for (Entry entry : mapSystemSericeClassToName.entrySet()) {
            bindSystemService((Class) entry.getKey(), (String) entry.getValue());
        }
        bind(LayoutInflater.class).toProvider((Provider) new ContextScopedSystemServiceProvider(provider, "layout_inflater"));
        bind(SearchManager.class).toProvider((Provider) new ContextScopedSystemServiceProvider(provider, Event.SEARCH));
        if (hasInjectionPointsForAnnotation(InjectResource.class)) {
            bindListener(Matchers.any(), (TypeListener) this.resourceListener);
        }
        if (hasInjectionPointsForAnnotation(InjectExtra.class)) {
            bindListener(Matchers.any(), (TypeListener) new ExtrasListener(provider));
        }
        bindListener(Matchers.any(), (TypeListener) this.viewListener);
        PreferenceListener preferenceListener = new PreferenceListener(provider, this.application);
        superbind(PreferenceListener.class).toInstance(preferenceListener);
        if (hasInjectionPointsForAnnotation(InjectPreference.class)) {
            bindListener(Matchers.any(), (TypeListener) preferenceListener);
        }
        bindListener(Matchers.any(), (TypeListener) new ObservesTypeListener(getProvider(EventManager.class), eventListenerThreadingDecorator));
        requestInjection(eventListenerThreadingDecorator);
        if (isInjectable(Ln.class)) {
            bind(LnInterface.class).to(LnImpl.class);
            requestStaticInjection(Ln.class);
        }
        bindDynamicBindings();
    }

    private <T> void bindSystemService(Class<T> cls, String str) {
        bind((Class) cls).toProvider((Provider) new SystemServiceProvider(this.application, str));
    }

    private void bindDynamicBindings() {
        if (FragmentUtil.hasSupport) {
            bind(FragmentUtil.supportFrag.fragmentManagerType()).toProvider(FragmentUtil.supportFrag.fragmentManagerProviderType());
        }
        if (FragmentUtil.hasNative) {
            bind(FragmentUtil.nativeFrag.fragmentManagerType()).toProvider(FragmentUtil.nativeFrag.fragmentManagerProviderType());
        }
        if (VERSION.SDK_INT >= 5) {
            try {
                bind(Class.forName("android.accounts.AccountManager")).toProvider(AccountManagerProvider.class);
            } catch (Throwable th) {
                Log.e(DefaultRoboModule.class.getName(), "Impossible to bind AccountManager", th);
            }
        }
    }

    @Provides
    @Singleton
    public PackageInfo providesPackageInfo() {
        try {
            return this.application.getPackageManager().getPackageInfo(this.application.getPackageName(), 0);
        } catch (NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    @Named("android_id")
    @Provides
    public String providesAndroidId() {
        Object string;
        try {
            string = Secure.getString(this.application.getContentResolver(), "android_id");
        } catch (RuntimeException e) {
            Log.e(DefaultRoboModule.class.getName(), "Impossible to get the android device Id. This may fail 'normally' when testing.", e);
            string = null;
        }
        if (!"".equals(string)) {
            return string;
        }
        throw new RuntimeException("No Android Id.");
    }
}
