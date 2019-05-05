.class public final Lcom/google/android/gms/fitness/request/zzj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaVi:Lcom/google/android/gms/fitness/data/DataSet;

.field private final zzaWo:Lcom/google/android/gms/internal/zzbxg;

.field private final zzaWv:Z

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzk;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzk;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSet;Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaku:I

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVi:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzbxh;->zzW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    iput-boolean p4, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaWv:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/internal/zzbxg;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVi:Lcom/google/android/gms/fitness/data/DataSet;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaWv:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/zzj;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/fitness/request/zzj;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVi:Lcom/google/android/gms/fitness/data/DataSet;

    iget-object p1, p1, Lcom/google/android/gms/fitness/request/zzj;->zzaVi:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVi:Lcom/google/android/gms/fitness/data/DataSet;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbe;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    const-string v1, "dataSet"

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVi:Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbg;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzbg;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaVi:Lcom/google/android/gms/fitness/data/DataSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbxg;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v1, 0x2

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaWv:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    const/16 p2, 0x3e8

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzj;->zzaku:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
