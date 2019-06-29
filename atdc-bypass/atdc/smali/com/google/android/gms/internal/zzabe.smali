.class final Lcom/google/android/gms/internal/zzabe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzUc:Lcom/google/android/gms/internal/zzaaz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaaz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabe;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabe;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaz;->zzb(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabe;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaz;->zzb(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzy;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabe;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/ads/internal/js/zzy;)Lcom/google/android/gms/ads/internal/js/zzy;

    :cond_0
    return-void
.end method
