.class public final Lcom/google/android/gms/internal/ft;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/ft;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzbNS:Ljava/lang/String;

.field public final zzbNY:Lcom/google/android/gms/internal/fe;

.field private zzbNZ:Lcom/google/android/gms/internal/fe;

.field public final zzbOb:Ljava/lang/String;

.field private zzbOc:F

.field private zzbOi:[Lcom/google/android/gms/internal/fo;

.field private zzbOj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ft;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([Lcom/google/android/gms/internal/fo;Lcom/google/android/gms/internal/fe;Lcom/google/android/gms/internal/fe;Ljava/lang/String;FLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ft;->zzbOi:[Lcom/google/android/gms/internal/fo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ft;->zzbNY:Lcom/google/android/gms/internal/fe;

    iput-object p3, p0, Lcom/google/android/gms/internal/ft;->zzbNZ:Lcom/google/android/gms/internal/fe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ft;->zzbOb:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/ft;->zzbOc:F

    iput-object p6, p0, Lcom/google/android/gms/internal/ft;->zzbNS:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ft;->zzbOj:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ft;->zzbOi:[Lcom/google/android/gms/internal/fo;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ft;->zzbNY:Lcom/google/android/gms/internal/fe;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ft;->zzbNZ:Lcom/google/android/gms/internal/fe;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ft;->zzbOb:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget p2, p0, Lcom/google/android/gms/internal/ft;->zzbOc:F

    const/4 v1, 0x6

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IF)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ft;->zzbNS:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {p1, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ft;->zzbOj:Z

    const/16 v1, 0x8

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
