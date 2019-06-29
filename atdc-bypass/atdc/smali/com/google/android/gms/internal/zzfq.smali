.class public final Lcom/google/android/gms/internal/zzfq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzgd;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzxn:Lcom/google/android/gms/internal/zzfi;

.field private final zzxo:Lcom/google/android/gms/ads/internal/js/zzai;

.field private final zzxp:Lcom/google/android/gms/internal/zzrd;

.field private final zzxq:Lcom/google/android/gms/internal/zzrd;

.field private final zzxr:Lcom/google/android/gms/internal/zzrd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfi;Lcom/google/android/gms/ads/internal/js/zzai;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzfr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfr;-><init>(Lcom/google/android/gms/internal/zzfq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxp:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzfs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzfs;-><init>(Lcom/google/android/gms/internal/zzfq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxq:Lcom/google/android/gms/internal/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/zzft;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzft;-><init>(Lcom/google/android/gms/internal/zzfq;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxr:Lcom/google/android/gms/internal/zzrd;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfq;->zzxn:Lcom/google/android/gms/internal/zzfi;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfq;->zzxo:Lcom/google/android/gms/ads/internal/js/zzai;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfq;->zzxo:Lcom/google/android/gms/ads/internal/js/zzai;

    const-string p2, "/updateActiveView"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxp:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p2, "/untrackActiveViewUnit"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxq:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p2, "/visibilityChanged"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxr:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p1, "Custom JS tracking ad unit: "

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfq;->zzxn:Lcom/google/android/gms/internal/zzfi;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzfi;->zzwQ:Lcom/google/android/gms/internal/zzfg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzfg;->zzcm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

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

.method static synthetic zza(Lcom/google/android/gms/internal/zzfq;)Lcom/google/android/gms/internal/zzfi;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzfq;->zzxn:Lcom/google/android/gms/internal/zzfi;

    return-object p0
.end method


# virtual methods
.method public final zzb(Lorg/json/JSONObject;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzfq;->zzxo:Lcom/google/android/gms/ads/internal/js/zzai;

    const-string v0, "AFMA_updateActiveView"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfq;->zzxn:Lcom/google/android/gms/internal/zzfi;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzfi;->zzb(Lcom/google/android/gms/internal/zzgd;)V

    return-void
.end method

.method public final zzcy()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzcz()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfq;->zzxo:Lcom/google/android/gms/ads/internal/js/zzai;

    const-string v1, "/visibilityChanged"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzxr:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzxq:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfq;->zzxp:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void
.end method
