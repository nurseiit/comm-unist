.class public final Lcom/google/android/gms/fitness/request/zzai;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaUe:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzaWR:Lcom/google/android/gms/internal/zzbwx;

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzai;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzbwy;->zzT(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbwx;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaWR:Lcom/google/android/gms/internal/zzbwx;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/internal/zzbwx;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaWR:Lcom/google/android/gms/internal/zzbwx;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaWR:Lcom/google/android/gms/internal/zzbwx;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaWR:Lcom/google/android/gms/internal/zzbwx;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbwx;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v1, 0x2

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x3e8

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzai;->zzaku:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
