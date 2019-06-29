.class final Lcom/google/android/gms/internal/zzjg;
.super Lcom/google/android/gms/internal/zziz$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zziz$zza<",
        "Lcom/google/android/gms/internal/zzacy;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzAH:Lcom/google/android/gms/internal/zzuq;

.field private synthetic zzAI:Lcom/google/android/gms/internal/zziz;

.field private synthetic zztF:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziz;Landroid/content/Context;Lcom/google/android/gms/internal/zzuq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjg;->zzAI:Lcom/google/android/gms/internal/zziz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjg;->zztF:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjg;->zzAH:Lcom/google/android/gms/internal/zzuq;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zziz$zza;-><init>(Lcom/google/android/gms/internal/zziz;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzkh;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zztF:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zzAH:Lcom/google/android/gms/internal/zzuq;

    const v2, 0xa826e0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzkh;->createRewardedVideoAd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzuq;I)Lcom/google/android/gms/internal/zzacy;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzdo()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzAI:Lcom/google/android/gms/internal/zziz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziz;->zzf(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zzadh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zztF:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjg;->zzAH:Lcom/google/android/gms/internal/zzuq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzadh;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzuq;)Lcom/google/android/gms/internal/zzacy;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjg;->zzAI:Lcom/google/android/gms/internal/zziz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjg;->zztF:Landroid/content/Context;

    const-string v2, "rewarded_video"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/internal/zziz;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzlr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzlr;-><init>()V

    return-object v0
.end method
