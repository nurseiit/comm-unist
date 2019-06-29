.class public final Lcom/google/android/gms/ads/internal/zzak;
.super Lcom/google/android/gms/internal/zzjv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzsS:Lcom/google/android/gms/ads/internal/zzv;

.field private final zzsX:Lcom/google/android/gms/internal/zzuq;

.field private zztK:Lcom/google/android/gms/internal/zzjo;

.field private zztO:Lcom/google/android/gms/internal/zziv;

.field private zztP:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zztS:Lcom/google/android/gms/internal/zzon;

.field private zztU:Lcom/google/android/gms/internal/zzkk;

.field private final zztV:Ljava/lang/String;

.field private final zztW:Lcom/google/android/gms/internal/zzaje;

.field private zzua:Lcom/google/android/gms/internal/zzpn;

.field private zzub:Lcom/google/android/gms/internal/zzpq;

.field private zzuc:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpt;",
            ">;"
        }
    .end annotation
.end field

.field private zzud:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpw;",
            ">;"
        }
    .end annotation
.end field

.field private zzue:Lcom/google/android/gms/internal/zzpz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzak;->zztV:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzak;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzak;->zztW:Lcom/google/android/gms/internal/zzaje;

    new-instance p1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzud:Landroid/support/v4/util/SimpleArrayMap;

    new-instance p1, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzuc:Landroid/support/v4/util/SimpleArrayMap;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzak;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zztP:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzon;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zztS:Lcom/google/android/gms/internal/zzon;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzpn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzua:Lcom/google/android/gms/internal/zzpn;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzpq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzub:Lcom/google/android/gms/internal/zzpq;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/internal/zziv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zzue:Lcom/google/android/gms/internal/zzpz;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzak;->zztO:Lcom/google/android/gms/internal/zziv;

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzpw;Lcom/google/android/gms/internal/zzpt;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Custom template ID for native custom template ad is empty. Please provide a valid template id."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzak;->zzud:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzak;->zzuc:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p2, p1, p3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzaZ()Lcom/google/android/gms/internal/zzjr;
    .locals 18

    move-object/from16 v0, p0

    new-instance v17, Lcom/google/android/gms/ads/internal/zzai;

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzak;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzak;->zztV:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/zzak;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/zzak;->zztW:Lcom/google/android/gms/internal/zzaje;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/zzak;->zztK:Lcom/google/android/gms/internal/zzjo;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/zzak;->zzua:Lcom/google/android/gms/internal/zzpn;

    iget-object v8, v0, Lcom/google/android/gms/ads/internal/zzak;->zzub:Lcom/google/android/gms/internal/zzpq;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/zzak;->zzud:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/zzak;->zzuc:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v11, v0, Lcom/google/android/gms/ads/internal/zzak;->zztS:Lcom/google/android/gms/internal/zzon;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/zzak;->zztU:Lcom/google/android/gms/internal/zzkk;

    iget-object v13, v0, Lcom/google/android/gms/ads/internal/zzak;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v14, v0, Lcom/google/android/gms/ads/internal/zzak;->zzue:Lcom/google/android/gms/internal/zzpz;

    iget-object v15, v0, Lcom/google/android/gms/ads/internal/zzak;->zztO:Lcom/google/android/gms/internal/zziv;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzak;->zztP:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/ads/internal/zzai;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzjo;Lcom/google/android/gms/internal/zzpn;Lcom/google/android/gms/internal/zzpq;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/internal/zzon;Lcom/google/android/gms/internal/zzkk;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V

    return-object v17
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzjo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zztK:Lcom/google/android/gms/internal/zzjo;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzkk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzak;->zztU:Lcom/google/android/gms/internal/zzkk;

    return-void
.end method
