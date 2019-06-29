.class final Lcom/google/android/gms/internal/zzja;
.super Lcom/google/android/gms/internal/zziz$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zziz$zza<",
        "Lcom/google/android/gms/internal/zzjz;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzAG:Lcom/google/android/gms/internal/zziv;

.field private synthetic zzAH:Lcom/google/android/gms/internal/zzuq;

.field private synthetic zzAI:Lcom/google/android/gms/internal/zziz;

.field private synthetic zztD:Ljava/lang/String;

.field private synthetic zztF:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zziz;Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzja;->zzAI:Lcom/google/android/gms/internal/zziz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzja;->zztF:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzja;->zzAG:Lcom/google/android/gms/internal/zziv;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzja;->zztD:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzja;->zzAH:Lcom/google/android/gms/internal/zzuq;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zziz$zza;-><init>(Lcom/google/android/gms/internal/zziz;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzkh;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja;->zztF:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzja;->zzAG:Lcom/google/android/gms/internal/zziv;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzja;->zztD:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzja;->zzAH:Lcom/google/android/gms/internal/zzuq;

    const v6, 0xa826e0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzkh;->createBannerAdManager(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;I)Lcom/google/android/gms/internal/zzjz;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzdo()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzAI:Lcom/google/android/gms/internal/zziz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziz;->zzb(Lcom/google/android/gms/internal/zziz;)Lcom/google/android/gms/internal/zziq;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzja;->zztF:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzja;->zzAG:Lcom/google/android/gms/internal/zziv;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzja;->zztD:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzja;->zzAH:Lcom/google/android/gms/internal/zzuq;

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zziq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;I)Lcom/google/android/gms/internal/zzjz;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzja;->zzAI:Lcom/google/android/gms/internal/zziz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzja;->zztF:Landroid/content/Context;

    const-string v2, "banner"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/internal/zziz;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzln;-><init>()V

    return-object v0
.end method
