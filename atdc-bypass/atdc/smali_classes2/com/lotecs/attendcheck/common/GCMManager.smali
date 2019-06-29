.class public Lcom/lotecs/attendcheck/common/GCMManager;
.super Ljava/lang/Object;
.source "GCMManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;
    }
.end annotation


# static fields
.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final PROPERTY_REG_ID:Ljava/lang/String; = "registration_id"

.field private static final TAG:Ljava/lang/String; = "GCMManager"


# instance fields
.field private final context:Landroid/content/Context;

.field private gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

.field private onRegistrationIDCallback:Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;

.field private regId:Ljava/lang/String;

.field private final senderId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/GCMManager;->context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/lotecs/attendcheck/common/GCMManager;->senderId:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/lotecs/attendcheck/common/GCMManager;->onRegistrationIDCallback:Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;

    .line 33
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/GCMManager;->setup()V

    return-void
.end method

.method static synthetic access$000(Lcom/lotecs/attendcheck/common/GCMManager;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object p0
.end method

.method static synthetic access$002(Lcom/lotecs/attendcheck/common/GCMManager;Lcom/google/android/gms/gcm/GoogleCloudMessaging;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/GCMManager;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lotecs/attendcheck/common/GCMManager;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/lotecs/attendcheck/common/GCMManager;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->regId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/lotecs/attendcheck/common/GCMManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/GCMManager;->regId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lotecs/attendcheck/common/GCMManager;)Ljava/lang/String;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->senderId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 16
    sget-object v0, Lcom/lotecs/attendcheck/common/GCMManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lotecs/attendcheck/common/GCMManager;)Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->onRegistrationIDCallback:Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;

    return-object p0
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 3

    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 151
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getGCMPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->context:Landroid/content/Context;

    sget-object v1, Lcom/lotecs/attendcheck/common/GCMManager;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private registerInBackground()V
    .locals 2

    .line 67
    new-instance v0, Lcom/lotecs/attendcheck/common/GCMManager$1;

    invoke-direct {v0, p0}, Lcom/lotecs/attendcheck/common/GCMManager$1;-><init>(Lcom/lotecs/attendcheck/common/GCMManager;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 99
    invoke-virtual {v0, v1}, Lcom/lotecs/attendcheck/common/GCMManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setup()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->gcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    .line 38
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/GCMManager;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->regId:Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Lcom/lotecs/attendcheck/common/GCMManager;->checkPlayServices()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/GCMManager;->registerInBackground()V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->onRegistrationIDCallback:Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;

    const-string v1, "Google Play Service is not available."

    invoke-interface {v0, v1}, Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;->registrationFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkPlayServices()Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/lotecs/attendcheck/common/GCMManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x2328

    .line 51
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 55
    :cond_0
    sget-object v0, Lcom/lotecs/attendcheck/common/GCMManager;->TAG:Ljava/lang/String;

    const-string v1, "This device is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 4

    .line 116
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/GCMManager;->getGCMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "registration_id"

    const-string v2, ""

    .line 117
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    sget-object v0, Lcom/lotecs/attendcheck/common/GCMManager;->TAG:Ljava/lang/String;

    const-string v1, "Registration not found."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    :cond_0
    const-string v2, "appVersion"

    const/high16 v3, -0x80000000

    .line 126
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 127
    iget-object v2, p0, Lcom/lotecs/attendcheck/common/GCMManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lotecs/attendcheck/common/GCMManager;->getAppVersion(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 131
    sget-object v0, Lcom/lotecs/attendcheck/common/GCMManager;->TAG:Ljava/lang/String;

    const-string v1, "App version changed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0

    :cond_1
    return-object v1
.end method

.method public setOnRegistrationIDCallback(Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/GCMManager;->onRegistrationIDCallback:Lcom/lotecs/attendcheck/common/GCMManager$OnRegistrationIDCallback;

    return-void
.end method

.method public storeRegistrationId(Ljava/lang/String;)V
    .locals 5

    .line 103
    invoke-direct {p0}, Lcom/lotecs/attendcheck/common/GCMManager;->getGCMPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/lotecs/attendcheck/common/GCMManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lotecs/attendcheck/common/GCMManager;->getAppVersion(Landroid/content/Context;)I

    move-result v1

    .line 107
    sget-object v2, Lcom/lotecs/attendcheck/common/GCMManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Saving regId on app version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "registration_id"

    .line 110
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "appVersion"

    .line 111
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
