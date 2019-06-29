.class public final Lcom/google/android/gms/games/snapshot/zze;
.super Lcom/google/android/gms/games/internal/zzc;

# interfaces
.implements Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/snapshot/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzafa:Ljava/lang/String;

.field private final zzbeA:Ljava/lang/Long;

.field private final zzbeC:Landroid/net/Uri;

.field private final zzbeD:Ljava/lang/Long;

.field private zzbeE:Lcom/google/android/gms/common/data/BitmapTeleporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/snapshot/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/zze;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/zze;->zzafa:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeD:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeE:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iput-object p4, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeC:Landroid/net/Uri;

    iput-object p5, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeA:Ljava/lang/Long;

    iget-object p1, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeE:Lcom/google/android/gms/common/data/BitmapTeleporter;

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeC:Landroid/net/Uri;

    if-nez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    const-string p1, "Cannot set both a URI and an image"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeC:Landroid/net/Uri;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeE:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-nez p1, :cond_2

    const/4 p2, 0x1

    :cond_2
    const-string p1, "Cannot set both a URI and an image"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final getCoverImage()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeE:Lcom/google/android/gms/common/data/BitmapTeleporter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeE:Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/BitmapTeleporter;->zzqO()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/zze;->zzafa:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayedTimeMillis()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeD:Ljava/lang/Long;

    return-object v0
.end method

.method public final getProgressValue()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeA:Ljava/lang/Long;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/zze;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/zze;->getPlayedTimeMillis()Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    iget-object v1, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeC:Landroid/net/Uri;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeE:Lcom/google/android/gms/common/data/BitmapTeleporter;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/snapshot/zze;->getProgressValue()Ljava/lang/Long;

    move-result-object p2

    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzvv()Lcom/google/android/gms/common/data/BitmapTeleporter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/zze;->zzbeE:Lcom/google/android/gms/common/data/BitmapTeleporter;

    return-object v0
.end method
