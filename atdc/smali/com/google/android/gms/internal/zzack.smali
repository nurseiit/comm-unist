.class public abstract Lcom/google/android/gms/internal/zzack;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static zze(Lcom/google/android/gms/internal/zzabu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabu;->zzUN:Lcom/google/android/gms/ads/internal/js/zzy;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzabu;->zzUN:Lcom/google/android/gms/ads/internal/js/zzy;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/js/zzy;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzabu;Lcom/google/android/gms/internal/zzaje;)V
.end method
