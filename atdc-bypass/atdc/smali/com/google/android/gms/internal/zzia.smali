.class public final Lcom/google/android/gms/internal/zzia;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzia;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final url:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzzu:J

.field private zzzv:Ljava/lang/String;

.field private zzzw:Ljava/lang/String;

.field private zzzx:Ljava/lang/String;

.field private zzzy:Landroid/os/Bundle;

.field private zzzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzib;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzib;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzia;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzia;->url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzia;->zzzu:J

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, ""

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzia;->zzzv:Ljava/lang/String;

    if-eqz p5, :cond_1

    goto :goto_1

    :cond_1
    const-string p5, ""

    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/internal/zzia;->zzzw:Ljava/lang/String;

    if-eqz p6, :cond_2

    goto :goto_2

    :cond_2
    const-string p6, ""

    :goto_2
    iput-object p6, p0, Lcom/google/android/gms/internal/zzia;->zzzx:Ljava/lang/String;

    if-eqz p7, :cond_3

    goto :goto_3

    :cond_3
    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :goto_3
    iput-object p7, p0, Lcom/google/android/gms/internal/zzia;->zzzy:Landroid/os/Bundle;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/zzia;->zzzz:Z

    return-void
.end method

.method public static zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/zzia;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzia;->zze(Landroid/net/Uri;)Lcom/google/android/gms/internal/zzia;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Landroid/net/Uri;)Lcom/google/android/gms/internal/zzia;
    .locals 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "gcache"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/16 v1, 0x3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected 2 path parts for namespace and id, found :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzafr;->zzaT(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "1"

    const-string v2, "read_only"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v1, "expiration"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    :goto_0
    move-wide v5, v1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    :goto_1
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbB()Lcom/google/android/gms/internal/zzahe;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/zzahe;->zzh(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "tag."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/zzia;

    move-object v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/zzia;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "Unable to parse Uri into cache offering."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/zzafr;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->url:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzia;->zzzu:J

    const/4 v0, 0x3

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzzv:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzzw:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzzx:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzia;->zzzy:Landroid/os/Bundle;

    const/4 v2, 0x7

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzia;->zzzz:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
