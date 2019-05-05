.class public final Lcom/google/android/gms/ads/internal/zzai;
.super Lcom/google/android/gms/internal/zzjs;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final zzsS:Lcom/google/android/gms/ads/internal/zzv;

.field private final zzsX:Lcom/google/android/gms/internal/zzuq;

.field private final zztK:Lcom/google/android/gms/internal/zzjo;

.field private final zztL:Lcom/google/android/gms/internal/zzpn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zztM:Lcom/google/android/gms/internal/zzpq;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zztN:Lcom/google/android/gms/internal/zzpz;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zztO:Lcom/google/android/gms/internal/zziv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zztP:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zztQ:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpw;",
            ">;"
        }
    .end annotation
.end field

.field private final zztR:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpt;",
            ">;"
        }
    .end annotation
.end field

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

.field private final zztU:Lcom/google/android/gms/internal/zzkk;

.field private final zztV:Ljava/lang/String;

.field private final zztW:Lcom/google/android/gms/internal/zzaje;

.field private zztX:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/ads/internal/zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzjo;Lcom/google/android/gms/internal/zzpn;Lcom/google/android/gms/internal/zzpq;Landroid/support/v4/util/SimpleArrayMap;Landroid/support/v4/util/SimpleArrayMap;Lcom/google/android/gms/internal/zzon;Lcom/google/android/gms/internal/zzkk;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzpz;Lcom/google/android/gms/internal/zziv;Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzuq;",
            "Lcom/google/android/gms/internal/zzaje;",
            "Lcom/google/android/gms/internal/zzjo;",
            "Lcom/google/android/gms/internal/zzpn;",
            "Lcom/google/android/gms/internal/zzpq;",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpw;",
            ">;",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzpt;",
            ">;",
            "Lcom/google/android/gms/internal/zzon;",
            "Lcom/google/android/gms/internal/zzkk;",
            "Lcom/google/android/gms/ads/internal/zzv;",
            "Lcom/google/android/gms/internal/zzpz;",
            "Lcom/google/android/gms/internal/zziv;",
            "Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjs;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->mLock:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->mContext:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztV:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zzsX:Lcom/google/android/gms/internal/zzuq;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztW:Lcom/google/android/gms/internal/zzaje;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztK:Lcom/google/android/gms/internal/zzjo;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztM:Lcom/google/android/gms/internal/zzpq;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztL:Lcom/google/android/gms/internal/zzpn;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztQ:Landroid/support/v4/util/SimpleArrayMap;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztR:Landroid/support/v4/util/SimpleArrayMap;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztS:Lcom/google/android/gms/internal/zzon;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/zzai;->zzaY()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztT:Ljava/util/List;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztU:Lcom/google/android/gms/internal/zzkk;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztN:Lcom/google/android/gms/internal/zzpz;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztO:Lcom/google/android/gms/internal/zziv;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->zztP:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzai;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmo;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzai;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzai;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzai;Lcom/google/android/gms/internal/zzir;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzai;->zzd(Lcom/google/android/gms/internal/zzir;)V

    return-void
.end method

