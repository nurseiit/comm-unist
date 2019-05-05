.class public final Lcom/google/android/gms/ads/internal/zzbb;
.super Lcom/google/android/gms/ads/internal/zzd;

# interfaces
.implements Lcom/google/android/gms/internal/zznz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private zzta:Z

.field private zzuO:Lcom/google/android/gms/internal/zzaka;

.field private zzuP:Lcom/google/android/gms/internal/zzyh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzd;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/ads/internal/zzv;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbb;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzbb;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzbb;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zznq;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzbd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzbd;-><init>(Lcom/google/android/gms/ads/internal/zzbb;Lcom/google/android/gms/internal/zznq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzns;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzbe;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzbe;-><init>(Lcom/google/android/gms/ads/internal/zzbb;Lcom/google/android/gms/internal/zzns;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final zzbn()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzbh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzbh;-><init>(Lcom/google/android/gms/ads/internal/zzbb;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagz;->zzb(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvR:Ljava/lang/String;

    return-object v0
.end method

.method public final pause()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support pause()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final resume()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Native Ad DOES NOT support resume()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final showInterstitial()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by NativeAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zznb;)V
    .locals 10

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafg;->zzvX:Lcom/google/android/gms/internal/zziv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzafg;->zzvX:Lcom/google/android/gms/internal/zziv;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzafg;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzbc;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzbc;-><init>(Lcom/google/android/gms/ads/internal/zzbb;Lcom/google/android/gms/internal/zzafg;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwt:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzby()Lcom/google/android/gms/internal/zzxx;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvS:Lcom/google/android/gms/internal/zzcu;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsX:Lcom/google/android/gms/internal/zzuq;

    move-object v3, p0

    move-object v4, p1

    move-object v8, p0

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/zzxx;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaka;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzxy;Lcom/google/android/gms/internal/zznb;)Lcom/google/android/gms/internal/zzahp;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/internal/zzahp;

    const-string p1, "AdRenderer: "

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/internal/zzahp;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zznh;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "CustomRendering is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zznw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaka;->zzb(Lcom/google/android/gms/internal/zznw;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzny;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXL:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafk;->zzhG()Lcom/google/android/gms/internal/zzfh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    new-instance v3, Lcom/google/android/gms/internal/zzfk;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/zzfk;-><init>(Lcom/google/android/gms/internal/zzny;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/zzfh;->zza(Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzgs;Lcom/google/android/gms/ads/internal/js/zzai;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxg;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "In App Purchase is NOT supported by NativeAdManager."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzaff;)Z
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/google/android/gms/ads/internal/zzbb;->zzc(Ljava/util/List;)V

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbt;->zzcc()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Native ad DOES NOT have custom rendering mode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-boolean v2, v8, Lcom/google/android/gms/internal/zzaff;->zzTo:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    sget-object v2, Lcom/google/android/gms/internal/zzmo;->zzFu:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/zzbb;->zzbn()V

    :cond_1
    :try_start_0
    iget-object v2, v8, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    if-eqz v2, :cond_2

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzut;->zzfq()Lcom/google/android/gms/internal/zzvc;

    move-result-object v2

    move-object v5, v2

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    iget-object v2, v8, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    if-eqz v2, :cond_3

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzut;->zzfr()Lcom/google/android/gms/internal/zzvf;

    move-result-object v2

    move-object v6, v2

    goto :goto_1

    :cond_3
    move-object v6, v1

    :goto_1
    iget-object v2, v8, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    if-eqz v2, :cond_4

    iget-object v2, v8, Lcom/google/android/gms/internal/zzaff;->zzMH:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzut;->zzfv()Lcom/google/android/gms/internal/zzpj;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    if-eqz v5, :cond_6

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->zzwf:Lcom/google/android/gms/internal/zzpn;

    if-eqz v4, :cond_6

    new-instance v6, Lcom/google/android/gms/internal/zznq;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->getHeadline()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->getImages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->zzeh()Lcom/google/android/gms/internal/zzos;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->zzeh()Lcom/google/android/gms/internal/zzos;

    move-result-object v1

    :cond_5
    move-object v13, v1

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->getCallToAction()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->getStarRating()D

    move-result-wide v15

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->getStore()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->getPrice()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzvc;->getVideoController()Lcom/google/android/gms/internal/zzks;

    move-result-object v21

    const/16 v22, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v22}, Lcom/google/android/gms/internal/zznq;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzos;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zznn;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzks;Landroid/view/View;)V

    new-instance v9, Lcom/google/android/gms/internal/zznx;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvS:Lcom/google/android/gms/internal/zzcu;

    move-object v1, v9

    move-object v3, v7

    move-object v10, v6

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zznx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zznz;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzvc;Lcom/google/android/gms/internal/zzoa;)V

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/zznq;->zzb(Lcom/google/android/gms/internal/zzny;)V

    invoke-direct {v7, v10}, Lcom/google/android/gms/ads/internal/zzbb;->zza(Lcom/google/android/gms/internal/zznq;)V

    goto/16 :goto_3

    :cond_6
    if-eqz v6, :cond_8

    iget-object v4, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->zzwg:Lcom/google/android/gms/internal/zzpq;

    if-eqz v4, :cond_8

    new-instance v5, Lcom/google/android/gms/internal/zzns;

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvf;->getHeadline()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvf;->getImages()Ljava/util/List;

    move-result-object v11

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvf;->getBody()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvf;->zzem()Lcom/google/android/gms/internal/zzos;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvf;->zzem()Lcom/google/android/gms/internal/zzos;

    move-result-object v1

    :cond_7
    move-object v13, v1

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvf;->getCallToAction()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvf;->getAdvertiser()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvf;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzvf;->getVideoController()Lcom/google/android/gms/internal/zzks;

    move-result-object v18

    const/16 v19, 0x0

    move-object v9, v5

    invoke-direct/range {v9 .. v19}, Lcom/google/android/gms/internal/zzns;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzos;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zznn;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzks;Landroid/view/View;)V

    new-instance v9, Lcom/google/android/gms/internal/zznx;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvS:Lcom/google/android/gms/internal/zzcu;

    move-object v1, v9

    move-object v3, v7

    move-object v10, v5

    move-object v5, v6

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zznx;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zznz;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzvf;Lcom/google/android/gms/internal/zzoa;)V

    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/zzns;->zzb(Lcom/google/android/gms/internal/zzny;)V

    invoke-direct {v7, v10}, Lcom/google/android/gms/ads/internal/zzbb;->zza(Lcom/google/android/gms/internal/zzns;)V

    goto/16 :goto_3

    :cond_8
    if-eqz v2, :cond_9

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwi:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v1, :cond_9

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwi:Landroid/support/v4/util/SimpleArrayMap;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzpj;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/zzbg;

    invoke-direct {v3, v7, v2}, Lcom/google/android/gms/ads/internal/zzbg;-><init>(Lcom/google/android/gms/ads/internal/zzbb;Lcom/google/android/gms/internal/zzpj;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_9
    const-string v1, "No matching mapper/listener for retrieved native ad template."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/google/android/gms/ads/internal/zzbb;->zze(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v2, "Failed to get native ad mapper"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_a
    iget-object v1, v8, Lcom/google/android/gms/internal/zzaff;->zzXT:Lcom/google/android/gms/internal/zzoa;

    instance-of v2, v1, Lcom/google/android/gms/internal/zzns;

    if-eqz v2, :cond_b

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwg:Lcom/google/android/gms/internal/zzpq;

    if-eqz v2, :cond_b

    iget-object v1, v8, Lcom/google/android/gms/internal/zzaff;->zzXT:Lcom/google/android/gms/internal/zzoa;

    check-cast v1, Lcom/google/android/gms/internal/zzns;

    invoke-direct {v7, v1}, Lcom/google/android/gms/ads/internal/zzbb;->zza(Lcom/google/android/gms/internal/zzns;)V

    goto :goto_3

    :cond_b
    instance-of v2, v1, Lcom/google/android/gms/internal/zznq;

    if-eqz v2, :cond_c

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwf:Lcom/google/android/gms/internal/zzpn;

    if-eqz v2, :cond_c

    iget-object v1, v8, Lcom/google/android/gms/internal/zzaff;->zzXT:Lcom/google/android/gms/internal/zzoa;

    check-cast v1, Lcom/google/android/gms/internal/zznq;

    invoke-direct {v7, v1}, Lcom/google/android/gms/ads/internal/zzbb;->zza(Lcom/google/android/gms/internal/zznq;)V

    goto :goto_3

    :cond_c
    instance-of v2, v1, Lcom/google/android/gms/internal/zznu;

    if-eqz v2, :cond_d

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwi:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v2, :cond_d

    iget-object v2, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzwi:Landroid/support/v4/util/SimpleArrayMap;

    check-cast v1, Lcom/google/android/gms/internal/zznu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznu;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zznu;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/ads/internal/zzbf;

    invoke-direct {v3, v7, v1, v8}, Lcom/google/android/gms/ads/internal/zzbf;-><init>(Lcom/google/android/gms/ads/internal/zzbb;Ljava/lang/String;Lcom/google/android/gms/internal/zzaff;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_3
    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzaff;)Z

    move-result v1

    return v1

    :cond_d
    const-string v1, "No matching listener for retrieved native ad template."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Lcom/google/android/gms/ads/internal/zzbb;->zze(I)V

    return v3
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzaff;Z)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsO:Lcom/google/android/gms/ads/internal/zzbi;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbi;->zzbo()Z

    move-result p1

    return p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zznb;)Z
    .locals 5

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzFu:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Lcom/google/android/gms/internal/zzyh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvS:Lcom/google/android/gms/internal/zzcu;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->zzvT:Lcom/google/android/gms/internal/zzaje;

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/google/android/gms/internal/zzyh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzbb;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuP:Lcom/google/android/gms/internal/zzyh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuP:Lcom/google/android/gms/internal/zzyh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzyh;->zzgs()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuP:Lcom/google/android/gms/internal/zzyh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzyh;->zzgt()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/ads/internal/zzd;->zza(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zznb;)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "Error initializing webview."

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/zzajc;->zzz(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Ads"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final zzaC()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaff;->zzMI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzbb;->zzau()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzaC()V

    return-void
.end method

.method public final zzaH()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaff;->zzMI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzbb;->zzat()V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzaH()V

    return-void
.end method

.method public final zzaO()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    :cond_0
    return-void
.end method

.method public final zzaP()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaff;->zzTo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXN:Lcom/google/android/gms/internal/zzub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXN:Lcom/google/android/gms/internal/zzub;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzub;->zzMm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzas()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/ads/internal/zzd;->zzas()V

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzta:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzFC:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzbb;->zzbj()V

    :cond_0
    return-void
.end method

.method public final zzbi()Lcom/google/android/gms/internal/zzyh;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuP:Lcom/google/android/gms/internal/zzyh;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzbj()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafk;->zzhG()Lcom/google/android/gms/internal/zzfh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzfh;->zza(Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzaff;Landroid/view/View;Lcom/google/android/gms/ads/internal/js/zzai;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzta:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzta:Z

    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final zzbk()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzta:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafk;->zzhG()Lcom/google/android/gms/internal/zzfh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfh;->zzg(Lcom/google/android/gms/internal/zzaff;)V

    return-void

    :cond_0
    const-string v0, "Request to enable ActiveView before adState is available."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final zzbl()Landroid/support/v4/util/SimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpw;",
            ">;"
        }
    .end annotation

    const-string v0, "getOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwi:Landroid/support/v4/util/SimpleArrayMap;

    return-object v0
.end method

.method public final zzbm()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziH()Lcom/google/android/gms/internal/zzaks;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwj:Lcom/google/android/gms/internal/zzon;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwj:Lcom/google/android/gms/internal/zzon;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzon;->zzIr:Lcom/google/android/gms/internal/zzlx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziH()Lcom/google/android/gms/internal/zzaks;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwj:Lcom/google/android/gms/internal/zzon;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzon;->zzIr:Lcom/google/android/gms/internal/zzlx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaks;->zzb(Lcom/google/android/gms/internal/zzlx;)V

    :cond_0
    return-void
.end method

.method public final zzc(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setNativeTemplates must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwq:Ljava/util/List;

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/zzaka;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzuO:Lcom/google/android/gms/internal/zzaka;

    return-void
.end method

.method protected final zze(I)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzFu:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzbb;->zzbn()V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/internal/zzd;->zze(I)V

    return-void
.end method

.method public final zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/zzpt;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getOnCustomClickListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwh:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzpt;

    return-object p1
.end method
