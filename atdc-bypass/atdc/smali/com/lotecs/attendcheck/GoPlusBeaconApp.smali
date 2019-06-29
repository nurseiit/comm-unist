.class public Lcom/lotecs/attendcheck/GoPlusBeaconApp;
.super Landroid/app/Application;
.source "GoPlusBeaconApp.java"

# interfaces
.implements Lorg/altbeacon/beacon/startup/BootstrapNotifier;
.implements Lorg/altbeacon/beacon/RangeNotifier;


# static fields
.field private static final GOPLUS_BEACON_UUID:Ljava/lang/String; = "F7A3E806-F5BB-43F8-BA87-0783669EBEB1"

.field private static final TAG:Ljava/lang/String; = "GoPlusBeaconApp"


# instance fields
.field private mAllBeaconsRegion:Lorg/altbeacon/beacon/Region;

.field private mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

.field private mLoginActivity:Lcom/lotecs/attendcheck/common/LoginActivity;

.field private mMainActivity:Lcom/lotecs/attendcheck/common/MainActivity;

.field private mRangingActivity:Lcom/lotecs/attendcheck/student/AttendActivity;

.field private mReCheckService:Lcom/lotecs/attendcheck/ReCheckService;

.field private mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private static getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 5

    const/4 v0, 0x1

    .line 77
    :try_start_0
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/lotecs/attendcheck/GoPlusBeaconApp$1;

    invoke-direct {v1}, Lcom/lotecs/attendcheck/GoPlusBeaconApp$1;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "SSL"

    .line 95
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v3, 0x0

    .line 96
    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v3, v0, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 98
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 100
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 101
    aget-object v0, v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v3, v1, v0}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    .line 102
    new-instance v0, Lcom/lotecs/attendcheck/GoPlusBeaconApp$2;

    invoke-direct {v0}, Lcom/lotecs/attendcheck/GoPlusBeaconApp$2;-><init>()V

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    .line 109
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isApplicationInBackground(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "activity"

    .line 226
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 231
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 233
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v3
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 118
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    return-void
.end method

.method public didDetermineStateForRegion(ILorg/altbeacon/beacon/Region;)V
    .locals 0

    return-void
.end method

.method public didEnterRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 2

    .line 129
    invoke-static {p0}, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->isApplicationInBackground(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundBetweenScanPeriod(J)V

    .line 131
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    const-wide/16 v0, 0x44c

    invoke-virtual {p1, v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundScanPeriod(J)V

    :cond_0
    :try_start_0
    const-string p1, "GoPlusBeaconApp"

    const-string v0, "entered region.  starting ranging"

    .line 137
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v0, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mAllBeaconsRegion:Lorg/altbeacon/beacon/Region;

    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->startRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V

    .line 140
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    invoke-virtual {p1, p0}, Lorg/altbeacon/beacon/BeaconManager;->setRangeNotifier(Lorg/altbeacon/beacon/RangeNotifier;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "GoPlusBeaconApp"

    const-string v0, "Cannot start ranging"

    .line 143
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public didExitRegion(Lorg/altbeacon/beacon/Region;)V
    .locals 2

    .line 151
    invoke-static {p0}, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->isApplicationInBackground(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    :try_start_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    iget-object v0, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mAllBeaconsRegion:Lorg/altbeacon/beacon/Region;

    invoke-virtual {p1, v0}, Lorg/altbeacon/beacon/BeaconManager;->stopRangingBeaconsInRegion(Lorg/altbeacon/beacon/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 159
    :goto_0
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundBetweenScanPeriod(J)V

    .line 160
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    const-wide/16 v0, 0x44c

    invoke-virtual {p1, v0, v1}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundScanPeriod(J)V

    :cond_0
    return-void
.end method

.method public didRangeBeaconsInRegion(Ljava/util/Collection;Lorg/altbeacon/beacon/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/altbeacon/beacon/Beacon;",
            ">;",
            "Lorg/altbeacon/beacon/Region;",
            ")V"
        }
    .end annotation

    .line 173
    iget-object p2, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRangingActivity:Lcom/lotecs/attendcheck/student/AttendActivity;

    if-eqz p2, :cond_0

    .line 174
    iget-object p2, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRangingActivity:Lcom/lotecs/attendcheck/student/AttendActivity;

    invoke-virtual {p2, p1}, Lcom/lotecs/attendcheck/student/AttendActivity;->didRangeBeaconsInRegion(Ljava/util/Collection;)V

    .line 176
    :cond_0
    iget-object p2, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mMainActivity:Lcom/lotecs/attendcheck/common/MainActivity;

    if-eqz p2, :cond_1

    .line 177
    iget-object p2, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mMainActivity:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-virtual {p2, p1}, Lcom/lotecs/attendcheck/common/MainActivity;->didRangeBeaconsInRegion(Ljava/util/Collection;)V

    .line 179
    :cond_1
    iget-object p2, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mReCheckService:Lcom/lotecs/attendcheck/ReCheckService;

    if-eqz p2, :cond_2

    .line 180
    iget-object p2, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mReCheckService:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-virtual {p2, p1}, Lcom/lotecs/attendcheck/ReCheckService;->didRangeBeaconsInRegion(Ljava/util/Collection;)V

    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 55
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 56
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->getUnsafeOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidnetworking/AndroidNetworking;->initialize(Landroid/content/Context;Lokhttp3/OkHttpClient;)V

    .line 57
    new-instance v0, Lorg/altbeacon/beacon/Region;

    const-string v1, "default"

    const-string v2, "F7A3E806-F5BB-43F8-BA87-0783669EBEB1"

    invoke-static {v2}, Lorg/altbeacon/beacon/Identifier;->parse(Ljava/lang/String;)Lorg/altbeacon/beacon/Identifier;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/altbeacon/beacon/Region;-><init>(Ljava/lang/String;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;Lorg/altbeacon/beacon/Identifier;)V

    iput-object v0, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mAllBeaconsRegion:Lorg/altbeacon/beacon/Region;

    .line 59
    invoke-static {p0}, Lorg/altbeacon/beacon/BeaconManager;->getInstanceForApplication(Landroid/content/Context;)Lorg/altbeacon/beacon/BeaconManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    .line 60
    new-instance v0, Lorg/altbeacon/beacon/startup/RegionBootstrap;

    iget-object v1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mAllBeaconsRegion:Lorg/altbeacon/beacon/Region;

    invoke-direct {v0, p0, v1}, Lorg/altbeacon/beacon/startup/RegionBootstrap;-><init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Lorg/altbeacon/beacon/Region;)V

    iput-object v0, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    .line 66
    iget-object v0, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundBetweenScanPeriod(J)V

    .line 72
    iget-object v0, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mBeaconManager:Lorg/altbeacon/beacon/BeaconManager;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lorg/altbeacon/beacon/BeaconManager;->setBackgroundScanPeriod(J)V

    return-void
.end method

.method public setLoginActivity(Lcom/lotecs/attendcheck/common/LoginActivity;Z)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mLoginActivity:Lcom/lotecs/attendcheck/common/LoginActivity;

    if-nez p2, :cond_0

    .line 191
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disable()V

    :cond_0
    return-void
.end method

.method public setMainActivity(Lcom/lotecs/attendcheck/common/MainActivity;Z)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mMainActivity:Lcom/lotecs/attendcheck/common/MainActivity;

    if-nez p2, :cond_0

    .line 218
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disable()V

    goto :goto_0

    .line 220
    :cond_0
    new-instance p1, Lorg/altbeacon/beacon/startup/RegionBootstrap;

    iget-object p2, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mAllBeaconsRegion:Lorg/altbeacon/beacon/Region;

    invoke-direct {p1, p0, p2}, Lorg/altbeacon/beacon/startup/RegionBootstrap;-><init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Lorg/altbeacon/beacon/Region;)V

    iput-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    :goto_0
    return-void
.end method

.method public setRangingActivity(Lcom/lotecs/attendcheck/student/AttendActivity;Z)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRangingActivity:Lcom/lotecs/attendcheck/student/AttendActivity;

    if-nez p2, :cond_0

    .line 198
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disable()V

    goto :goto_0

    .line 200
    :cond_0
    new-instance p1, Lorg/altbeacon/beacon/startup/RegionBootstrap;

    iget-object p2, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mAllBeaconsRegion:Lorg/altbeacon/beacon/Region;

    invoke-direct {p1, p0, p2}, Lorg/altbeacon/beacon/startup/RegionBootstrap;-><init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Lorg/altbeacon/beacon/Region;)V

    iput-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    :goto_0
    return-void
.end method

.method public setRangingService(Lcom/lotecs/attendcheck/ReCheckService;Z)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mReCheckService:Lcom/lotecs/attendcheck/ReCheckService;

    if-nez p2, :cond_0

    .line 208
    iget-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    invoke-virtual {p1}, Lorg/altbeacon/beacon/startup/RegionBootstrap;->disable()V

    goto :goto_0

    .line 210
    :cond_0
    new-instance p1, Lorg/altbeacon/beacon/startup/RegionBootstrap;

    iget-object p2, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mAllBeaconsRegion:Lorg/altbeacon/beacon/Region;

    invoke-direct {p1, p0, p2}, Lorg/altbeacon/beacon/startup/RegionBootstrap;-><init>(Lorg/altbeacon/beacon/startup/BootstrapNotifier;Lorg/altbeacon/beacon/Region;)V

    iput-object p1, p0, Lcom/lotecs/attendcheck/GoPlusBeaconApp;->mRegionBootstrap:Lorg/altbeacon/beacon/startup/RegionBootstrap;

    :goto_0
    return-void
.end method
