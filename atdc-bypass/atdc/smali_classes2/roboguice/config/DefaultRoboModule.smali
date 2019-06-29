.class public Lroboguice/config/DefaultRoboModule;
.super Lcom/google/inject/AbstractModule;
.source "DefaultRoboModule.java"


# static fields
.field public static final GLOBAL_EVENT_MANAGER_NAME:Ljava/lang/String; = "GlobalEventManager"

.field private static mapSystemSericeClassToName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected application:Landroid/app/Application;

.field protected contextScope:Lroboguice/inject/ContextScope;

.field protected resourceListener:Lroboguice/inject/ResourceListener;

.field protected viewListener:Lroboguice/inject/ViewListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    .line 111
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/location/LocationManager;

    const-string v2, "location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/view/WindowManager;

    const-string v2, "window"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/app/ActivityManager;

    const-string v2, "activity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/os/PowerManager;

    const-string v2, "power"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/app/AlarmManager;

    const-string v2, "alarm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/app/NotificationManager;

    const-string v2, "notification"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/app/KeyguardManager;

    const-string v2, "keyguard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/os/Vibrator;

    const-string v2, "vibrator"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/net/ConnectivityManager;

    const-string v2, "connectivity"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/net/wifi/WifiManager;

    const-string v2, "wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    const-string v2, "input_method"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/hardware/SensorManager;

    const-string v2, "sensor"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "phone"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/media/AudioManager;

    const-string v2, "audio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 126
    sget-object v0, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    const-class v1, Landroid/app/DownloadManager;

    const-string v2, "download"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lroboguice/inject/ContextScope;Lroboguice/inject/ViewListener;Lroboguice/inject/ResourceListener;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/google/inject/AbstractModule;-><init>()V

    .line 132
    iput-object p1, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    .line 133
    iput-object p2, p0, Lroboguice/config/DefaultRoboModule;->contextScope:Lroboguice/inject/ContextScope;

    .line 134
    iput-object p3, p0, Lroboguice/config/DefaultRoboModule;->viewListener:Lroboguice/inject/ViewListener;

    .line 135
    iput-object p4, p0, Lroboguice/config/DefaultRoboModule;->resourceListener:Lroboguice/inject/ResourceListener;

    return-void
.end method

