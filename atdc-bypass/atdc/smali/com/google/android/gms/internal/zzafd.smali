.class final Lcom/google/android/gms/internal/zzafd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzXK:Lcom/google/android/gms/internal/zzajg;

.field private synthetic zztF:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzafc;Landroid/content/Context;Lcom/google/android/gms/internal/zzajg;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzafd;->zztF:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafd;->zzXK:Lcom/google/android/gms/internal/zzajg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzafd;->zztF:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafd;->zzXK:Lcom/google/android/gms/internal/zzajg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafd;->zzXK:Lcom/google/android/gms/internal/zzajg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzajg;->zzb(Ljava/lang/Throwable;)V

    const-string v1, "Exception while getting advertising Id info"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzajc;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
