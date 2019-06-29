.class final Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzd"
.end annotation


# instance fields
.field private final zzauB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final zzauC:J

.field private final zzauD:Ljava/lang/Runnable;

.field private zzauE:Z

.field final synthetic zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauB:Ljava/util/Set;

    iput-wide p2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauC:J

    new-instance p2, Lcom/google/android/gms/cast/framework/media/zzai;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/cast/framework/media/zzai;-><init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauD:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauB:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauC:J

    return-wide v0
.end method


# virtual methods
.method public final isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauE:Z

    return v0
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauD:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauE:Z

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauD:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauC:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final stop()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauD:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauE:Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauB:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$ProgressListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauB:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzob()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauC:J

    return-wide v0
.end method

.method public final zzoc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauB:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
