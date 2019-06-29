.class final Lcom/google/android/gms/internal/zzabo;
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
.field private synthetic zzUD:Lcom/google/android/gms/internal/zzmz;

.field private synthetic zzUE:Lcom/google/android/gms/internal/zzabn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzabn;Lcom/google/android/gms/internal/zzmz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabo;->zzUE:Lcom/google/android/gms/internal/zzabn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabo;->zzUD:Lcom/google/android/gms/internal/zzmz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzc(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zzai;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabo;->zzUE:Lcom/google/android/gms/internal/zzabn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzabn;->zztd:Lcom/google/android/gms/internal/zznb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->zzUD:Lcom/google/android/gms/internal/zzmz;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "jsf"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabo;->zzUE:Lcom/google/android/gms/internal/zzabn;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzabn;->zztd:Lcom/google/android/gms/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznb;->zzdT()V

    const-string v0, "/invalidRequest"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->zzUE:Lcom/google/android/gms/internal/zzabn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabn;->zzUA:Lcom/google/android/gms/internal/zzabu;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabu;->zzUO:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/loadAdURL"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->zzUE:Lcom/google/android/gms/internal/zzabn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabn;->zzUA:Lcom/google/android/gms/internal/zzabu;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabu;->zzUP:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v0, "/loadAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->zzUE:Lcom/google/android/gms/internal/zzabn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabn;->zzUA:Lcom/google/android/gms/internal/zzabu;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabu;->zzUQ:Lcom/google/android/gms/internal/zzrd;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    :try_start_0
    const-string v0, "AFMA_getAd"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->zzUE:Lcom/google/android/gms/internal/zzabn;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzabn;->zzUC:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zzi(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Error requesting an ad url"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
