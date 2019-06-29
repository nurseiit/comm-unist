.class public Lcom/google/android/gms/internal/zzahg;
.super Lcom/google/android/gms/internal/zzahe;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzahe;-><init>(Lcom/google/android/gms/internal/zzahf;)V

    return-void
.end method


# virtual methods
.method public zza(Landroid/app/DownloadManager$Request;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    return v0
.end method

.method public final zzhT()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public final zzhU()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method
