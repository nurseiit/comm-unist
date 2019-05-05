.class public final Lcom/google/android/gms/internal/zzln;
.super Lcom/google/android/gms/internal/zzka;


# instance fields
.field private zztK:Lcom/google/android/gms/internal/zzjo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzka;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzln;)Lcom/google/android/gms/internal/zzjo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzln;->zztK:Lcom/google/android/gms/internal/zzjo;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/zzks;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isLoading()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isReady()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final pause()V
    .locals 0

    return-void
.end method

.method public final resume()V
    .locals 0

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 0

    return-void
.end method

.method public final setManualImpressionsEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final showInterstitial()V
    .locals 0

    return-void
.end method

.method public final stopLoading()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzadd;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zziv;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjl;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzjo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzln;->zztK:Lcom/google/android/gms/internal/zzjo;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzke;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzkk;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzky;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzlx;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zznh;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxg;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzxo;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzir;)Z
    .locals 1

    const-string p1, "This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzajc;->e(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzaiy;->zzaaH:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzlo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlo;-><init>(Lcom/google/android/gms/internal/zzln;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final zzaI()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzal()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzam()Lcom/google/android/gms/internal/zziv;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzao()V
    .locals 0

    return-void
.end method

.method public final zzax()Lcom/google/android/gms/internal/zzke;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzay()Lcom/google/android/gms/internal/zzjo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
