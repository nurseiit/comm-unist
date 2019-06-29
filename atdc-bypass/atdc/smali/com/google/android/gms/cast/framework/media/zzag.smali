.class final Lcom/google/android/gms/cast/framework/media/zzag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzayt;


# instance fields
.field private synthetic zzauA:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzauA:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 1

    instance-of p1, p4, Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    check-cast p4, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzauA:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    new-instance p2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p2, v0, p4}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzc;-><init>(Lcom/google/android/gms/common/api/Status;Lorg/json/JSONObject;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzx(J)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzauA:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    iget-object p2, p0, Lcom/google/android/gms/cast/framework/media/zzag;->zzauA:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x837

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$MediaChannelResult;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$zzb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
