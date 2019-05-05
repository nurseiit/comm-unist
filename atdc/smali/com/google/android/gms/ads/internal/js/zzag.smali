.class final Lcom/google/android/gms/ads/internal/js/zzag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzLy:Lcom/google/android/gms/ads/internal/js/zza;

.field private synthetic zzLz:Lcom/google/android/gms/ads/internal/js/zzaf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzaf;Lcom/google/android/gms/ads/internal/js/zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzag;->zzLz:Lcom/google/android/gms/ads/internal/js/zzaf;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzag;->zzLy:Lcom/google/android/gms/ads/internal/js/zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzag;->zzLz:Lcom/google/android/gms/ads/internal/js/zzaf;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzaf;->zzLx:Lcom/google/android/gms/ads/internal/js/zzac;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzac;->zza(Lcom/google/android/gms/ads/internal/js/zzac;)Lcom/google/android/gms/internal/zzahz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzag;->zzLy:Lcom/google/android/gms/ads/internal/js/zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzahz;->zzc(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzag;->zzLy:Lcom/google/android/gms/ads/internal/js/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/js/zza;->destroy()V

    return-void
.end method
