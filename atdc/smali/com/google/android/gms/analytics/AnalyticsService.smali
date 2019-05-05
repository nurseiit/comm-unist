.class public final Lcom/google/android/gms/analytics/AnalyticsService;
.super Landroid/app/Service;

# interfaces
.implements Lcom/google/android/gms/internal/zzaon;


# instance fields
.field private zzadm:Lcom/google/android/gms/internal/zzaok;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private final zzjk()Lcom/google/android/gms/internal/zzaok;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzadm:Lcom/google/android/gms/internal/zzaok;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaok;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaok;-><init>(Lcom/google/android/gms/internal/zzaon;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzadm:Lcom/google/android/gms/internal/zzaok;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsService;->zzadm:Lcom/google/android/gms/internal/zzaok;

    return-object v0
.end method


# virtual methods
.method public final callServiceStopSelfResult(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/AnalyticsService;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzjk()Lcom/google/android/gms/internal/zzaok;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzjk()Lcom/google/android/gms/internal/zzaok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaok;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzjk()Lcom/google/android/gms/internal/zzaok;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaok;->onDestroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        allOf = {
            "android.permission.INTERNET",
            "android.permission.ACCESS_NETWORK_STATE"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/analytics/AnalyticsService;->zzjk()Lcom/google/android/gms/internal/zzaok;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaok;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
