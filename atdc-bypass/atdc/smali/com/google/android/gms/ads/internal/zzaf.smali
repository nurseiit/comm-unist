.class final Lcom/google/android/gms/ads/internal/zzaf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzajs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzajs<",
        "Lcom/google/android/gms/ads/internal/js/zzai;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zztG:Lcom/google/android/gms/ads/internal/zzae;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzaf;->zztG:Lcom/google/android/gms/ads/internal/zzae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzai;

    const-string v0, "/appSettingsFetched"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzaf;->zztG:Lcom/google/android/gms/ads/internal/zzae;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzae;->zztB:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzaf;->zztG:Lcom/google/android/gms/ads/internal/zzae;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzae;->zztC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "app_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaf;->zztG:Lcom/google/android/gms/ads/internal/zzae;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzae;->zztC:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzaf;->zztG:Lcom/google/android/gms/ads/internal/zzae;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzae;->zztD:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ad_unit_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaf;->zztG:Lcom/google/android/gms/ads/internal/zzae;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzae;->zztD:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "is_init"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaf;->zztG:Lcom/google/android/gms/ads/internal/zzae;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/zzae;->zztE:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "pn"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaf;->zztG:Lcom/google/android/gms/ads/internal/zzae;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzae;->zztF:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AFMA_fetchAppSettings"

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "/appSettingsFetched"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzaf;->zztG:Lcom/google/android/gms/ads/internal/zzae;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzae;->zztB:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string p1, "Error requesting application settings"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
