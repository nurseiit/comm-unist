.class public final Lcom/google/android/gms/ads/internal/zzw;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private zztq:Z

.field private zztr:Lcom/google/android/gms/internal/zzaet;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzw;->zztr:Lcom/google/android/gms/internal/zzaet;

    return-void
.end method


# virtual methods
.method public final recordClick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzw;->zztq:Z

    return-void
.end method

.method public final zzaR()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzw;->zztr:Lcom/google/android/gms/internal/zzaet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzw;->zztr:Lcom/google/android/gms/internal/zzaet;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaet;->zzgY()Lcom/google/android/gms/internal/zzaeq;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaeq;->zzXw:Z

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzw;->zztq:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final zzt(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzw;->zztr:Lcom/google/android/gms/internal/zzaet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzw;->zztr:Lcom/google/android/gms/internal/zzaet;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzaet;->zza(Ljava/lang/String;Ljava/util/Map;I)V

    return-void
.end method
