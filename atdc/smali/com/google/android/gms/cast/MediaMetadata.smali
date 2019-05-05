.class public Lcom/google/android/gms/cast/MediaMetadata;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaMetadata$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ALBUM_ARTIST:Ljava/lang/String; = "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

.field public static final KEY_ALBUM_TITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.ALBUM_TITLE"

.field public static final KEY_ARTIST:Ljava/lang/String; = "com.google.android.gms.cast.metadata.ARTIST"

.field public static final KEY_BROADCAST_DATE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.BROADCAST_DATE"

.field public static final KEY_COMPOSER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.COMPOSER"

.field public static final KEY_CREATION_DATE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.CREATION_DATE"

.field public static final KEY_DISC_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.DISC_NUMBER"

.field public static final KEY_EPISODE_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

.field public static final KEY_HEIGHT:Ljava/lang/String; = "com.google.android.gms.cast.metadata.HEIGHT"

.field public static final KEY_LOCATION_LATITUDE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

.field public static final KEY_LOCATION_LONGITUDE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

.field public static final KEY_LOCATION_NAME:Ljava/lang/String; = "com.google.android.gms.cast.metadata.LOCATION_NAME"

.field public static final KEY_RELEASE_DATE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.RELEASE_DATE"

.field public static final KEY_SEASON_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.SEASON_NUMBER"

.field public static final KEY_SERIES_TITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.SERIES_TITLE"

.field public static final KEY_STUDIO:Ljava/lang/String; = "com.google.android.gms.cast.metadata.STUDIO"

.field public static final KEY_SUBTITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.SUBTITLE"

.field public static final KEY_TITLE:Ljava/lang/String; = "com.google.android.gms.cast.metadata.TITLE"

.field public static final KEY_TRACK_NUMBER:Ljava/lang/String; = "com.google.android.gms.cast.metadata.TRACK_NUMBER"

.field public static final KEY_WIDTH:Ljava/lang/String; = "com.google.android.gms.cast.metadata.WIDTH"

.field public static final MEDIA_TYPE_GENERIC:I = 0x0

.field public static final MEDIA_TYPE_MOVIE:I = 0x1

.field public static final MEDIA_TYPE_MUSIC_TRACK:I = 0x3

.field public static final MEDIA_TYPE_PHOTO:I = 0x4

.field public static final MEDIA_TYPE_TV_SHOW:I = 0x2

.field public static final MEDIA_TYPE_USER:I = 0x64

