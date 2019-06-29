.class final Lcom/google/android/gms/cast/framework/media/zzai;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic zzauF:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

.field private synthetic zzauG:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzauG:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    iput-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzauF:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzauG:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzauG:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zza(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Ljava/util/Set;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzauG:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzauy:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->zzg(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/zzai;->zzauG:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;

    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;->zzb(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzd;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
