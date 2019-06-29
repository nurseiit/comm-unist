.class public Lcom/google/android/gms/cast/framework/media/ImagePicker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/ImagePicker$zza;
    }
.end annotation


# static fields
.field public static final IMAGE_TYPE_EXPANDED_CONTROLLER_BACKGROUND:I = 0x4

.field public static final IMAGE_TYPE_LOCK_SCREEN_BACKGROUND:I = 0x3

.field public static final IMAGE_TYPE_MEDIA_ROUTE_CONTROLLER_DIALOG_BACKGROUND:I = 0x0

.field public static final IMAGE_TYPE_MINI_CONTROLLER_THUMBNAIL:I = 0x2

.field public static final IMAGE_TYPE_NOTIFICATION_THUMBNAIL:I = 0x1

.field public static final IMAGE_TYPE_UNKNOWN:I = -0x1


# instance fields
.field private final zzatK:Lcom/google/android/gms/cast/framework/media/zzb;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImagePicker$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/cast/framework/media/ImagePicker$zza;-><init>(Lcom/google/android/gms/cast/framework/media/ImagePicker;Lcom/google/android/gms/cast/framework/media/zzg;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/ImagePicker;->zzatK:Lcom/google/android/gms/cast/framework/media/zzb;

    return-void
.end method


# virtual methods
.method public onPickImage(Lcom/google/android/gms/cast/MediaMetadata;I)Lcom/google/android/gms/common/images/WebImage;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onPickImage(Lcom/google/android/gms/cast/MediaMetadata;Lcom/google/android/gms/cast/framework/media/ImageHints;)Lcom/google/android/gms/common/images/WebImage;
    .locals 0
    .param p2    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getType()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/cast/framework/media/ImagePicker;->onPickImage(Lcom/google/android/gms/cast/MediaMetadata;I)Lcom/google/android/gms/common/images/WebImage;

    move-result-object p1

    return-object p1
.end method

.method public final zznU()Lcom/google/android/gms/cast/framework/media/zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/ImagePicker;->zzatK:Lcom/google/android/gms/cast/framework/media/zzb;

    return-object v0
.end method
