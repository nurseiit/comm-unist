.class public final Lcom/google/android/gms/internal/zzati;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzati;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaob:Lcom/google/android/gms/location/ActivityRecognitionResult;

.field private final zzaoc:Lcom/google/android/gms/internal/zzast;

.field private final zzaod:Lcom/google/android/gms/internal/zzasx;

.field private final zzaoe:Lcom/google/android/gms/internal/zzasz;

.field private final zzaof:Lcom/google/android/gms/common/data/DataHolder;

.field private final zzaog:Lcom/google/android/gms/internal/zzate;

.field private final zzaoh:Lcom/google/android/gms/internal/zzatg;

.field private final zzaoi:Lcom/google/android/gms/internal/zzauh;

.field private final zzaoj:Lcom/google/android/gms/internal/zzaue;

.field private final zzde:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaua;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaua;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzati;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/ActivityRecognitionResult;Lcom/google/android/gms/internal/zzast;Lcom/google/android/gms/internal/zzasx;Landroid/location/Location;Lcom/google/android/gms/internal/zzasz;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/internal/zzate;Lcom/google/android/gms/internal/zzatg;Lcom/google/android/gms/internal/zzauh;Lcom/google/android/gms/internal/zzaue;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzati;->zzaob:Lcom/google/android/gms/location/ActivityRecognitionResult;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzati;->zzaoc:Lcom/google/android/gms/internal/zzast;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzati;->zzaod:Lcom/google/android/gms/internal/zzasx;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzati;->zzde:Landroid/location/Location;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzati;->zzaoe:Lcom/google/android/gms/internal/zzasz;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzati;->zzaof:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzati;->zzaog:Lcom/google/android/gms/internal/zzate;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzati;->zzaoh:Lcom/google/android/gms/internal/zzatg;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzati;->zzaoi:Lcom/google/android/gms/internal/zzauh;

    iput-object p10, p0, Lcom/google/android/gms/internal/zzati;->zzaoj:Lcom/google/android/gms/internal/zzaue;

    return-void
.end method


# virtual methods
.method public final getActivityRecognitionResult()Lcom/google/android/gms/location/ActivityRecognitionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaob:Lcom/google/android/gms/location/ActivityRecognitionResult;

    return-object v0
.end method

.method public final getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzde:Landroid/location/Location;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzati;->zzaob:Lcom/google/android/gms/location/ActivityRecognitionResult;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzati;->zzaoc:Lcom/google/android/gms/internal/zzast;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzati;->zzaod:Lcom/google/android/gms/internal/zzasx;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzati;->zzde:Landroid/location/Location;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzati;->zzaoe:Lcom/google/android/gms/internal/zzasz;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzati;->zzaof:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzati;->zzaog:Lcom/google/android/gms/internal/zzate;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzati;->zzaoh:Lcom/google/android/gms/internal/zzatg;

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzati;->zzaoi:Lcom/google/android/gms/internal/zzauh;

    const/16 v3, 0xa

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzati;->zzaoj:Lcom/google/android/gms/internal/zzaue;

    const/16 v3, 0xb

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzmW()Lcom/google/android/gms/internal/zzast;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaoc:Lcom/google/android/gms/internal/zzast;

    return-object v0
.end method

.method public final zzmX()Lcom/google/android/gms/internal/zzasx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaod:Lcom/google/android/gms/internal/zzasx;

    return-object v0
.end method

.method public final zzmY()Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaof:Lcom/google/android/gms/common/data/DataHolder;

    return-object v0
.end method

.method public final zzmZ()Lcom/google/android/gms/internal/zzauh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaoi:Lcom/google/android/gms/internal/zzauh;

    return-object v0
.end method

.method public final zzna()Lcom/google/android/gms/internal/zzaue;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzati;->zzaoj:Lcom/google/android/gms/internal/zzaue;

    return-object v0
.end method
