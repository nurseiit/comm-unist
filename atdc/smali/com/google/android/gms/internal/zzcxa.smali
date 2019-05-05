.class public final Lcom/google/android/gms/internal/zzcxa;
.super Lcom/google/android/gms/internal/zzcvh;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbHL:Ljava/util/concurrent/ExecutorService;

.field private final zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

.field private final zzbJE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcuf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbJF:Lcom/google/android/gms/internal/zzcun;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/internal/zzcun;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcvh;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJE:Ljava/util/Map;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcxa;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJF:Lcom/google/android/gms/internal/zzcun;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcxa;->zzbHL:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcxa;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcun;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcun;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/tagmanager/zzce;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcxe$zza;->zzbx(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/internal/zzcxa;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzcn;Lcom/google/android/gms/internal/zzcun;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzcxa;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJE:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzcxa;)Lcom/google/android/gms/internal/zzcun;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJF:Lcom/google/android/gms/internal/zzcun;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzcxa;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzcxa;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final dispatch()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxa;->zzbHL:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/zzcxd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzcxd;-><init>(Lcom/google/android/gms/internal/zzcxa;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzCr()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxa;->zzbJE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final zza(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v7, Lcom/google/android/gms/internal/zzcut;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p4, p5}, Ljava/util/Date;-><init>(J)V

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcxa;->zzbHN:Lcom/google/android/gms/tagmanager/zzcn;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcut;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzcn;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcxa;->zzbHL:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/google/android/gms/internal/zzcxc;

    invoke-direct {p2, p0, v7}, Lcom/google/android/gms/internal/zzcxc;-><init>(Lcom/google/android/gms/internal/zzcxa;Lcom/google/android/gms/internal/zzcut;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvd;)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/internal/zzcvd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcxa;->zzbHL:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/google/android/gms/internal/zzcxb;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcxb;-><init>(Lcom/google/android/gms/internal/zzcxa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvd;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzcxa;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvd;)V

    return-void
.end method
