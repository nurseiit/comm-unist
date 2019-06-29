.class public final Lcom/google/android/gms/internal/zzue;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzui;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private zzMA:I

.field private zzMB:Lcom/google/android/gms/internal/zzuz;

.field private final zzMs:Ljava/lang/String;

.field private final zzMt:J

.field private final zzMu:Lcom/google/android/gms/internal/zzub;

.field private final zzMv:Lcom/google/android/gms/internal/zzua;

.field private final zzMw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzMx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzMy:Z

.field private zzMz:Lcom/google/android/gms/internal/zzut;

.field private final zzsX:Lcom/google/android/gms/internal/zzuq;

.field private final zztS:Lcom/google/android/gms/internal/zzon;

.field private final zztT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zztW:Lcom/google/android/gms/internal/zzaje;

.field private zzuT:Lcom/google/android/gms/internal/zzir;

.field private final zzuZ:Lcom/google/android/gms/internal/zziv;

.field private final zzwJ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzub;Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzaje;ZZLcom/google/android/gms/internal/zzon;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzuq;",
            "Lcom/google/android/gms/internal/zzub;",
            "Lcom/google/android/gms/internal/zzua;",
            "Lcom/google/android/gms/internal/zzir;",
            "Lcom/google/android/gms/internal/zziv;",
            "Lcom/google/android/gms/internal/zzaje;",
            "ZZ",
            "Lcom/google/android/gms/internal/zzon;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/google/android/gms/internal/zzue;->mLock:Ljava/lang/Object;

    const/4 v3, -0x2

    iput v3, v0, Lcom/google/android/gms/internal/zzue;->zzMA:I

    move-object v3, p1

    iput-object v3, v0, Lcom/google/android/gms/internal/zzue;->mContext:Landroid/content/Context;

    move-object v3, p3

    iput-object v3, v0, Lcom/google/android/gms/internal/zzue;->zzsX:Lcom/google/android/gms/internal/zzuq;

    move-object v3, p5

    iput-object v3, v0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    const-string v3, "com.google.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzue;->zzfj()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lcom/google/android/gms/internal/zzue;->zzMs:Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/zzue;->zzMu:Lcom/google/android/gms/internal/zzub;

    iget-wide v3, v2, Lcom/google/android/gms/internal/zzub;->zzLZ:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    iget-wide v1, v2, Lcom/google/android/gms/internal/zzub;->zzLZ:J

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x2710

    :goto_0
    iput-wide v1, v0, Lcom/google/android/gms/internal/zzue;->zzMt:J

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/zzue;->zzuT:Lcom/google/android/gms/internal/zzir;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/zzue;->zzuZ:Lcom/google/android/gms/internal/zziv;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/zzue;->zztW:Lcom/google/android/gms/internal/zzaje;

    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzue;->zzwJ:Z

    move/from16 v1, p10

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzue;->zzMy:Z

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/zzue;->zztS:Lcom/google/android/gms/internal/zzon;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/zzue;->zztT:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/zzue;->zzMw:Ljava/util/List;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/zzue;->zzMx:Ljava/util/List;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/ads/mediation/MediationAdapter;)Lcom/google/android/gms/internal/zzut;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzvj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzvj;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzue;Lcom/google/android/gms/internal/zzut;)Lcom/google/android/gms/internal/zzut;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzue;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzue;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/zzud;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzua;->zzLP:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzue;->zzaf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zztW:Lcom/google/android/gms/internal/zzaje;

    iget v1, v1, Lcom/google/android/gms/internal/zzaje;->zzaaP:I

    const v2, 0x3e8fa0

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzue;->zzuT:Lcom/google/android/gms/internal/zzir;

    invoke-interface {v1, v2, v3, v0, p1}, Lcom/google/android/gms/internal/zzut;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzir;Ljava/lang/String;Lcom/google/android/gms/internal/zzuw;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzue;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzue;->zzuT:Lcom/google/android/gms/internal/zzir;

    move-object v5, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzut;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzir;Ljava/lang/String;Lcom/google/android/gms/internal/zzuw;)V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzue;->zzwJ:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzua;->zzfi()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzue;->zzuT:Lcom/google/android/gms/internal/zzir;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v5, v4, Lcom/google/android/gms/internal/zzua;->zzLH:Ljava/lang/String;

    move-object v4, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/zzut;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzir;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzuw;)V

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzue;->zzMy:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzua;->zzLS:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzue;->zzuT:Lcom/google/android/gms/internal/zzir;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v5, v4, Lcom/google/android/gms/internal/zzua;->zzLH:Ljava/lang/String;

    new-instance v7, Lcom/google/android/gms/internal/zzon;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzua;->zzLW:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzue;->zzag(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/google/android/gms/internal/zzon;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v8, v4, Lcom/google/android/gms/internal/zzua;->zzLV:Ljava/util/List;

    move-object v4, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/zzut;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzir;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzuw;Lcom/google/android/gms/internal/zzon;Ljava/util/List;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzue;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzue;->zzuT:Lcom/google/android/gms/internal/zzir;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v6, v5, Lcom/google/android/gms/internal/zzua;->zzLH:Ljava/lang/String;

    move-object v5, v0

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/zzut;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzir;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzuw;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzue;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzue;->zzuT:Lcom/google/android/gms/internal/zzir;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v6, v5, Lcom/google/android/gms/internal/zzua;->zzLH:Ljava/lang/String;

    move-object v5, v0

    move-object v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/zzut;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/internal/zzir;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzuw;)V

    return-void

    :cond_6
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zztT:Ljava/util/List;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMw:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMw:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":false"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzue;->zzMx:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzue;->zzMx:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v3, ":true"

    :cond_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "custom:"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzue;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzue;->zzuT:Lcom/google/android/gms/internal/zzir;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v5, v4, Lcom/google/android/gms/internal/zzua;->zzLH:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzue;->zztS:Lcom/google/android/gms/internal/zzon;

    move-object v4, v0

    move-object v6, p1

    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/zzut;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzir;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzuw;Lcom/google/android/gms/internal/zzon;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not request ad from mediation adapter."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzue;->zzo(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzue;Lcom/google/android/gms/internal/zzud;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzue;->zza(Lcom/google/android/gms/internal/zzud;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzue;I)Z
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzue;->zzp(I)Z

    move-result p0

    return p0
