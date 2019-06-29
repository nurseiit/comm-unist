.class final Lcom/google/android/gms/ads/internal/js/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzKU:Ljava/lang/String;

.field private synthetic zzKW:Lcom/google/android/gms/ads/internal/js/zze;

.field private synthetic zzKX:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zze;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzg;->zzKW:Lcom/google/android/gms/ads/internal/js/zze;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzg;->zzKU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/zzg;->zzKX:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzg;->zzKW:Lcom/google/android/gms/ads/internal/js/zze;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zze;->zza(Lcom/google/android/gms/ads/internal/js/zze;)Lcom/google/android/gms/internal/zzaka;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzg;->zzKU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/js/zzg;->zzKX:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaka;->zzi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
