.class public final Lcom/google/android/gms/internal/zzcji;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcji;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;

.field private versionCode:I

.field private zzaIF:Ljava/lang/String;

.field public final zzbpc:Ljava/lang/String;

.field private zzbuA:Ljava/lang/Float;

.field private zzbuB:Ljava/lang/Double;

.field public final zzbuy:J

.field private zzbuz:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcjj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcjj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcji;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzcji;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcji;->zzbuy:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcji;->zzbuz:Ljava/lang/Long;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcji;->zzbuA:Ljava/lang/Float;

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/Float;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/zzcji;->zzbuB:Ljava/lang/Double;

    goto :goto_0

    :cond_1
    iput-object p9, p0, Lcom/google/android/gms/internal/zzcji;->zzbuB:Ljava/lang/Double;

    :goto_0
    iput-object p7, p0, Lcom/google/android/gms/internal/zzcji;->zzaIF:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzcji;->zzbpc:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzcjk;)V
    .locals 6

    iget-object v1, p1, Lcom/google/android/gms/internal/zzcjk;->mName:Ljava/lang/String;

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzcjk;->zzbuC:J

    iget-object v4, p1, Lcom/google/android/gms/internal/zzcjk;->mValue:Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/internal/zzcjk;->mOrigin:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcji;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzcF(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzcji;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcji;->zzbuy:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcji;->zzbpc:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p4, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzbuz:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzbuA:Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzbuB:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzaIF:Ljava/lang/String;

    return-void

    :cond_0
    instance-of p2, p4, Ljava/lang/Long;

    if-eqz p2, :cond_1

    check-cast p4, Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcji;->zzbuz:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzbuA:Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzbuB:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzaIF:Ljava/lang/String;

    return-void

    :cond_1
    instance-of p2, p4, Ljava/lang/String;

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzbuz:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzbuA:Ljava/lang/Float;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzbuB:Ljava/lang/Double;

    check-cast p4, Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcji;->zzaIF:Ljava/lang/String;

    return-void

    :cond_2
    instance-of p2, p4, Ljava/lang/Double;

    if-eqz p2, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzbuz:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzbuA:Ljava/lang/Float;

    check-cast p4, Ljava/lang/Double;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcji;->zzbuB:Ljava/lang/Double;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcji;->zzaIF:Ljava/lang/String;

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "User attribute given of un-supported type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->zzbuz:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->zzbuz:Ljava/lang/Long;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->zzbuB:Ljava/lang/Double;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->zzbuB:Ljava/lang/Double;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->zzaIF:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->zzaIF:Ljava/lang/String;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/internal/zzcji;->versionCode:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcji;->zzbuy:J

    const/4 v0, 0x3

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->zzbuz:Ljava/lang/Long;

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/Float;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->zzaIF:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->zzbpc:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcji;->zzbuB:Ljava/lang/Double;

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/Double;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
