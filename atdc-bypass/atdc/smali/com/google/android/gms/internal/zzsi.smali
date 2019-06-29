.class public final Lcom/google/android/gms/internal/zzsi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzsS:Lcom/google/android/gms/ads/internal/zzv;

.field private final zzsX:Lcom/google/android/gms/internal/zzuq;

.field private final zztW:Lcom/google/android/gms/internal/zzaje;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsi;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzsi;->zztW:Lcom/google/android/gms/internal/zzaje;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzsi;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    return-void
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzW(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzal;
    .locals 8

    new-instance v7, Lcom/google/android/gms/ads/internal/zzal;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/internal/zziv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zziv;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi;->zztW:Lcom/google/android/gms/internal/zzaje;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzal;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/ads/internal/zzv;)V

    return-object v7
.end method

.method public final zzX(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/zzal;
    .locals 8

    new-instance v7, Lcom/google/android/gms/ads/internal/zzal;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zziv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zziv;-><init>()V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi;->zztW:Lcom/google/android/gms/internal/zzaje;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzal;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/ads/internal/zzv;)V

    return-object v7
.end method

.method public final zzeF()Lcom/google/android/gms/internal/zzsi;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzsi;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi;->zztW:Lcom/google/android/gms/internal/zzaje;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzsi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/ads/internal/zzv;)V

    return-object v0
.end method
