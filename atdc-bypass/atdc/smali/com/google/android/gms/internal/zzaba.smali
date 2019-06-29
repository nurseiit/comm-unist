.class final Lcom/google/android/gms/internal/zzaba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzUc:Lcom/google/android/gms/internal/zzaaz;

.field private synthetic zzsW:Lcom/google/android/gms/internal/zzafg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/internal/zzafg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaba;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaba;->zzsW:Lcom/google/android/gms/internal/zzafg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaba;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/internal/zzzp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaba;->zzsW:Lcom/google/android/gms/internal/zzafg;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzzp;->zza(Lcom/google/android/gms/internal/zzafg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaba;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaz;->zzb(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaba;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaaz;->zzb(Lcom/google/android/gms/internal/zzaaz;)Lcom/google/android/gms/ads/internal/js/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzy;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaba;->zzUc:Lcom/google/android/gms/internal/zzaaz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaaz;->zza(Lcom/google/android/gms/internal/zzaaz;Lcom/google/android/gms/ads/internal/js/zzy;)Lcom/google/android/gms/ads/internal/js/zzy;

    :cond_0
    return-void
.end method
