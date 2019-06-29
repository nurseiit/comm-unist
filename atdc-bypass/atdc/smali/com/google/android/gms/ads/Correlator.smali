.class public final Lcom/google/android/gms/ads/Correlator;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private zzsa:Lcom/google/android/gms/internal/zzjj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzjj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzsa:Lcom/google/android/gms/internal/zzjj;

    return-void
.end method


# virtual methods
.method public final reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzsa:Lcom/google/android/gms/internal/zzjj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzjj;->zzdu()V

    return-void
.end method

.method public final zzac()Lcom/google/android/gms/internal/zzjj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/Correlator;->zzsa:Lcom/google/android/gms/internal/zzjj;

    return-object v0
.end method
