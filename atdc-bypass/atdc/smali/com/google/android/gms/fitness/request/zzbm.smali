.class public final Lcom/google/android/gms/fitness/request/zzbm;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzbm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

.field private final zzaUe:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzaWo:Lcom/google/android/gms/internal/zzbxg;

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzbn;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzbn;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzbm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {p4}, Lcom/google/android/gms/internal/zzbxh;->zzW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/internal/zzbxg;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/google/android/gms/fitness/request/zzbm;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/zzbm;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzbm;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    iget-object p1, p1, Lcom/google/android/gms/fitness/request/zzbm;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbxg;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v1, 0x3

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x3e8

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzbm;->zzaku:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
