.class final Lcom/google/android/gms/internal/zzawo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavU:J

.field private synthetic zzavV:Lcom/google/android/gms/internal/zzawn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawn;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawo;->zzavV:Lcom/google/android/gms/internal/zzawn;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzawo;->zzavU:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawo;->zzavV:Lcom/google/android/gms/internal/zzawn;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawn;->zza(Lcom/google/android/gms/internal/zzawn;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getApproximateStreamPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzawo;->zzavU:J

    add-long v4, v0, v2

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->seek(J)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method
