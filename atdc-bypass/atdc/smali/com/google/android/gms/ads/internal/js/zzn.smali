.class final Lcom/google/android/gms/ads/internal/js/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/js/zzb;


# instance fields
.field final synthetic zzLi:Lcom/google/android/gms/ads/internal/js/zza;

.field final synthetic zzLj:Lcom/google/android/gms/ads/internal/js/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzm;Lcom/google/android/gms/ads/internal/js/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzLj:Lcom/google/android/gms/ads/internal/js/zzm;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzn;->zzLi:Lcom/google/android/gms/ads/internal/js/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzeZ()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/js/zzo;-><init>(Lcom/google/android/gms/ads/internal/js/zzn;)V

    sget v2, Lcom/google/android/gms/ads/internal/js/zzw;->zzLq:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
