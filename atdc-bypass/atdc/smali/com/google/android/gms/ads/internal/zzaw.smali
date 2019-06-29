.class final Lcom/google/android/gms/ads/internal/zzaw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzuC:Lcom/google/android/gms/internal/zzvc;

.field private synthetic zzuD:Lcom/google/android/gms/ads/internal/zzab;

.field private synthetic zzuE:Lcom/google/android/gms/internal/zzvf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzvc;Lcom/google/android/gms/ads/internal/zzab;Lcom/google/android/gms/internal/zzvf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuC:Lcom/google/android/gms/internal/zzvc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuD:Lcom/google/android/gms/ads/internal/zzab;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuE:Lcom/google/android/gms/internal/zzvf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaka;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuC:Lcom/google/android/gms/internal/zzvc;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuC:Lcom/google/android/gms/internal/zzvc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvc;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuC:Lcom/google/android/gms/internal/zzvc;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzvc;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuD:Lcom/google/android/gms/ads/internal/zzab;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzab;->zztt:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzx;->onAdClicked()V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzar;->zzc(Lcom/google/android/gms/internal/zzaka;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuE:Lcom/google/android/gms/internal/zzvf;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuE:Lcom/google/android/gms/internal/zzvf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzvf;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuE:Lcom/google/android/gms/internal/zzvf;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/zzvf;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzaw;->zzuD:Lcom/google/android/gms/ads/internal/zzab;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzab;->zztt:Lcom/google/android/gms/ads/internal/zzx;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzx;->onAdClicked()V

    return-void

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzar;->zzc(Lcom/google/android/gms/internal/zzaka;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unable to call handleClick on mapper"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
