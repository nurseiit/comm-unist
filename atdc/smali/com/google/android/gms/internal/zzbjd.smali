.class public final Lcom/google/android/gms/internal/zzbjd;
.super Lcom/google/android/gms/awareness/fence/FenceState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzbjd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaLd:I

.field private zzaLe:J

.field private zzaLf:Ljava/lang/String;

.field private zzaLg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbje;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbje;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbjd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/FenceState;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLd:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLe:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLf:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLg:I

    return-void
.end method


# virtual methods
.method public final getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLd:I

    return v0
.end method

.method public final getFenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLf:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastFenceUpdateTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLe:J

    return-wide v0
.end method

.method public final getPreviousState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLg:I

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLd:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLe:J

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLf:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lcom/google/android/gms/internal/zzbjd;->zzaLg:I

    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
