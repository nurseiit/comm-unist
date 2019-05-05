.class public final Lcom/google/android/gms/internal/zzajz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzJH:Lcom/google/android/gms/internal/zzaka;

.field private zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

.field private final zzabm:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzaka;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzajz;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/ads/internal/overlay/zzaa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzajz;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzajz;->zzabm:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzajz;->zzJH:Lcom/google/android/gms/internal/zzaka;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    return-void
.end method


# virtual methods
.method public final onDestroy()V
    .locals 2

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->destroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzabm:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->pause()V

    :cond_0
    return-void
.end method

.method public final zza(IIIIIZLcom/google/android/gms/ads/internal/overlay/zzaq;)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/zzajz;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->zziG()Lcom/google/android/gms/internal/zzna;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzajz;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zziF()Lcom/google/android/gms/internal/zzmz;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "vpr2"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzmu;->zza(Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzaa;

    iget-object v7, v0, Lcom/google/android/gms/internal/zzajz;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzajz;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzajz;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaka;->zziG()Lcom/google/android/gms/internal/zzna;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzna;->zzdR()Lcom/google/android/gms/internal/zznb;

    move-result-object v11

    move-object v6, v1

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/ads/internal/overlay/zzaa;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaka;IZLcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/overlay/zzaq;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzajz;->zzabm:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzd(IIII)V

    iget-object v1, v0, Lcom/google/android/gms/internal/zzajz;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/zzakb;->zzE(Z)V

    return-void
.end method

.method public final zze(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/ads/internal/overlay/zzaa;->zzd(IIII)V

    :cond_0
    return-void
.end method

.method public final zzip()Lcom/google/android/gms/ads/internal/overlay/zzaa;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzajz;->zzQK:Lcom/google/android/gms/ads/internal/overlay/zzaa;

    return-object v0
.end method
