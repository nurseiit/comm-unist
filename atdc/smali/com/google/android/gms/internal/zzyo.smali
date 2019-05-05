.class final Lcom/google/android/gms/internal/zzyo;
.super Lcom/google/android/gms/internal/zzym;


# instance fields
.field final synthetic zzRC:Ljava/lang/String;

.field final synthetic zzRD:Lcom/google/android/gms/internal/zzyw;

.field final synthetic zzRE:Lcom/google/android/gms/internal/zzajg;

.field final synthetic zzRF:Lcom/google/android/gms/internal/zzyn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyn;Ljava/lang/String;Lcom/google/android/gms/internal/zzyw;Lcom/google/android/gms/internal/zzajg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyo;->zzRF:Lcom/google/android/gms/internal/zzyn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyo;->zzRC:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyo;->zzRD:Lcom/google/android/gms/internal/zzyw;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzyo;->zzRE:Lcom/google/android/gms/internal/zzajg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzym;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/ads/internal/js/zzai;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzyp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzyp;-><init>(Lcom/google/android/gms/internal/zzyo;Lcom/google/android/gms/ads/internal/js/zzai;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyo;->zzRD:Lcom/google/android/gms/internal/zzyw;

    iput-object v0, v1, Lcom/google/android/gms/internal/zzyw;->zzRW:Lcom/google/android/gms/internal/zzrd;

    const-string v1, "/nativeAdPreProcess"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyo;->zzRF:Lcom/google/android/gms/internal/zzyn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzyn;->zza(Lcom/google/android/gms/internal/zzyn;)Lcom/google/android/gms/internal/zzafg;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaai;->body:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ads_id"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyo;->zzRC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Exception occurred while invoking javascript"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzyo;->zzRE:Lcom/google/android/gms/internal/zzajg;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzgv()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyo;->zzRE:Lcom/google/android/gms/internal/zzajg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V

    return-void
.end method
