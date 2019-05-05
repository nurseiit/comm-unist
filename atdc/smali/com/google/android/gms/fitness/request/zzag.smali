.class public final Lcom/google/android/gms/fitness/request/zzag;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaWQ:Lcom/google/android/gms/internal/zzbzk;

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzah;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzah;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/zzag;->zzaku:I

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbzl;->zzX(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbzk;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzag;->zzaWQ:Lcom/google/android/gms/internal/zzbzk;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbzk;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/request/zzag;->zzaku:I

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzag;->zzaWQ:Lcom/google/android/gms/internal/zzbzk;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzag;->zzaWQ:Lcom/google/android/gms/internal/zzbzk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbzk;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget v0, p0, Lcom/google/android/gms/fitness/request/zzag;->zzaku:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
