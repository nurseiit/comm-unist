.class public final Lcom/google/android/gms/internal/zzbej;
.super Lcom/google/android/gms/internal/zzctp;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field private static zzaEV:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzctk;",
            "Lcom/google/android/gms/internal/zzctl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final zzaAx:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzctk;",
            "Lcom/google/android/gms/internal/zzctl;",
            ">;"
        }
    .end annotation
.end field

.field private zzaCA:Lcom/google/android/gms/common/internal/zzq;

.field private zzaDh:Lcom/google/android/gms/internal/zzctk;

.field private final zzaEW:Z

.field private zzaEX:Lcom/google/android/gms/internal/zzbel;

.field private zzame:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzctg;->zzajS:Lcom/google/android/gms/common/api/Api$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzbej;->zzaEV:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzctp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbej;->mHandler:Landroid/os/Handler;

    sget-object p1, Lcom/google/android/gms/internal/zzbej;->zzaEV:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzaAx:Lcom/google/android/gms/common/api/Api$zza;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbej;->zzaEW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/common/internal/zzq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/zzq;",
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzctk;",
            "Lcom/google/android/gms/internal/zzctl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzctp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbej;->mHandler:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zzq;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzaCA:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzq;->zzrn()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzame:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbej;->zzaAx:Lcom/google/android/gms/common/api/Api$zza;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbej;->zzaEW:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbej;Lcom/google/android/gms/internal/zzctx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbej;->zzc(Lcom/google/android/gms/internal/zzctx;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzctx;)V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzctx;->zzpz()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzctx;->zzAx()Lcom/google/android/gms/common/internal/zzbr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbr;->zzpz()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "SignInCoordinator"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzaEX:Lcom/google/android/gms/internal/zzbel;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzbel;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzaDh:Lcom/google/android/gms/internal/zzctk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzctk;->disconnect()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaEX:Lcom/google/android/gms/internal/zzbel;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzbr;->zzrH()Lcom/google/android/gms/common/internal/zzal;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbej;->zzame:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzbel;->zzb(Lcom/google/android/gms/common/internal/zzal;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzaDh:Lcom/google/android/gms/internal/zzctk;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzctk;->zza(Lcom/google/android/gms/internal/zzctq;)V

    return-void
.end method

.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaEX:Lcom/google/android/gms/internal/zzbel;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbel;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzaDh:Lcom/google/android/gms/internal/zzctk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzctk;->disconnect()V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzbel;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaDh:Lcom/google/android/gms/internal/zzctk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaDh:Lcom/google/android/gms/internal/zzctk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzctk;->disconnect()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaEW:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzy;->zzaj(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzy;->zzmO()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzmA()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzame:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/internal/zzq;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->zzame:Ljava/util/Set;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/gms/internal/zzctl;->zzbCM:Lcom/google/android/gms/internal/zzctl;

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/common/internal/zzq;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzctl;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaCA:Lcom/google/android/gms/common/internal/zzq;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaCA:Lcom/google/android/gms/common/internal/zzq;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzq;->zzc(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbej;->zzaAx:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbej;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbej;->zzaCA:Lcom/google/android/gms/common/internal/zzq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaCA:Lcom/google/android/gms/common/internal/zzq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzq;->zzrt()Lcom/google/android/gms/internal/zzctl;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzctk;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaDh:Lcom/google/android/gms/internal/zzctk;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzaEX:Lcom/google/android/gms/internal/zzbel;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbej;->zzaDh:Lcom/google/android/gms/internal/zzctk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzctk;->connect()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzctx;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzbek;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbek;-><init>(Lcom/google/android/gms/internal/zzbej;Lcom/google/android/gms/internal/zzctx;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzqI()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaDh:Lcom/google/android/gms/internal/zzctk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaDh:Lcom/google/android/gms/internal/zzctk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzctk;->disconnect()V

    :cond_0
    return-void
.end method

.method public final zzqy()Lcom/google/android/gms/internal/zzctk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbej;->zzaDh:Lcom/google/android/gms/internal/zzctk;

    return-object v0
.end method
