.class final Lcom/google/android/gms/internal/zzawj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavO:Lcom/google/android/gms/internal/zzawi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawj;->zzavO:Lcom/google/android/gms/internal/zzawi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawj;->zzavO:Lcom/google/android/gms/internal/zzawi;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawi;->zza(Lcom/google/android/gms/internal/zzawi;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->togglePlayback()V

    :cond_0
    return-void
.end method
