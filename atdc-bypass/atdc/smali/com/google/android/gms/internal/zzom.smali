.class final Lcom/google/android/gms/internal/zzom;
.super Lcom/google/android/gms/internal/zzym;


# instance fields
.field private synthetic zzIk:Lcom/google/android/gms/internal/zzog;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzom;->zzIk:Lcom/google/android/gms/internal/zzog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzym;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/ads/internal/js/zzai;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzom;->zzIk:Lcom/google/android/gms/internal/zzog;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzog;->zza(Lcom/google/android/gms/internal/zzog;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaka;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "/loadHtml"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzom;->zzIk:Lcom/google/android/gms/internal/zzog;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzog;->zza(Lcom/google/android/gms/internal/zzog;Lcom/google/android/gms/ads/internal/js/zzai;)Lcom/google/android/gms/internal/zzrd;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v1, "/showOverlay"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzom;->zzIk:Lcom/google/android/gms/internal/zzog;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzog;->zzb(Lcom/google/android/gms/internal/zzog;Lcom/google/android/gms/ads/internal/js/zzai;)Lcom/google/android/gms/internal/zzrd;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    const-string v1, "/hideOverlay"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzom;->zzIk:Lcom/google/android/gms/internal/zzog;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzog;->zzc(Lcom/google/android/gms/internal/zzog;Lcom/google/android/gms/ads/internal/js/zzai;)Lcom/google/android/gms/internal/zzrd;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    const-string v1, "/sendMessageToSdk"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzom;->zzIk:Lcom/google/android/gms/internal/zzog;

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/zzog;->zzd(Lcom/google/android/gms/internal/zzog;Lcom/google/android/gms/ads/internal/js/zzai;)Lcom/google/android/gms/internal/zzrd;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void
.end method
