.class public final Lcom/google/android/gms/internal/zzfu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzxn:Lcom/google/android/gms/internal/zzfi;

.field private final zzxp:Lcom/google/android/gms/internal/zzrd;

.field private final zzxq:Lcom/google/android/gms/internal/zzrd;

.field private final zzxr:Lcom/google/android/gms/internal/zzrd;

.field private zzxt:Lcom/google/android/gms/ads/internal/js/zzy;

.field private zzxu:Z

.field private final zzxv:Lcom/google/android/gms/internal/zzrd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfi;Lcom/google/android/gms/ads/internal/js/zzl;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzfz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfz;-><init>(Lcom/google/android/gms/internal/zzfu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfu;->zzxp:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzga;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzga;-><init>(Lcom/google/android/gms/internal/zzfu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfu;->zzxq:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzgb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgb;-><init>(Lcom/google/android/gms/internal/zzfu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfu;->zzxr:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzgc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzgc;-><init>(Lcom/google/android/gms/internal/zzfu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfu;->zzxv:Lcom/google/android/gms/internal/zzrd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfu;->zzxn:Lcom/google/android/gms/internal/zzfi;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfu;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/js/zzl;->zzb(Lcom/google/android/gms/internal/zzcu;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfu;->zzxt:Lcom/google/android/gms/ads/internal/js/zzy;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfu;->zzxt:Lcom/google/android/gms/ads/internal/js/zzy;

    new-instance p2, Lcom/google/android/gms/internal/zzfv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzfv;-><init>(Lcom/google/android/gms/internal/zzfu;)V

    new-instance p3, Lcom/google/android/gms/internal/zzfw;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/zzfw;-><init>(Lcom/google/android/gms/internal/zzfu;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/ads/internal/js/zzy;->zza(Lcom/google/android/gms/internal/zzajs;Lcom/google/android/gms/internal/zzajq;)V

    const-string p1, "Core JS tracking ad unit: "

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfu;->zzxn:Lcom/google/android/gms/internal/zzfi;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzfi;->zzwQ:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfg;->zzcm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfu;)Lcom/google/android/gms/internal/zzfi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzfu;->zzxn:Lcom/google/android/gms/internal/zzfi;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfu;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzfu;->zzxu:Z

    return p1
.end method


# virtual methods
.method final zzb(Lcom/google/android/gms/ads/internal/js/zzai;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu;->zzxp:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu;->zzxq:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu;->zzxr:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaew;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu;->zzxv:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lorg/json/JSONObject;Z)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfu;->zzxt:Lcom/google/android/gms/ads/internal/js/zzy;

    new-instance v0, Lcom/google/android/gms/internal/zzfx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzfx;-><init>(Lcom/google/android/gms/internal/zzfu;Lorg/json/JSONObject;)V

    new-instance p1, Lcom/google/android/gms/internal/zzajr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzajr;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/ads/internal/js/zzy;->zza(Lcom/google/android/gms/internal/zzajs;Lcom/google/android/gms/internal/zzajq;)V

    return-void
.end method

.method final zzc(Lcom/google/android/gms/ads/internal/js/zzai;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu;->zzxr:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu;->zzxq:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu;->zzxp:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbY()Lcom/google/android/gms/internal/zzaew;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaew;->zzp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfu;->zzxv:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :cond_0
    return-void
.end method

.method public final zzcy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfu;->zzxu:Z

    return v0
.end method

.method public final zzcz()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfu;->zzxt:Lcom/google/android/gms/ads/internal/js/zzy;

    new-instance v1, Lcom/google/android/gms/internal/zzfy;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfy;-><init>(Lcom/google/android/gms/internal/zzfu;)V

    new-instance v2, Lcom/google/android/gms/internal/zzajr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzajr;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzy;->zza(Lcom/google/android/gms/internal/zzajs;Lcom/google/android/gms/internal/zzajq;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfu;->zzxt:Lcom/google/android/gms/ads/internal/js/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzy;->release()V

    return-void
.end method
