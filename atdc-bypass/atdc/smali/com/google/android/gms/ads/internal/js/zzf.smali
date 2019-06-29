.class final Lcom/google/android/gms/ads/internal/js/zzf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzKU:Ljava/lang/String;

.field private synthetic zzKV:Lorg/json/JSONObject;

.field private synthetic zzKW:Lcom/google/android/gms/ads/internal/js/zze;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zze;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzf;->zzKW:Lcom/google/android/gms/ads/internal/js/zze;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzf;->zzKU:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/js/zzf;->zzKV:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzf;->zzKW:Lcom/google/android/gms/ads/internal/js/zze;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zze;->zza(Lcom/google/android/gms/ads/internal/js/zze;)Lcom/google/android/gms/internal/zzaka;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzf;->zzKU:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/js/zzf;->zzKV:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaka;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
