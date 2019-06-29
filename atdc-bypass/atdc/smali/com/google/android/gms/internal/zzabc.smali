.class final Lcom/google/android/gms/internal/zzabc;
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
.field private synthetic zzUf:Lcom/google/android/gms/internal/zzabb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabc;->zzUf:Lcom/google/android/gms/internal/zzabb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzai;

    :try_start_0
    const-string v0, "AFMA_getAdapterLessMediationAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabc;->zzUf:Lcom/google/android/gms/internal/zzabb;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabb;->zzUd:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error requesting an ad url"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzaaz;->zzgD()Lcom/google/android/gms/internal/zzrn;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabc;->zzUf:Lcom/google/android/gms/internal/zzabb;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzabb;->zzUe:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrn;->zzT(Ljava/lang/String;)V

    return-void
.end method
