.class public Lcom/google/android/gms/internal/zziz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zziz$zza;
    }
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final zzAA:Lcom/google/android/gms/internal/zziq;

.field private final zzAB:Lcom/google/android/gms/internal/zzip;

.field private final zzAC:Lcom/google/android/gms/internal/zzli;

.field private final zzAD:Lcom/google/android/gms/internal/zzqc;

.field private final zzAE:Lcom/google/android/gms/internal/zzadh;

.field private final zzAF:Lcom/google/android/gms/internal/zzww;

.field private zzAz:Lcom/google/android/gms/internal/zzkh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziq;Lcom/google/android/gms/internal/zzip;Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/internal/zzqc;Lcom/google/android/gms/internal/zzadh;Lcom/google/android/gms/internal/zzww;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zziz;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zziz;->zzAA:Lcom/google/android/gms/internal/zziq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zziz;->zzAB:Lcom/google/android/gms/internal/zzip;

    iput-object p3, p0, Lcom/google/android/gms/internal/zziz;->zzAC:Lcom/google/android/gms/internal/zzli;

    iput-object p4, p0, Lcom/google/android/gms/internal/zziz;->zzAD:Lcom/google/android/gms/internal/zzqc;

    iput-object p5, p0, Lcom/google/android/gms/internal/zziz;->zzAE:Lcom/google/android/gms/internal/zzadh;

    iput-object p6, p0, Lcom/google/android/gms/internal/zziz;->zzAF:Lcom/google/android/gms/internal/zzww;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zzkh;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zziz;->zzdn()Lcom/google/android/gms/internal/zzkh;

    move-result-object p0

    return-object p0
.end method

.method static zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zziz$zza;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/google/android/gms/internal/zziz$zza<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaiy;->zzX(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "Google Play Services is not available"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzajc;->zzaC(Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaiy;->zzQ(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaiy;->zzP(Landroid/content/Context;)I

    move-result p0

    if-le v1, p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zziz$zza;->zzdp()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zziz$zza;->zzdq()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zziz$zza;->zzdq()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zziz$zza;->zzdp()Ljava/lang/Object;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zziz;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zziz;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zziq;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zziz;->zzAA:Lcom/google/android/gms/internal/zziq;

    return-object p0
.end method

.method private static zzb(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "no_ads_fallback"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flow"

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    move-result-object v0

    const-string v3, "gmob-apps"

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaiy;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zzip;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zziz;->zzAB:Lcom/google/android/gms/internal/zzip;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zzli;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zziz;->zzAC:Lcom/google/android/gms/internal/zzli;

    return-object p0
.end method

.method private static zzdm()Lcom/google/android/gms/internal/zzkh;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/android/gms/internal/zziz;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads.internal.ClientApi"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/os/IBinder;

    if-nez v2, :cond_0

    const-string v1, "ClientApi class is not an instance of IBinder"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzajc;->zzaT(Ljava/lang/String;)V

    return-object v0

    :cond_0
    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzki;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzkh;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Failed to instantiate ClientApi class."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzajc;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final zzdn()Lcom/google/android/gms/internal/zzkh;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zziz;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzAz:Lcom/google/android/gms/internal/zzkh;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zziz;->zzdm()Lcom/google/android/gms/internal/zzkh;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzAz:Lcom/google/android/gms/internal/zzkh;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zziz;->zzAz:Lcom/google/android/gms/internal/zzkh;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zzqc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zziz;->zzAD:Lcom/google/android/gms/internal/zzqc;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zzadh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zziz;->zzAE:Lcom/google/android/gms/internal/zzadh;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zzww;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zziz;->zzAF:Lcom/google/android/gms/internal/zzww;

    return-object p0
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lcom/google/android/gms/internal/zzow;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjf;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/internal/zzjf;-><init>(Lcom/google/android/gms/internal/zziz;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/zziz;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zziz$zza;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzow;

    return-object p1
.end method

.method public final zzb(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;)Lcom/google/android/gms/internal/zzju;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzjd;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzjd;-><init>(Lcom/google/android/gms/internal/zziz;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;)V

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/zziz;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zziz$zza;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzju;

    return-object p1
.end method

.method public final zzb(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzwx;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "com.google.android.gms.ads.internal.overlay.useClientJar"

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v0, "useClientJar flag not found in activity intent extras."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzajc;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzjh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzjh;-><init>(Lcom/google/android/gms/internal/zziz;Landroid/app/Activity;)V

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/zziz;->zza(Landroid/content/Context;ZLcom/google/android/gms/internal/zziz$zza;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzwx;

    return-object p1
.end method
