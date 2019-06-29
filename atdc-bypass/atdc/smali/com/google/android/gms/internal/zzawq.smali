.class final Lcom/google/android/gms/internal/zzawq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic zzavX:Lcom/google/android/gms/internal/zzawp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzawp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzawq;->zzavX:Lcom/google/android/gms/internal/zzawp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzawq;->zzavX:Lcom/google/android/gms/internal/zzawp;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzawp;->zza(Lcom/google/android/gms/internal/zzawp;)Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->hasMediaSession()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->queueNext(Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/PendingResult;

    :cond_0
    return-void
.end method
