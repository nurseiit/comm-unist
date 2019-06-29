.class public final Lcom/google/android/gms/drive/zzs;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/zzs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaMF:Ljava/lang/String;

.field private zzaMG:I

.field private zzaMH:Ljava/lang/String;

.field private zzaMI:Ljava/lang/String;

.field private zzaMJ:I

.field private zzaMK:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzt;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzt;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/zzs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/zzs;->zzaMF:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/drive/zzs;->zzaMG:I

    iput-object p3, p0, Lcom/google/android/gms/drive/zzs;->zzaMH:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/drive/zzs;->zzaMI:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/drive/zzs;->zzaMJ:I

    iput-boolean p6, p0, Lcom/google/android/gms/drive/zzs;->zzaMK:Z

    return-void
.end method

.method private static zzaL(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/drive/zzs;

    iget-object v2, p0, Lcom/google/android/gms/drive/zzs;->zzaMF:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/zzs;->zzaMF:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/drive/zzs;->zzaMG:I

    iget v3, p1, Lcom/google/android/gms/drive/zzs;->zzaMG:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/drive/zzs;->zzaMJ:I

    iget v3, p1, Lcom/google/android/gms/drive/zzs;->zzaMJ:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/drive/zzs;->zzaMK:Z

    iget-boolean p1, p1, Lcom/google/android/gms/drive/zzs;->zzaMK:Z

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/drive/zzs;->zzaMF:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/zzs;->zzaMG:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/drive/zzs;->zzaMJ:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/drive/zzs;->zzaMK:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lcom/google/android/gms/drive/zzs;->zzaMG:I

    invoke-static {v0}, Lcom/google/android/gms/drive/zzs;->zzaL(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/zzs;->zzaMF:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget v2, p0, Lcom/google/android/gms/drive/zzs;->zzaMG:I

    invoke-static {v2}, Lcom/google/android/gms/drive/zzs;->zzaL(I)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/google/android/gms/drive/zzs;->zzaMG:I

    :goto_1
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/drive/zzs;->zzaMH:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/drive/zzs;->zzaMI:Ljava/lang/String;

    invoke-static {p1, v0, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget v2, p0, Lcom/google/android/gms/drive/zzs;->zzaMJ:I

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/google/android/gms/drive/zzs;->zzaMJ:I

    :goto_3
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/android/gms/drive/zzs;->zzaMK:Z

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
