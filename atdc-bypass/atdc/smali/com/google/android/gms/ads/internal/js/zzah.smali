.class public final Lcom/google/android/gms/ads/internal/js/zzah;
.super Lcom/google/android/gms/internal/zzajt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzajt<",
        "Lcom/google/android/gms/ads/internal/js/zzai;",
        ">;"
    }
.end annotation


# instance fields
.field private zzLA:Lcom/google/android/gms/ads/internal/js/zzy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/js/zzy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzajt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzah;->zzLA:Lcom/google/android/gms/ads/internal/js/zzy;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzah;->zzLA:Lcom/google/android/gms/ads/internal/js/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzy;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzah;->zzLA:Lcom/google/android/gms/ads/internal/js/zzy;

    return-void
.end method

.method public final getStatus()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzah;->zzLA:Lcom/google/android/gms/ads/internal/js/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzy;->getStatus()I

    move-result v0

    return v0
.end method

.method public final reject()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzah;->zzLA:Lcom/google/android/gms/ads/internal/js/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzy;->reject()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzajs;Lcom/google/android/gms/internal/zzajq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzajs<",
            "Lcom/google/android/gms/ads/internal/js/zzai;",
            ">;",
            "Lcom/google/android/gms/internal/zzajq;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzah;->zzLA:Lcom/google/android/gms/ads/internal/js/zzy;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/js/zzy;->zza(Lcom/google/android/gms/internal/zzajs;Lcom/google/android/gms/internal/zzajq;)V

    return-void
.end method

.method public final synthetic zzf(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzai;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzah;->zzLA:Lcom/google/android/gms/ads/internal/js/zzy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/js/zzy;->zzf(Ljava/lang/Object;)V

    return-void
.end method
