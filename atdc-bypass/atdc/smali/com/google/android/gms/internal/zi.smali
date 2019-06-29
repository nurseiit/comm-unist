.class public final Lcom/google/android/gms/internal/zi;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzcjS:Ljava/lang/String;

.field private zzcjT:Ljava/lang/String;

.field private zzcjU:I

.field private zzcjV:J

.field private zzcjW:Landroid/os/Bundle;

.field private zzcjX:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLandroid/os/Bundle;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zi;->zzcjV:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zi;->zzcjW:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/internal/zi;->zzcjS:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zi;->zzcjT:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zi;->zzcjU:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/zi;->zzcjV:J

    iput-object p6, p0, Lcom/google/android/gms/internal/zi;->zzcjW:Landroid/os/Bundle;

    iput-object p7, p0, Lcom/google/android/gms/internal/zi;->zzcjX:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final getClickTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zi;->zzcjV:J

    return-wide v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zi;->zzcjS:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zi;->zzcjT:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v1, p0, Lcom/google/android/gms/internal/zi;->zzcjU:I

    const/4 v3, 0x3

    invoke-static {p1, v3, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    iget-wide v3, p0, Lcom/google/android/gms/internal/zi;->zzcjV:J

    const/4 v1, 0x4

    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zi;->zzJN()Landroid/os/Bundle;

    move-result-object v1

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zi;->zzcjX:Landroid/net/Uri;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zzJK()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zi;->zzcjX:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzJL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zi;->zzcjT:Ljava/lang/String;

    return-object v0
.end method

.method public final zzJM()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zi;->zzcjU:I

    return v0
.end method

.method public final zzJN()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zi;->zzcjW:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zi;->zzcjW:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzaA(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zi;->zzcjV:J

    return-void
.end method