.method private final zzaW()Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzDP:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztN:Lcom/google/android/gms/internal/zzpz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzaX()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztL:Lcom/google/android/gms/internal/zzpn;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztM:Lcom/google/android/gms/internal/zzpq;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztQ:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztQ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final zzaY()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zztM:Lcom/google/android/gms/internal/zzpq;

    if-eqz v1, :cond_0

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zztL:Lcom/google/android/gms/internal/zzpn;

    if-eqz v1, :cond_1

    const-string v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zztQ:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "3"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzai;Lcom/google/android/gms/internal/zzir;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzai;->zze(Lcom/google/android/gms/internal/zzir;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzai;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzai;->zzaW()Z

    move-result p0

    return p0
.end method

.method private final zzd(Lcom/google/android/gms/internal/zzir;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/ads/internal/zzq;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzai;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzai;->zztO:Lcom/google/android/gms/internal/zziv;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzai;->zztV:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzai;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzai;->zztW:Lcom/google/android/gms/internal/zzaje;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztX:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztN:Lcom/google/android/gms/internal/zzpz;

    const-string v1, "setOnPublisherAdViewLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwm:Lcom/google/android/gms/internal/zzpz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztP:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztP:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzai()Lcom/google/android/gms/internal/zzke;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztP:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzai()Lcom/google/android/gms/internal/zzke;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzke;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztP:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->getManualImpressionsEnabled()Z

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzq;->setManualImpressionsEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztL:Lcom/google/android/gms/internal/zzpn;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwf:Lcom/google/android/gms/internal/zzpn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztM:Lcom/google/android/gms/internal/zzpq;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwg:Lcom/google/android/gms/internal/zzpq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztQ:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwi:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztR:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwh:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztS:Lcom/google/android/gms/internal/zzon;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzq;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwj:Lcom/google/android/gms/internal/zzon;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzai;->zzaY()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzc(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztK:Lcom/google/android/gms/internal/zzjo;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzjo;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztU:Lcom/google/android/gms/internal/zzkk;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzkk;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzai;->zzaX()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zztN:Lcom/google/android/gms/internal/zzpz;

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzq;->zzd(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzai;->zzaX()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    const-string v1, "ina"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztN:Lcom/google/android/gms/internal/zzpz;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->extras:Landroid/os/Bundle;

    const-string v1, "iba"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/internal/zzir;)Z

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/zzir;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/ads/internal/zzbb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzai;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zziv;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/zziv;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzai;->zztV:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzai;->zzsX:Lcom/google/android/gms/internal/zzuq;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/zzai;->zztW:Lcom/google/android/gms/internal/zzaje;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzbb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zziv;Ljava/lang/String;Lcom/google/android/gms/internal/zzuq;Lcom/google/android/gms/internal/zzaje;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztX:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztL:Lcom/google/android/gms/internal/zzpn;

    const-string v1, "setOnAppInstallAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwf:Lcom/google/android/gms/internal/zzpn;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztM:Lcom/google/android/gms/internal/zzpq;

    const-string v1, "setOnContentAdLoadedListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwg:Lcom/google/android/gms/internal/zzpq;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztQ:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "setOnCustomTemplateAdLoadedListeners must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwi:Landroid/support/v4/util/SimpleArrayMap;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztK:Lcom/google/android/gms/internal/zzjo;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzbb;->zza(Lcom/google/android/gms/internal/zzjo;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztR:Landroid/support/v4/util/SimpleArrayMap;

    const-string v1, "setOnCustomClickListener must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwh:Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzai;->zzaY()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzbb;->zzc(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztS:Lcom/google/android/gms/internal/zzon;

    const-string v1, "setNativeAdOptions must be called on the main UI thread."

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/google/android/gms/ads/internal/zzbb;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object v0, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzwj:Lcom/google/android/gms/internal/zzon;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->zztU:Lcom/google/android/gms/internal/zzkk;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/ads/internal/zzbb;->zza(Lcom/google/android/gms/internal/zzkk;)V

    invoke-virtual {v7, p1}, Lcom/google/android/gms/ads/internal/zzbb;->zza(Lcom/google/android/gms/internal/zzir;)Z

    return-void
.end method


# virtual methods
.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zztX:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zztX:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzd;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final isLoading()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zztX:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zztX:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzd;->isLoading()Z

    move-result v2

    :cond_0
    monitor-exit v0

    return v2

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzaI()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzai;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zztX:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzai;->zztX:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/zzd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzd;->zzaI()Ljava/lang/String;

    move-result-object v2

    :cond_0
    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzir;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/zzaj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/zzaj;-><init>(Lcom/google/android/gms/ads/internal/zzai;Lcom/google/android/gms/internal/zzir;)V

    sget-object p1, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
