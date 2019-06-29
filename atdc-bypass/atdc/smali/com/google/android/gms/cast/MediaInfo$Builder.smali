.class public Lcom/google/android/gms/cast/MediaInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zzaqg:Lcom/google/android/gms/cast/MediaInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Content ID cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzaqg:Lcom/google/android/gms/cast/MediaInfo;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzaqg:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v0}, Lcom/google/android/gms/cast/MediaInfo;->zza(Lcom/google/android/gms/cast/MediaInfo;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzaqg:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzaqg:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->setContentType(Ljava/lang/String;)V

    return-object p0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzaqg:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->setCustomData(Lorg/json/JSONObject;)V

    return-object p0
.end method

.method public setMediaTracks(Ljava/util/List;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;)",
            "Lcom/google/android/gms/cast/MediaInfo$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzaqg:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->zzy(Ljava/util/List;)V

    return-object p0
.end method

.method public setMetadata(Lcom/google/android/gms/cast/MediaMetadata;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzaqg:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->zza(Lcom/google/android/gms/cast/MediaMetadata;)V

    return-object p0
.end method

.method public setStreamDuration(J)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzaqg:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/cast/MediaInfo;->zzw(J)V

    return-object p0
.end method

.method public setStreamType(I)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzaqg:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->setStreamType(I)V

    return-object p0
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)Lcom/google/android/gms/cast/MediaInfo$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo$Builder;->zzaqg:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaInfo;->setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)V

    return-object p0
.end method
