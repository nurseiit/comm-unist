.class final Lcom/google/android/gms/ads/internal/js/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzLl:Lcom/google/android/gms/ads/internal/js/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzp;->zzLl:Lcom/google/android/gms/ads/internal/js/zzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzp;->zzLl:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzo;->zzLk:Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzn;->zzLi:Lcom/google/android/gms/ads/internal/js/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/js/zza;->destroy()V

    return-void
.end method
