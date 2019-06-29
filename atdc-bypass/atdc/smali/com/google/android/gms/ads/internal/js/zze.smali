.class public final Lcom/google/android/gms/ads/internal/js/zze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/js/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzJH:Lcom/google/android/gms/internal/zzaka;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 11
    .param p3    # Lcom/google/android/gms/internal/zzcu;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzakm;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbA()Lcom/google/android/gms/internal/zzakk;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zziv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zziv;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzig;->zzde()Lcom/google/android/gms/internal/zzig;

    move-result-object v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v5, p3

    move-object v6, p2

    move-object v9, p4

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/gms/internal/zzakk;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zziv;ZZLcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzaje;Lcom/google/android/gms/internal/zznb;Lcom/google/android/gms/ads/internal/zzbl;Lcom/google/android/gms/ads/internal/zzv;Lcom/google/android/gms/internal/zzig;)Lcom/google/android/gms/internal/zzaka;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zze;->zzJH:Lcom/google/android/gms/internal/zzaka;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/zze;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzaka;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    return-void
.end method

.method private static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    invoke-static {}, Lcom/google/android/gms/internal/zzaiy;->zzil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/js/zze;)Lcom/google/android/gms/internal/zzaka;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/js/zze;->zzJH:Lcom/google/android/gms/internal/zzaka;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zze;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->destroy()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/js/zzb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zze;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzk;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/js/zzk;-><init>(Lcom/google/android/gms/ads/internal/js/zze;Lcom/google/android/gms/ads/internal/js/zzb;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzakf;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqk;Lcom/google/android/gms/ads/internal/overlay/zzag;ZLcom/google/android/gms/internal/zzrm;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwv;)V
    .locals 12

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/js/zze;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v2

    new-instance v9, Lcom/google/android/gms/ads/internal/zzw;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Lcom/google/android/gms/ads/internal/zzw;-><init>(Lcom/google/android/gms/internal/zzaet;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v2 .. v11}, Lcom/google/android/gms/internal/zzakb;->zza(Lcom/google/android/gms/internal/zzim;Lcom/google/android/gms/ads/internal/overlay/zzw;Lcom/google/android/gms/internal/zzqk;Lcom/google/android/gms/ads/internal/overlay/zzag;ZLcom/google/android/gms/internal/zzrm;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzwv;Lcom/google/android/gms/internal/zzaet;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zze;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzakb;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzf;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/js/zzf;-><init>(Lcom/google/android/gms/ads/internal/js/zze;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zze;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzac(Ljava/lang/String;)V
    .locals 3

    const-string v0, "<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/js/zzh;-><init>(Lcom/google/android/gms/ads/internal/js/zze;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zze;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzad(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/js/zzj;-><init>(Lcom/google/android/gms/ads/internal/js/zze;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zze;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzae(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/js/zzi;-><init>(Lcom/google/android/gms/ads/internal/js/zze;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zze;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zze;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzakb;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzrd;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zze;->zzJH:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzaka;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzeY()Lcom/google/android/gms/ads/internal/js/zzaj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzak;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/js/zzak;-><init>(Lcom/google/android/gms/ads/internal/js/zzai;)V

    return-object v0
.end method

.method public final zzi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/js/zzg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/ads/internal/js/zzg;-><init>(Lcom/google/android/gms/ads/internal/js/zze;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zze;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
