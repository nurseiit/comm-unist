.class public Lcom/google/android/gms/analytics/CampaignTrackingService;
.super Landroid/app/Service;


# static fields
.field private static zzadu:Ljava/lang/Boolean;


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static zzad(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingService;->zzadu:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/android/gms/analytics/CampaignTrackingService;->zzadu:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.CampaignTrackingService"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzaos;->zzw(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/CampaignTrackingService;->zzadu:Ljava/lang/Boolean;

    return p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {p0}, Lcom/google/android/gms/internal/zzamj;->zzaf(Landroid/content/Context;)Lcom/google/android/gms/internal/zzamj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object v0

    const-string v1, "CampaignTrackingService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoc;->zzbo(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzamj;->zzaf(Landroid/content/Context;)Lcom/google/android/gms/internal/zzamj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object v0

    const-string v1, "CampaignTrackingService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoc;->zzbo(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    :try_start_0
    sget-object p2, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzuF:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzads:Lcom/google/android/gms/internal/zzctz;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctz;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzctz;->release()V

    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzamj;->zzaf(Landroid/content/Context;)Lcom/google/android/gms/internal/zzamj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzamj;->zzkr()Lcom/google/android/gms/internal/zzaoc;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v1, "referrer"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/analytics/CampaignTrackingService;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/CampaignTrackingService;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gms/analytics/CampaignTrackingService;->mHandler:Landroid/os/Handler;

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    if-nez p1, :cond_3

    const-string p1, "CampaignTrackingService received null intent"

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaoc;->zzbr(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "No campaign found on com.android.vending.INSTALL_REFERRER \"referrer\" extra"

    goto :goto_1

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzamj;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/analytics/zzc;

    invoke-direct {p2, p0, v0, v2, p3}, Lcom/google/android/gms/analytics/zzc;-><init>(Lcom/google/android/gms/analytics/CampaignTrackingService;Lcom/google/android/gms/internal/zzaoc;Landroid/os/Handler;I)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/analytics/zzl;->zzf(Ljava/lang/Runnable;)V

    return v4

    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/zzank;->zzlp()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, p1, :cond_5

    goto :goto_3

    :cond_5
    const-string v3, "Campaign data exceed the maximum supported size and will be clipped. size, limit"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v5, v6}, Lcom/google/android/gms/internal/zzaoc;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string p1, "CampaignTrackingService called. startId, campaign"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, p1, v3, v1}, Lcom/google/android/gms/internal/zzaoc;->zza(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzamj;->zzkv()Lcom/google/android/gms/internal/zzaly;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/analytics/zzd;

    invoke-direct {p2, p0, v0, v2, p3}, Lcom/google/android/gms/analytics/zzd;-><init>(Lcom/google/android/gms/analytics/CampaignTrackingService;Lcom/google/android/gms/internal/zzaoc;Landroid/os/Handler;I)V

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/zzaly;->zza(Ljava/lang/String;Ljava/lang/Runnable;)V

    return v4
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzaoc;Landroid/os/Handler;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/zze;

    invoke-direct {v0, p0, p3, p1}, Lcom/google/android/gms/analytics/zze;-><init>(Lcom/google/android/gms/analytics/CampaignTrackingService;ILcom/google/android/gms/internal/zzaoc;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
