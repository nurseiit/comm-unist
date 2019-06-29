.class final Lcom/google/android/gms/ads/internal/js/zzt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzLn:Lcom/google/android/gms/ads/internal/js/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzLn:Lcom/google/android/gms/ads/internal/js/zzs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzt;->zzLn:Lcom/google/android/gms/ads/internal/js/zzs;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzs;->zzLi:Lcom/google/android/gms/ads/internal/js/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/js/zza;->destroy()V

    return-void
.end method