.end method

.method private final zzaf(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzue;->zzfm()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzue;->zzp(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cpm_floor_cents"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Could not remove field. Returning the original value"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private static zzag(Ljava/lang/String;)Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 4

    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "multiple_images"

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const-string p0, "only_urls"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    const-string p0, "native_image_orientation"

    const-string v3, "any"

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "landscape"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v1, "portrait"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "any"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Exception occurred when creating native ad options"

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzue;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzue;->zzMA:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzue;)Lcom/google/android/gms/internal/zzut;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzue;->zzfl()Lcom/google/android/gms/internal/zzut;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzue;)Lcom/google/android/gms/internal/zzut;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzue;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzue;->zzfm()Z

    move-result p0

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzue;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzue;->zzMs:Ljava/lang/String;

    return-object p0
.end method

.method private final zzfj()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzua;->zzLL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzua;->zzLL:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzuq;->zzai(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    return-object v0

    :cond_0
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Fail to determine the custom event\'s version, assuming the old one."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :cond_1
    const-string v0, "com.google.ads.mediation.customevent.CustomEventAdapter"

    return-object v0
.end method

.method private final zzfk()Lcom/google/android/gms/internal/zzuz;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzue;->zzMA:I

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzue;->zzfm()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzue;->zzp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->zzMB:Lcom/google/android/gms/internal/zzuz;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->zzMB:Lcom/google/android/gms/internal/zzuz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzuz;->zzfo()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->zzMB:Lcom/google/android/gms/internal/zzuz;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "Could not get cpm value from MediationResponseMetadata"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzue;->zzfn()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/internal/zzug;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzug;-><init>(I)V

    return-object v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzfl()Lcom/google/android/gms/internal/zzut;
    .locals 4

    const-string v0, "Instantiating mediation adapter: "

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMs:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzue;->zzwJ:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzua;->zzfi()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEG:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/admob/AdMobAdapter;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzue;->zza(Lcom/google/android/gms/ads/mediation/MediationAdapter;)Lcom/google/android/gms/internal/zzut;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzEH:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.google.ads.mediation.AdUrlAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/ads/mediation/AdUrlAdapter;

    invoke-direct {v0}, Lcom/google/ads/mediation/AdUrlAdapter;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzue;->zza(Lcom/google/android/gms/ads/mediation/MediationAdapter;)Lcom/google/android/gms/internal/zzut;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "com.google.ads.mediation.admob.AdMobCustomTabsAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/internal/zzvj;

    new-instance v1, Lcom/google/android/gms/internal/zzwd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzwd;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzvj;-><init>(Lcom/google/android/gms/ads/mediation/MediationAdapter;)V

    return-object v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMs:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzuq;->zzah(Ljava/lang/String;)Lcom/google/android/gms/internal/zzut;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Could not instantiate mediation adapter: "

    iget-object v2, p0, Lcom/google/android/gms/internal/zzue;->zzMs:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private final zzfm()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->zzMu:Lcom/google/android/gms/internal/zzub;

    iget v0, v0, Lcom/google/android/gms/internal/zzub;->zzMj:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzfn()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzua;->zzLP:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzua;->zzLP:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzue;->zzMs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "cpm_cents"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzue;->zzp(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "cpm_floor_cents"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    const-string v2, "penalized_average_cpm_cents"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    :cond_3
    return v2

    :catch_0
    const-string v0, "Could not convert to json. Returning 0"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return v1
.end method

.method private final zzp(I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzue;->zzwJ:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzut;->zzft()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzuZ:Lcom/google/android/gms/internal/zziv;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzut;->getInterstitialAdapterInfo()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzut;->zzfs()Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "capabilities"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0

    :catch_0
    const-string p1, "Could not get adapter info. Returning false"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzut;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "Could not destroy mediation adapter."

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzue;->zzMA:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzue;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zza(JJ)Lcom/google/android/gms/internal/zzuh;
    .locals 19

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/zzue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    new-instance v9, Lcom/google/android/gms/internal/zzud;

    invoke-direct {v9}, Lcom/google/android/gms/internal/zzud;-><init>()V

    sget-object v5, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gms/internal/zzuf;

    invoke-direct {v6, v1, v9}, Lcom/google/android/gms/internal/zzuf;-><init>(Lcom/google/android/gms/internal/zzue;Lcom/google/android/gms/internal/zzud;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-wide v5, v1, Lcom/google/android/gms/internal/zzue;->zzMt:J

    :goto_0
    iget v7, v1, Lcom/google/android/gms/internal/zzue;->zzMA:I

    const/4 v8, -0x2

    if-eq v7, v8, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long v12, v5, v3

    new-instance v3, Lcom/google/android/gms/internal/zzuh;

    iget-object v6, v1, Lcom/google/android/gms/internal/zzue;->zzMv:Lcom/google/android/gms/internal/zzua;

    iget-object v7, v1, Lcom/google/android/gms/internal/zzue;->zzMz:Lcom/google/android/gms/internal/zzut;

    iget-object v8, v1, Lcom/google/android/gms/internal/zzue;->zzMs:Ljava/lang/String;

    iget v10, v1, Lcom/google/android/gms/internal/zzue;->zzMA:I

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/zzue;->zzfk()Lcom/google/android/gms/internal/zzuz;

    move-result-object v11

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/google/android/gms/internal/zzuh;-><init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzut;Ljava/lang/String;Lcom/google/android/gms/internal/zzud;ILcom/google/android/gms/internal/zzuz;J)V

    monitor-exit v2

    return-object v3

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    sub-long v10, v7, v3

    sub-long v12, v5, v10

    sub-long v14, v7, p1

    move-wide/from16 v16, v3

    sub-long v3, p3, v14

    const-wide/16 v14, 0x0

    cmp-long v18, v12, v14

    if-lez v18, :cond_2

    cmp-long v18, v3, v14

    if-gtz v18, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    iget-object v14, v1, Lcom/google/android/gms/internal/zzue;->mLock:Ljava/lang/Object;

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    const/4 v3, -0x1

    :try_start_2
    iput v3, v1, Lcom/google/android/gms/internal/zzue;->zzMA:I

    goto :goto_2

    :cond_2
    :goto_1
    const-string v3, "Timed out waiting for adapter."

    invoke-static {v3}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    const/4 v3, 0x3

    iput v3, v1, Lcom/google/android/gms/internal/zzue;->zzMA:I

    :goto_2
    move-wide/from16 v3, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public final zza(ILcom/google/android/gms/internal/zzuz;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzue;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/zzue;->zzMA:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzue;->zzMB:Lcom/google/android/gms/internal/zzuz;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzue;->mLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final zzo(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/zzue;->zzMA:I

    iget-object p1, p0, Lcom/google/android/gms/internal/zzue;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
