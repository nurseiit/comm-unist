.class public abstract Lcom/google/android/gms/ads/internal/zza;
.super Lcom/google/android/gms/internal/zzka;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzag;
.implements Lcom/google/android/gms/internal/zzafm;
.implements Lcom/google/android/gms/internal/zzim;
.implements Lcom/google/android/gms/internal/zzqk;
.implements Lcom/google/android/gms/internal/zzxy;
.implements Lcom/google/android/gms/internal/zzzp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field protected zzsK:Lcom/google/android/gms/internal/zznb;

.field private zzsL:Lcom/google/android/gms/internal/zzmz;

.field private zzsM:Lcom/google/android/gms/internal/zzmz;

.field protected zzsN:Z

.field protected final zzsO:Lcom/google/android/gms/ads/internal/zzbi;

.field protected final zzsP:Lcom/google/android/gms/ads/internal/zzbt;

.field protected transient zzsQ:Lcom/google/android/gms/internal/zzir;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected final zzsR:Lcom/google/android/gms/internal/zzfh;

.field protected final zzsS:Lcom/google/android/gms/ads/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzbt;Lcom/google/android/gms/ads/internal/zzbi;Lcom/google/android/gms/ads/internal/zzv;)V
    .locals 6
    .param p2    # Lcom/google/android/gms/ads/internal/zzbi;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzka;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsN:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    new-instance p1, Lcom/google/android/gms/ads/internal/zzbi;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/zzbi;-><init>(Lcom/google/android/gms/ads/internal/zza;)V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsO:Lcom/google/android/gms/ads/internal/zzbi;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zza;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzagz;->zzE(Landroid/content/Context;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/zzbt;->zzvT:Lcom/google/android/gms/internal/zzaje;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/zzafk;->zzd(Landroid/content/Context;Lcom/google/android/gms/internal/zzaje;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbE()Lcom/google/android/gms/internal/zzhs;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzhs;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzafk;->zzhG()Lcom/google/android/gms/internal/zzfh;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsR:Lcom/google/android/gms/internal/zzfh;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbC()Lcom/google/android/gms/internal/zzgv;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/zzgv;->initialize(Landroid/content/Context;)V

    sget-object p1, Lcom/google/android/gms/internal/zzmo;->zzFE:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    sget-object p2, Lcom/google/android/gms/internal/zzmo;->zzFG:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/ads/internal/zzb;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/ads/internal/zzb;-><init>(Lcom/google/android/gms/ads/internal/zza;Ljava/util/concurrent/CountDownLatch;Ljava/util/Timer;)V

    const-wide/16 v2, 0x0

    sget-object p1, Lcom/google/android/gms/internal/zzmo;->zzFF:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private static zzr(Ljava/lang/String;)J
    .locals 3

    const-string v0, "ufe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-string p0, "Cannot find valid format of Url fetch time in CSI latency info."

    goto :goto_0

    :catch_1
    const-string p0, "Invalid index for Url fetch time in CSI latency info."

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsO:Lcom/google/android/gms/ads/internal/zzbi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbi;->cancel()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsR:Lcom/google/android/gms/internal/zzfh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfh;->zzh(Lcom/google/android/gms/internal/zzaff;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzbu;->zzcg()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwd:Lcom/google/android/gms/internal/zzke;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwo:Lcom/google/android/gms/internal/zznh;

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwe:Lcom/google/android/gms/internal/zzkk;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/zzbt;->zze(Z)V

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/zzbu;->removeAllViews()V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzca()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzcb()V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    return-void
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvR:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoController()Lcom/google/android/gms/internal/zzks;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsN:Z

    return v0
.end method

.method public final isReady()Z
    .locals 1

    const-string v0, "isLoaded must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvV:Lcom/google/android/gms/internal/zzafp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/internal/zzahp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAdClicked()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafh;->zzhd()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzMa:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvT:Lcom/google/android/gms/internal/zzaje;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaff;->zzMa:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/ads/internal/zza;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwb:Lcom/google/android/gms/internal/zzjl;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwb:Lcom/google/android/gms/internal/zzjl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjl;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not notify onAdClicked event."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwd:Lcom/google/android/gms/internal/zzke;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwd:Lcom/google/android/gms/internal/zzke;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzke;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Could not call the AppEventListener."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .locals 1

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    return-void
.end method

.method public setImmersiveMode(Z)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "onImmersiveModeUpdated is not supported for current ad type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setManualImpressionsEnabled(Z)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to call setManualImpressionsEnabled for an unsupported ad type."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    const-string p1, "RewardedVideoAd.setUserId() is deprecated. Please do not call this method."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final stopLoading()V
    .locals 2

    const-string v0, "stopLoading must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsN:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbt;->zze(Z)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzadd;)V
    .locals 1

    const-string v0, "setRewardedVideoAdListener can only be called from the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/zzaee;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/internal/zzaee;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaee;->type:Ljava/lang/String;

    iget v1, p1, Lcom/google/android/gms/internal/zzaee;->zzWW:I

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    new-instance v2, Lcom/google/android/gms/internal/zzacq;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzacq;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/zzadd;->zza(Lcom/google/android/gms/internal/zzacv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Could not call RewardedVideoAdListener.onRewarded()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzafg;)V
    .locals 10

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzaai;->zzTs:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaai;->zzTB:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaai;->zzTB:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/zza;->zzr(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-wide v6, v3, Lcom/google/android/gms/internal/zzaai;->zzTs:J

    add-long v8, v6, v4

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/zznb;->zzc(J)Lcom/google/android/gms/internal/zzmz;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "stc"

    aput-object v5, v4, v0

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaai;->zzTB:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zznb;->zzO(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzsL:Lcom/google/android/gms/internal/zzmz;

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "arf"

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznb;->zzdS()Lcom/google/android/gms/internal/zzmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsM:Lcom/google/android/gms/internal/zzmz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    const-string v1, "gqi"

    iget-object v2, p1, Lcom/google/android/gms/internal/zzafg;->zzXY:Lcom/google/android/gms/internal/zzaai;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaai;->zzTC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznb;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvV:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvZ:Lcom/google/android/gms/internal/zzafg;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafg;->zzXX:Lcom/google/android/gms/internal/zzig;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/zzc;-><init>(Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/zzafg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzig;->zza(Lcom/google/android/gms/internal/zzii;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/zzafg;->zzXX:Lcom/google/android/gms/internal/zzig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzig;->zzdf()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zznb;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzafg;Lcom/google/android/gms/internal/zznb;)V
.end method

.method public final zza(Lcom/google/android/gms/internal/zziv;)V
    .locals 2

    const-string v0, "setAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwt:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaka;->zza(Lcom/google/android/gms/internal/zziv;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbu;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzbu;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget v1, p1, Lcom/google/android/gms/internal/zziv;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    iget p1, p1, Lcom/google/android/gms/internal/zziv;->heightPixels:I

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzbu;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbu;->requestLayout()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjl;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwb:Lcom/google/android/gms/internal/zzjl;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjo;)V
    .locals 1

    const-string v0, "setAdListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzke;)V
    .locals 1

    const-string v0, "setAppEventListener must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwd:Lcom/google/android/gms/internal/zzke;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzkk;)V
    .locals 1

    const-string v0, "setCorrelationIdProvider must be called on the main UI thread"

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwe:Lcom/google/android/gms/internal/zzkk;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzky;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzky;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "setIconAdOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwl:Lcom/google/android/gms/internal/zzky;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzlx;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzlx;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "setVideoOptions must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwk:Lcom/google/android/gms/internal/zzlx;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zznh;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setOnCustomRenderedAdLoadedListener is not supported for current ad type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzxg;)V
    .locals 0

    const-string p1, "setInAppPurchaseListener is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxo;Ljava/lang/String;)V
    .locals 0

    const-string p1, "setPlayStorePurchaseParams is deprecated and should not be called."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/google/android/gms/internal/zzafh;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzbt;->zza(Ljava/util/HashSet;)V

    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzaff;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzaff;)Z
    .param p1    # Lcom/google/android/gms/internal/zzaff;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public zza(Lcom/google/android/gms/internal/zzir;)Z
    .locals 5

    const-string v0, "loadAd must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbE()Lcom/google/android/gms/internal/zzhs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhs;->zzcX()V

    sget-object v0, Lcom/google/android/gms/internal/zzmo;->zzDR:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzir;->zzh(Lcom/google/android/gms/internal/zzir;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzj;->zzaI(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/zzir;->zzzV:Landroid/location/Location;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzis;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzis;-><init>(Lcom/google/android/gms/internal/zzir;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzis;->zza(Landroid/location/Location;)Lcom/google/android/gms/internal/zzis;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzis;->zzdj()Lcom/google/android/gms/internal/zzir;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvV:Lcom/google/android/gms/internal/zzafp;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/internal/zzahp;

    if-eqz v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v0, "Starting ad request."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zznb;

    sget-object v2, Lcom/google/android/gms/internal/zzmo;->zzCQ:Lcom/google/android/gms/internal/zzme;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbL()Lcom/google/android/gms/internal/zzmm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/zzmm;->zzd(Lcom/google/android/gms/internal/zzme;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "load_ad"

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-object v4, v4, Lcom/google/android/gms/internal/zziv;->zzAs:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/internal/zznb;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    new-instance v0, Lcom/google/android/gms/internal/zzmz;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/google/android/gms/internal/zzmz;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzmz;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsL:Lcom/google/android/gms/internal/zzmz;

    new-instance v0, Lcom/google/android/gms/internal/zzmz;

    invoke-direct {v0, v2, v3, v1, v1}, Lcom/google/android/gms/internal/zzmz;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzmz;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsM:Lcom/google/android/gms/internal/zzmz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zznb;->zzdS()Lcom/google/android/gms/internal/zzmz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsL:Lcom/google/android/gms/internal/zzmz;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/zzir;->zzzQ:Z

    if-eqz v0, :cond_3

    const-string v0, "This request is sent from a test device."

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzji;->zzds()Lcom/google/android/gms/internal/zzaiy;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaiy;->zzV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Use AdRequest.Builder.addTestDevice(\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\") to get test ads on this device."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsO:Lcom/google/android/gms/ads/internal/zzbi;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzbi;->zzf(Lcom/google/android/gms/internal/zzir;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zznb;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsN:Z

    iget-boolean p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsN:Z

    return p1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsQ:Lcom/google/android/gms/internal/zzir;

    if-eqz v0, :cond_5

    const-string v0, "Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes."

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string v0, "Loading already in progress, saving this object for future refreshes."

    goto :goto_3

    :goto_4
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsQ:Lcom/google/android/gms/internal/zzir;

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract zza(Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zznb;)Z
.end method

.method public final zzak()Lcom/google/android/gms/ads/internal/zzv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsS:Lcom/google/android/gms/ads/internal/zzv;

    return-object v0
.end method

.method public final zzal()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzam()Lcom/google/android/gms/internal/zziv;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "getAdSize must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzlv;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlv;-><init>(Lcom/google/android/gms/internal/zziv;)V

    return-object v0
.end method

.method public final zzan()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzaq()V

    return-void
.end method

.method public final zzao()V
    .locals 3

    const-string v0, "recordManualImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbo;->zzcz(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzTq:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzaff;->zzXV:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvT:Lcom/google/android/gms/internal/zzaje;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaff;->zzTq:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzaff;->zzXV:Z

    :cond_1
    return-void
.end method

.method protected zzap()V
    .locals 2

    const-string v0, "Ad closing."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjo;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzadd;->onRewardedVideoAdClosed()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onRewardedVideoAdClosed()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected final zzaq()V
    .locals 2

    const-string v0, "Ad leaving application."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjo;->onAdLeftApplication()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzadd;->onRewardedVideoAdLeftApplication()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not call  RewardedVideoAdListener.onRewardedVideoAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected final zzar()V
    .locals 2

    const-string v0, "Ad opening."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjo;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzadd;->onRewardedVideoAdOpened()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onRewardedVideoAdOpened()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected zzas()V
    .locals 2

    const-string v0, "Ad finished loading."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsN:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjo;->onAdLoaded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzadd;->onRewardedVideoAdLoaded()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onRewardedVideoAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final zzat()V
    .locals 2

    const-string v0, "Ad impression."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjo;->onAdImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdImpression()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzau()V
    .locals 2

    const-string v0, "Ad clicked."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjo;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdClicked()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected final zzav()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzadd;->onRewardedVideoStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call RewardedVideoAdListener.onVideoStarted()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzaw()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzaff;->zzTK:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/zzaff;->zzXW:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbH()Lcom/google/android/gms/internal/zzahw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzahw;->zzic()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Sending troubleshooting signals to the server."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbH()Lcom/google/android/gms/internal/zzahw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvT:Lcom/google/android/gms/internal/zzaje;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaje;->zzaP:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/zzaff;->zzTK:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/zzbt;->zzvR:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/zzahw;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzaff;->zzXW:Z

    :cond_1
    return-void
.end method

.method public final zzax()Lcom/google/android/gms/internal/zzke;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwd:Lcom/google/android/gms/internal/zzke;

    return-object v0
.end method

.method public final zzay()Lcom/google/android/gms/internal/zzjo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    return-object v0
.end method

.method protected final zzb(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaez;->zzb(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final zzb(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzahe;->zzhW()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/ads/internal/zzbu;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaff;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsM:Lcom/google/android/gms/internal/zzmz;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "awr"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvW:Lcom/google/android/gms/internal/zzahp;

    iget v0, p1, Lcom/google/android/gms/internal/zzaff;->errorCode:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/zzaff;->errorCode:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/zzbt;->zzbZ()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzafk;->zzb(Ljava/util/HashSet;)V

    :cond_0
    iget v0, p1, Lcom/google/android/gms/internal/zzaff;->errorCode:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    iput-boolean v5, p0, Lcom/google/android/gms/ads/internal/zza;->zzsN:Z

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzaff;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Ad refresh scheduled."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaC(Ljava/lang/String;)V

    :cond_2
    iget v0, p1, Lcom/google/android/gms/internal/zzaff;->errorCode:I

    if-eq v0, v1, :cond_3

    iget p1, p1, Lcom/google/android/gms/internal/zzaff;->errorCode:I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zza;->zze(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwr:Lcom/google/android/gms/internal/zzafn;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    new-instance v1, Lcom/google/android/gms/internal/zzafn;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvR:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/zzafn;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwr:Lcom/google/android/gms/internal/zzafn;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsR:Lcom/google/android/gms/internal/zzfh;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfh;->zzg(Lcom/google/android/gms/internal/zzaff;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/ads/internal/zza;->zza(Lcom/google/android/gms/internal/zzaff;Lcom/google/android/gms/internal/zzaff;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iput-object p1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafh;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafh;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzaff;->zzXR:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzafh;->zzh(J)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafh;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-wide v3, v3, Lcom/google/android/gms/internal/zzaff;->zzXS:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/zzafh;->zzi(J)V

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafh;

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzaff;->zzTo:Z

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzafh;->zzw(Z)V

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwa:Lcom/google/android/gms/internal/zzafh;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvX:Lcom/google/android/gms/internal/zziv;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zziv;->zzAt:Z

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzafh;->zzv(Z)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    const-string v1, "is_mraid"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaff;->zzcn()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "1"

    goto :goto_0

    :cond_7
    const-string v3, "0"

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zznb;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    const-string v1, "is_mediation"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzaff;->zzTo:Z

    if-eqz v3, :cond_8

    const-string v3, "1"

    goto :goto_1

    :cond_8
    const-string v3, "0"

    :goto_1
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zznb;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    const-string v1, "is_delay_pl"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/zzbt;->zzvY:Lcom/google/android/gms/internal/zzaff;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaff;->zzPg:Lcom/google/android/gms/internal/zzaka;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzaka;->zziw()Lcom/google/android/gms/internal/zzakb;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzakb;->zziS()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "1"

    goto :goto_2

    :cond_9
    const-string v3, "0"

    :goto_2
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zznb;->zzh(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsL:Lcom/google/android/gms/internal/zzmz;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ttc"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zznb;->zza(Lcom/google/android/gms/internal/zzmz;[Ljava/lang/String;)Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafk;->zzhr()Lcom/google/android/gms/internal/zzmr;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbD()Lcom/google/android/gms/internal/zzafk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzafk;->zzhr()Lcom/google/android/gms/internal/zzmr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsK:Lcom/google/android/gms/internal/zznb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzmr;->zza(Lcom/google/android/gms/internal/zznb;)Z

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzaw()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzbt;->zzcc()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zza;->zzas()V

    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/internal/zzaff;->zzMd:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzbt;->zzqD:Landroid/content/Context;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaff;->zzMd:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/content/Context;Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method protected zzb(Lcom/google/android/gms/internal/zzir;)Z
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/zzbt;->zzvU:Lcom/google/android/gms/ads/internal/zzbu;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzbu;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbz()Lcom/google/android/gms/internal/zzagz;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzagz;->zza(Landroid/view/View;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected zze(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsN:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwc:Lcom/google/android/gms/internal/zzjo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzjo;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zza;->zzsP:Lcom/google/android/gms/ads/internal/zzbt;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbt;->zzwp:Lcom/google/android/gms/internal/zzadd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzadd;->onRewardedVideoAdFailedToLoad(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "Could not call RewardedVideoAdListener.onRewardedVideoAdFailedToLoad()."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