.field private static final zzaqh:[Ljava/lang/String;

.field private static final zzaqi:Lcom/google/android/gms/cast/MediaMetadata$zza;


# instance fields
.field private final zzHC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field

.field private zzaqj:Landroid/os/Bundle;

.field private zzaqk:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "String"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "int"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "double"

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string v1, "ISO-8601 date String"

    const/4 v5, 0x4

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqh:[Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/cast/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-direct {v0}, Lcom/google/android/gms/cast/MediaMetadata$zza;-><init>()V

    const-string v1, "com.google.android.gms.cast.metadata.CREATION_DATE"

    const-string v6, "creationDateTime"

    invoke-virtual {v0, v1, v6, v5}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    const-string v6, "releaseDate"

    invoke-virtual {v0, v1, v6, v5}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    const-string v6, "originalAirdate"

    invoke-virtual {v0, v1, v6, v5}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    const-string v5, "title"

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.SUBTITLE"

    const-string v5, "subtitle"

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.ARTIST"

    const-string v5, "artist"

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    const-string v5, "albumArtist"

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    const-string v5, "albumName"

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.COMPOSER"

    const-string v5, "composer"

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    const-string v5, "discNumber"

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    const-string v5, "trackNumber"

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    const-string v5, "season"

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    const-string v5, "episode"

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    const-string v5, "seriesTitle"

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.STUDIO"

    const-string v5, "studio"

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.WIDTH"

    const-string v5, "width"

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.HEIGHT"

    const-string v5, "height"

    invoke-virtual {v0, v1, v5, v3}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    const-string v3, "location"

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    const-string v2, "latitude"

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    const-string v1, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    const-string v2, "longitude"

    invoke-virtual {v0, v1, v2, v4}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzb(Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/cast/MediaMetadata$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqi:Lcom/google/android/gms/cast/MediaMetadata$zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(Ljava/util/List;Landroid/os/Bundle;I)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/Bundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    iput p3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqk:I

    return-void
.end method

.method private final varargs zza(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 6

    :try_start_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->zzaqi:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzca(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->zzaqi:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzbY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_1
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->zzaqi:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzbY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    :pswitch_2
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->zzaqi:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzbY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.google."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_3
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    instance-of v2, v1, Ljava/lang/Double;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    goto :goto_3

    :catch_0
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final varargs zzb(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "metadataType"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/android/gms/cast/MediaMetadata;->zzaqi:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzbZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/google/android/gms/cast/MediaMetadata;->zzaqi:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzca(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzayv;->zzco(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    :goto_1
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :pswitch_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzb(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v3, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_2

    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {p0, v5, v6}, Lcom/google/android/gms/cast/MediaMetadata;->zzb(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_2

    return v2

    :cond_2
    if-nez v3, :cond_4

    if-nez v4, :cond_3

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    return v2

    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private static zzf(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null and empty keys are not allowed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    sget-object v0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqi:Lcom/google/android/gms/cast/MediaMetadata$zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/cast/MediaMetadata$zza;->zzca(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Lcom/google/android/gms/cast/MediaMetadata;->zzaqh:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Value for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be a "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public addImage(Lcom/google/android/gms/common/images/WebImage;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearImages()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaMetadata;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/cast/MediaMetadata;->zzb(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzayv;->zzco(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDateAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getMediaType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqk:I

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hasImages()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v1, 0x11

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    mul-int/lit8 v1, v1, 0x1f

    iget-object v3, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putDate(Ljava/lang/String;Ljava/util/Calendar;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzayv;->zza(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 11

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "metadataType"

    iget v2, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqk:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzayv;->zza(Lorg/json/JSONObject;Ljava/util/List;)V

    iget v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqk:I

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    new-array v1, v10, [Ljava/lang/String;

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/cast/MediaMetadata;->zza(Lorg/json/JSONObject;[Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v4, v1, v10

    const-string v4, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v4, v1, v9

    const-string v4, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    aput-object v4, v1, v8

    const-string v4, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    aput-object v4, v1, v7

    const-string v4, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    aput-object v4, v1, v6

    const-string v4, "com.google.android.gms.cast.metadata.WIDTH"

    aput-object v4, v1, v5

    const-string v4, "com.google.android.gms.cast.metadata.HEIGHT"

    aput-object v4, v1, v3

    const-string v3, "com.google.android.gms.cast.metadata.CREATION_DATE"

    aput-object v3, v1, v2

    goto :goto_0

    :pswitch_1
    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v4, v1, v10

    const-string v4, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v4, v1, v9

    const-string v4, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    aput-object v4, v1, v8

    const-string v4, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    aput-object v4, v1, v7

    const-string v4, "com.google.android.gms.cast.metadata.COMPOSER"

    aput-object v4, v1, v6

    const-string v4, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    aput-object v4, v1, v5

    const-string v4, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    aput-object v4, v1, v3

    const-string v3, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v3, v1, v2

    goto :goto_0

    :pswitch_2
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v10

    const-string v2, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    aput-object v2, v1, v9

    const-string v2, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    aput-object v2, v1, v8

    const-string v2, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    aput-object v2, v1, v7

    const-string v2, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    aput-object v2, v1, v6

    goto :goto_0

    :pswitch_3
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v10

    const-string v2, "com.google.android.gms.cast.metadata.STUDIO"

    aput-object v2, v1, v9

    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v2, v1, v8

    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v2, v1, v7

    goto :goto_0

    :pswitch_4
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v10

    const-string v2, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v2, v1, v9

    const-string v2, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v2, v1, v8

    const-string v2, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v2, v1, v7

    goto/16 :goto_0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqj:Landroid/os/Bundle;

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaMetadata;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzl(Lorg/json/JSONObject;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaMetadata;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqk:I

    :try_start_0
    const-string v1, "metadataType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqk:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzHC:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzayv;->zza(Ljava/util/List;Lorg/json/JSONObject;)V

    iget v1, p0, Lcom/google/android/gms/cast/MediaMetadata;->zzaqk:I

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzb(Lorg/json/JSONObject;[Ljava/lang/String;)V

    return-void

    :pswitch_0
    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v4, v1, v0

    const-string v0, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v0, v1, v9

    const-string v0, "com.google.android.gms.cast.metadata.LOCATION_NAME"

    aput-object v0, v1, v8

    const-string v0, "com.google.android.gms.cast.metadata.LOCATION_LATITUDE"

    aput-object v0, v1, v7

    const-string v0, "com.google.android.gms.cast.metadata.LOCATION_LONGITUDE"

    aput-object v0, v1, v6

    const-string v0, "com.google.android.gms.cast.metadata.WIDTH"

    aput-object v0, v1, v5

    const-string v0, "com.google.android.gms.cast.metadata.HEIGHT"

    aput-object v0, v1, v3

    const-string v0, "com.google.android.gms.cast.metadata.CREATION_DATE"

    aput-object v0, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/cast/MediaMetadata;->zzb(Lorg/json/JSONObject;[Ljava/lang/String;)V

    return-void

    :pswitch_1
    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v4, v1, v0

    const-string v0, "com.google.android.gms.cast.metadata.ALBUM_TITLE"

    aput-object v0, v1, v9

    const-string v0, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v0, v1, v8

    const-string v0, "com.google.android.gms.cast.metadata.ALBUM_ARTIST"

    aput-object v0, v1, v7

    const-string v0, "com.google.android.gms.cast.metadata.COMPOSER"

    aput-object v0, v1, v6

    const-string v0, "com.google.android.gms.cast.metadata.TRACK_NUMBER"

    aput-object v0, v1, v5

    const-string v0, "com.google.android.gms.cast.metadata.DISC_NUMBER"

    aput-object v0, v1, v3

    const-string v0, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v0, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/cast/MediaMetadata;->zzb(Lorg/json/JSONObject;[Ljava/lang/String;)V

    return-void

    :pswitch_2
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v0

    const-string v0, "com.google.android.gms.cast.metadata.SERIES_TITLE"

    aput-object v0, v1, v9

    const-string v0, "com.google.android.gms.cast.metadata.SEASON_NUMBER"

    aput-object v0, v1, v8

    const-string v0, "com.google.android.gms.cast.metadata.EPISODE_NUMBER"

    aput-object v0, v1, v7

    const-string v0, "com.google.android.gms.cast.metadata.BROADCAST_DATE"

    aput-object v0, v1, v6

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/cast/MediaMetadata;->zzb(Lorg/json/JSONObject;[Ljava/lang/String;)V

    return-void

    :pswitch_3
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v0

    const-string v0, "com.google.android.gms.cast.metadata.STUDIO"

    aput-object v0, v1, v9

    const-string v0, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v0, v1, v8

    const-string v0, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v0, v1, v7

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/cast/MediaMetadata;->zzb(Lorg/json/JSONObject;[Ljava/lang/String;)V

    return-void

    :pswitch_4
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.google.android.gms.cast.metadata.TITLE"

    aput-object v2, v1, v0

    const-string v0, "com.google.android.gms.cast.metadata.ARTIST"

    aput-object v0, v1, v9

    const-string v0, "com.google.android.gms.cast.metadata.SUBTITLE"

    aput-object v0, v1, v8

    const-string v0, "com.google.android.gms.cast.metadata.RELEASE_DATE"

    aput-object v0, v1, v7

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/cast/MediaMetadata;->zzb(Lorg/json/JSONObject;[Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
