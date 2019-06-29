.class final Lcom/google/android/gms/internal/zzabb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzUc:Lcom/google/android/gms/internal/zzaaz;

.field final synthetic zzUd:Lorg/json/JSONObject;

.field final synthetic zzUe:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaaz;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabb;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabb;->zzUd:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabb;->zzUe:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabb;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    invoke-static {}, Lcom/google/android/gms/internal/zzaaz;->zzgE()Lcom/google/android/gms/ads/internal/js/zzl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/js/zzl;->zzb(Lcom/google/android/gms/internal/zzcu;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/ads/internal/js/zzy;)Lcom/google/android/gms/ads/internal/js/zzy;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabb;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaz;->zzb(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzabc;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzabc;-><init>(Lcom/google/android/gms/internal/zzabb;)V

    new-instance v2, Lcom/google/android/gms/internal/zzabd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzabd;-><init>(Lcom/google/android/gms/internal/zzabb;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzy;->zza(Lcom/google/android/gms/internal/zzajs;Lcom/google/android/gms/internal/zzajq;)V

    return-void
.end method
