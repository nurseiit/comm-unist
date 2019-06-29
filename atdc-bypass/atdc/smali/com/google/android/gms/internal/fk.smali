.class public final Lcom/google/android/gms/internal/fk;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/fk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzbNS:Ljava/lang/String;

.field public final zzbNX:[Lcom/google/android/gms/internal/ft;

.field public final zzbNY:Lcom/google/android/gms/internal/fe;

.field private zzbNZ:Lcom/google/android/gms/internal/fe;

.field private zzbOa:Lcom/google/android/gms/internal/fe;

.field public final zzbOb:Ljava/lang/String;

.field private zzbOc:F

.field private zzbOd:I

.field public final zzbOe:Z

.field public final zzbOf:I

.field public final zzbOg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/ft;Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/fe;Ljava/lang/String;FLjava/lang/String;IZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fk;->zzbNX:[Lcom/google/android/gms/internal/ft;

    iput-object p2, p0, Lcom/google/android/gms/internal/fk;->zzbNY:Lcom/google/android/gms/internal/fe;

    iput-object p3, p0, Lcom/google/android/gms/internal/fk;->zzbNZ:Lcom/google/android/gms/internal/fe;

    iput-object p4, p0, Lcom/google/android/gms/internal/fk;->zzbOa:Lcom/google/android/gms/internal/fe;

    iput-object p5, p0, Lcom/google/android/gms/internal/fk;->zzbOb:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/fk;->zzbOc:F

    iput-object p7, p0, Lcom/google/android/gms/internal/fk;->zzbNS:Ljava/lang/String;

    iput p8, p0, Lcom/google/android/gms/internal/fk;->zzbOd:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/fk;->zzbOe:Z

    iput p10, p0, Lcom/google/android/gms/internal/fk;->zzbOf:I

    iput p11, p0, Lcom/google/android/gms/internal/fk;->zzbOg:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fk;->zzbNX:[Lcom/google/android/gms/internal/ft;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fk;->zzbNY:Lcom/google/android/gms/internal/fe;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fk;->zzbNZ:Lcom/google/android/gms/internal/fe;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fk;->zzbOa:Lcom/google/android/gms/internal/fe;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/fk;->zzbOb:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/fk;->zzbOc:F

    const/4 v1, 0x7

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/fk;->zzbNS:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/fk;->zzbOd:I

    const/16 v1, 0x9

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/fk;->zzbOe:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    iget p2, p0, Lcom/google/android/gms/internal/fk;->zzbOf:I

    const/16 v1, 0xb

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    iget p2, p0, Lcom/google/android/gms/internal/fk;->zzbOg:I

    const/16 v1, 0xc

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