.method private bindDynamicBindings()V
    .locals 3

    .line 219
    sget-boolean v0, Lroboguice/fragment/FragmentUtil;->hasSupport:Z

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v0}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    sget-object v1, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v1}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerProviderType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 222
    :cond_0
    sget-boolean v0, Lroboguice/fragment/FragmentUtil;->hasNative:Z

    if-eqz v0, :cond_1

    .line 223
    sget-object v0, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v0}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    sget-object v1, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    invoke-interface {v1}, Lroboguice/fragment/FragmentUtil$f;->fragmentManagerProviderType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 226
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    :try_start_0
    const-string v0, "android.accounts.AccountManager"

    .line 229
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 230
    invoke-virtual {p0, v0}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lroboguice/inject/AccountManagerProvider;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 232
    const-class v1, Lroboguice/config/DefaultRoboModule;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Impossible to bind AccountManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private bindSystemService(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object p1

    new-instance v0, Lroboguice/inject/SystemServiceProvider;

    iget-object v1, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-direct {v0, v1, p2}, Lroboguice/inject/SystemServiceProvider;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 5

    .line 145
    const-class v0, Landroid/content/Context;

    invoke-virtual {p0, v0}, Lroboguice/config/DefaultRoboModule;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v0

    .line 146
    new-instance v1, Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    invoke-direct {v1}, Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;-><init>()V

    .line 149
    const-class v2, Lroboguice/inject/ViewListener;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    iget-object v3, p0, Lroboguice/config/DefaultRoboModule;->viewListener:Lroboguice/inject/ViewListener;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 152
    const-class v2, Lroboguice/inject/ContextSingleton;

    iget-object v3, p0, Lroboguice/config/DefaultRoboModule;->contextScope:Lroboguice/inject/ContextScope;

    invoke-virtual {p0, v2, v3}, Lroboguice/config/DefaultRoboModule;->bindScope(Ljava/lang/Class;Lcom/google/inject/Scope;)V

    .line 154
    const-class v2, Lroboguice/inject/ContextScope;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->superbind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    iget-object v3, p0, Lroboguice/config/DefaultRoboModule;->contextScope:Lroboguice/inject/ContextScope;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 155
    const-class v2, Landroid/content/res/AssetManager;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/AssetManagerProvider;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 156
    const-class v2, Landroid/content/Context;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    invoke-static {}, Lroboguice/inject/NullProvider;->instance()Lroboguice/inject/NullProvider;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/ContextSingleton;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 157
    const-class v2, Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    invoke-static {}, Lroboguice/inject/NullProvider;->instance()Lroboguice/inject/NullProvider;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/ContextSingleton;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 158
    const-class v2, Lroboguice/activity/RoboActivity;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    invoke-static {}, Lroboguice/inject/NullProvider;->instance()Lroboguice/inject/NullProvider;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/ContextSingleton;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 159
    const-class v2, Landroid/app/Service;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    invoke-static {}, Lroboguice/inject/NullProvider;->instance()Lroboguice/inject/NullProvider;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/ContextSingleton;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 160
    const-class v2, Lroboguice/service/RoboService;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    invoke-static {}, Lroboguice/inject/NullProvider;->instance()Lroboguice/inject/NullProvider;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/ContextSingleton;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    .line 163
    const-class v2, Landroid/content/SharedPreferences;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/SharedPreferencesProvider;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 164
    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/ResourcesProvider;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 165
    const-class v2, Landroid/content/ContentResolver;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/ContentResolverProvider;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 166
    const-class v2, Landroid/app/Application;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    iget-object v3, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 167
    const-class v2, Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 168
    const-class v2, Lroboguice/event/EventManager;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    const-string v3, "GlobalEventManager"

    invoke-static {v3}, Lcom/google/inject/name/Names;->named(Ljava/lang/String;)Lcom/google/inject/name/Named;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/google/inject/binder/LinkedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/event/EventManager;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/LinkedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/inject/binder/ScopedBindingBuilder;->asEagerSingleton()V

    .line 169
    const-class v2, Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    const-class v3, Lroboguice/inject/HandlerProvider;

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 172
    sget-object v2, Lroboguice/config/DefaultRoboModule;->mapSystemSericeClassToName:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 173
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lroboguice/config/DefaultRoboModule;->bindSystemService(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_0
    const-class v2, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    new-instance v3, Lroboguice/inject/ContextScopedSystemServiceProvider;

    const-string v4, "layout_inflater"

    invoke-direct {v3, v0, v4}, Lroboguice/inject/ContextScopedSystemServiceProvider;-><init>(Lcom/google/inject/Provider;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 178
    const-class v2, Landroid/app/SearchManager;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v2

    new-instance v3, Lroboguice/inject/ContextScopedSystemServiceProvider;

    const-string v4, "search"

    invoke-direct {v3, v0, v4}, Lroboguice/inject/ContextScopedSystemServiceProvider;-><init>(Lcom/google/inject/Provider;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 181
    const-class v2, Lroboguice/inject/InjectResource;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->hasInjectionPointsForAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-static {}, Lcom/google/inject/matcher/Matchers;->any()Lcom/google/inject/matcher/Matcher;

    move-result-object v2

    iget-object v3, p0, Lroboguice/config/DefaultRoboModule;->resourceListener:Lroboguice/inject/ResourceListener;

    invoke-virtual {p0, v2, v3}, Lroboguice/config/DefaultRoboModule;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 185
    :cond_1
    const-class v2, Lroboguice/inject/InjectExtra;

    invoke-virtual {p0, v2}, Lroboguice/config/DefaultRoboModule;->hasInjectionPointsForAnnotation(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    new-instance v2, Lroboguice/inject/ExtrasListener;

    invoke-direct {v2, v0}, Lroboguice/inject/ExtrasListener;-><init>(Lcom/google/inject/Provider;)V

    .line 187
    invoke-static {}, Lcom/google/inject/matcher/Matchers;->any()Lcom/google/inject/matcher/Matcher;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lroboguice/config/DefaultRoboModule;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 191
    :cond_2
    invoke-static {}, Lcom/google/inject/matcher/Matchers;->any()Lcom/google/inject/matcher/Matcher;

    move-result-object v2

    iget-object v3, p0, Lroboguice/config/DefaultRoboModule;->viewListener:Lroboguice/inject/ViewListener;

    invoke-virtual {p0, v2, v3}, Lroboguice/config/DefaultRoboModule;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 193
    new-instance v2, Lroboguice/inject/PreferenceListener;

    iget-object v3, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-direct {v2, v0, v3}, Lroboguice/inject/PreferenceListener;-><init>(Lcom/google/inject/Provider;Landroid/app/Application;)V

    .line 194
    const-class v0, Lroboguice/inject/PreferenceListener;

    invoke-virtual {p0, v0}, Lroboguice/config/DefaultRoboModule;->superbind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->toInstance(Ljava/lang/Object;)V

    .line 195
    const-class v0, Lroboguice/inject/InjectPreference;

    invoke-virtual {p0, v0}, Lroboguice/config/DefaultRoboModule;->hasInjectionPointsForAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-static {}, Lcom/google/inject/matcher/Matchers;->any()Lcom/google/inject/matcher/Matcher;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lroboguice/config/DefaultRoboModule;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 200
    :cond_3
    invoke-static {}, Lcom/google/inject/matcher/Matchers;->any()Lcom/google/inject/matcher/Matcher;

    move-result-object v0

    new-instance v2, Lroboguice/event/ObservesTypeListener;

    const-class v3, Lroboguice/event/EventManager;

    invoke-virtual {p0, v3}, Lroboguice/config/DefaultRoboModule;->getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lroboguice/event/ObservesTypeListener;-><init>(Lcom/google/inject/Provider;Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;)V

    invoke-virtual {p0, v0, v2}, Lroboguice/config/DefaultRoboModule;->bindListener(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeListener;)V

    .line 201
    invoke-virtual {p0, v1}, Lroboguice/config/DefaultRoboModule;->requestInjection(Ljava/lang/Object;)V

    .line 203
    const-class v0, Lroboguice/util/Ln;

    invoke-virtual {p0, v0}, Lroboguice/config/DefaultRoboModule;->isInjectable(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 204
    const-class v0, Lroboguice/util/LnInterface;

    invoke-virtual {p0, v0}, Lroboguice/config/DefaultRoboModule;->bind(Ljava/lang/Class;)Lcom/google/inject/binder/AnnotatedBindingBuilder;

    move-result-object v0

    const-class v1, Lroboguice/util/LnImpl;

    invoke-interface {v0, v1}, Lcom/google/inject/binder/AnnotatedBindingBuilder;->to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;

    const/4 v0, 0x1

    .line 206
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lroboguice/util/Ln;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lroboguice/config/DefaultRoboModule;->requestStaticInjection([Ljava/lang/Class;)V

    .line 209
    :cond_4
    invoke-direct {p0}, Lroboguice/config/DefaultRoboModule;->bindDynamicBindings()V

    return-void
.end method

.method public providesAndroidId()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/inject/Provides;
    .end annotation

    .annotation runtime Lcom/google/inject/name/Named;
        value = "android_id"
    .end annotation

    .line 257
    iget-object v0, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string v1, "android_id"

    .line 259
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 262
    const-class v1, Lroboguice/config/DefaultRoboModule;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Impossible to get the android device Id. This may fail \'normally\' when testing."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    const-string v1, ""

    .line 265
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No Android Id."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public providesPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3
    .annotation runtime Lcom/google/inject/Provides;
    .end annotation

    .annotation runtime Lcom/google/inject/Singleton;
    .end annotation

    .line 247
    :try_start_0
    iget-object v0, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lroboguice/config/DefaultRoboModule;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 249
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
