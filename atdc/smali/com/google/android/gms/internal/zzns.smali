.class public final Lcom/google/android/gms/internal/zzns;
.super Lcom/google/android/gms/internal/zzpg;

# interfaces
.implements Lcom/google/android/gms/internal/zzob;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private mLock:Ljava/lang/Object;

.field private zzHB:Ljava/lang/String;

.field private zzHC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zznp;",
            ">;"
        }
    .end annotation
.end field

.field private zzHD:Ljava/lang/String;

.field private zzHF:Ljava/lang/String;

.field private zzHJ:Lcom/google/android/gms/internal/zznn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzHK:Lcom/google/android/gms/internal/zzks;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzHL:Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzHM:Lcom/google/android/gms/internal/zzny;

.field private zzHO:Lcom/google/android/gms/internal/zzos;

.field private zzHP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzos;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zznn;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzks;Landroid/view/View;)V
    .locals 1
    .param p7    # Lcom/google/android/gms/internal/zznn;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpg;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzns;->zzHB:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzns;->zzHC:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzns;->zzHD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzns;->zzHO:Lcom/google/android/gms/internal/zzos;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzns;->zzHF:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzns;->zzHP:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzns;->zzHJ:Lcom/google/android/gms/internal/zznn;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzns;->mExtras:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzns;->zzHK:Lcom/google/android/gms/internal/zzks;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzns;->zzHL:Landroid/view/View;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzns;Lcom/google/android/gms/internal/zzny;)Lcom/google/android/gms/internal/zzny;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzns;->zzHM:Lcom/google/android/gms/internal/zzny;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzns;)Lcom/google/android/gms/internal/zzny;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzns;->zzHM:Lcom/google/android/gms/internal/zzny;

    return-object p0
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzagz;->zzZr:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zznt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zznt;-><init>(Lcom/google/android/gms/internal/zzns;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHB:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHC:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHO:Lcom/google/android/gms/internal/zzos;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHF:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHP:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHJ:Lcom/google/android/gms/internal/zznn;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHK:Lcom/google/android/gms/internal/zzks;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHL:Landroid/view/View;

    return-void
.end method

.method public final getAdvertiser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHP:Ljava/lang/String;

    return-object v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHD:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHF:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomTemplateId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHB:Ljava/lang/String;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHC:Ljava/util/List;

    return-object v0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/zzks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHK:Lcom/google/android/gms/internal/zzks;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzny;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzns;->zzHM:Lcom/google/android/gms/internal/zzny;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzns;->zzHM:Lcom/google/android/gms/internal/zzny;

    if-nez v1, :cond_0

    const-string p1, "Attempt to perform click before content ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->e(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzns;->zzHM:Lcom/google/android/gms/internal/zzny;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzny;->zzc(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzd(Landroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzns;->zzHM:Lcom/google/android/gms/internal/zzny;

    if-nez v1, :cond_0

    const-string p1, "Attempt to record impression before content ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzns;->zzHM:Lcom/google/android/gms/internal/zzny;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzny;->zzd(Landroid/os/Bundle;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zze(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzns;->zzHM:Lcom/google/android/gms/internal/zzny;

    if-nez v1, :cond_0

    const-string p1, "Attempt to perform click before app install ad initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzafr;->e(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzns;->zzHM:Lcom/google/android/gms/internal/zzny;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzny;->zze(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzei()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHM:Lcom/google/android/gms/internal/zzny;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final zzej()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public final zzek()Lcom/google/android/gms/internal/zznn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHJ:Lcom/google/android/gms/internal/zznn;

    return-object v0
.end method

.method public final zzel()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHL:Landroid/view/View;

    return-object v0
.end method

.method public final zzem()Lcom/google/android/gms/internal/zzos;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzns;->zzHO:Lcom/google/android/gms/internal/zzos;

    return-object v0
.end method
