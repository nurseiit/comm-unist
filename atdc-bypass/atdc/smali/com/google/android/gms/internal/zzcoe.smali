.class public final Lcom/google/android/gms/internal/zzcoe;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcoe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbwG:Ljava/lang/String;

.field private final zzbxt:Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcof;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcof;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcoe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcoe;->zzbwG:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcoe;->zzbxt:Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzcoe;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzcoe;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcoe;->zzbwG:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcoe;->zzbwG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcoe;->zzbxt:Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcoe;->zzbxt:Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcoe;->zzbwG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcoe;->zzbxt:Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcoe;->zzbwG:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcoe;->zzbxt:Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzzF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcoe;->zzbwG:Ljava/lang/String;

    return-object v0
.end method

.method public final zzzM()Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcoe;->zzbxt:Lcom/google/android/gms/nearby/connection/PayloadTransferUpdate;

    return-object v0
.end method
