.class final Lcom/google/android/gms/internal/zzaci;
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
.field private synthetic zzUA:Lcom/google/android/gms/internal/zzabu;

.field private synthetic zzWj:Lcom/google/android/gms/internal/zzacg;

.field private synthetic zzWk:Lcom/google/android/gms/internal/zzrd;

.field private synthetic zzWl:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzacg;Lcom/google/android/gms/internal/zzrd;Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzabu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaci;->zzWj:Lcom/google/android/gms/internal/zzacg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaci;->zzWk:Lcom/google/android/gms/internal/zzrd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaci;->zzWl:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaci;->zzUA:Lcom/google/android/gms/internal/zzabu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzai;

    const-string v0, "/loadSdkConstants"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaci;->zzWk:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :try_start_0
    const-string v0, "AFMA_getSdkConstants"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaci;->zzWl:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error requesting an ad url"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaci;->zzUA:Lcom/google/android/gms/internal/zzabu;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzacg;->zze(Lcom/google/android/gms/internal/zzabu;)V

    return-void
.end method
