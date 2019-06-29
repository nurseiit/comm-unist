.class public Lcom/google/android/gms/drive/query/internal/FilterHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaMD:Lcom/google/android/gms/drive/query/Filter;

.field private zzaRh:Lcom/google/android/gms/drive/query/internal/zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/zzb<",
            "*>;"
        }
    .end annotation
.end field

.field private zzaRi:Lcom/google/android/gms/drive/query/internal/zzd;

.field private zzaRj:Lcom/google/android/gms/drive/query/internal/zzr;

.field private zzaRk:Lcom/google/android/gms/drive/query/internal/zzv;

.field private zzaRl:Lcom/google/android/gms/drive/query/internal/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/drive/query/internal/zzp<",
            "*>;"
        }
    .end annotation
.end field

.field private zzaRm:Lcom/google/android/gms/drive/query/internal/zzt;

.field private zzaRn:Lcom/google/android/gms/drive/query/internal/zzn;

.field private zzaRo:Lcom/google/android/gms/drive/query/internal/zzl;

.field private zzaRp:Lcom/google/android/gms/drive/query/internal/zzz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/Filter;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const-string v0, "Null filter."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/zzb;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/zzb;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRh:Lcom/google/android/gms/drive/query/internal/zzb;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/zzd;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/zzd;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRi:Lcom/google/android/gms/drive/query/internal/zzd;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/zzr;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/zzr;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRj:Lcom/google/android/gms/drive/query/internal/zzr;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/zzv;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/zzv;

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRk:Lcom/google/android/gms/drive/query/internal/zzv;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/zzp;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/zzp;

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRl:Lcom/google/android/gms/drive/query/internal/zzp;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/zzt;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/zzt;

    goto :goto_5

    :cond_5
    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRm:Lcom/google/android/gms/drive/query/internal/zzt;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/zzn;

    if-eqz v0, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/zzn;

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRn:Lcom/google/android/gms/drive/query/internal/zzn;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/zzl;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/drive/query/internal/zzl;

    goto :goto_7

    :cond_7
    move-object v0, v1

    :goto_7
    iput-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRo:Lcom/google/android/gms/drive/query/internal/zzl;

    instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/zzz;

    if-eqz v0, :cond_8

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/drive/query/internal/zzz;

    :cond_8
    iput-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRp:Lcom/google/android/gms/drive/query/internal/zzz;

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRh:Lcom/google/android/gms/drive/query/internal/zzb;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRi:Lcom/google/android/gms/drive/query/internal/zzd;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRj:Lcom/google/android/gms/drive/query/internal/zzr;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRk:Lcom/google/android/gms/drive/query/internal/zzv;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRl:Lcom/google/android/gms/drive/query/internal/zzp;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRm:Lcom/google/android/gms/drive/query/internal/zzt;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRn:Lcom/google/android/gms/drive/query/internal/zzn;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRo:Lcom/google/android/gms/drive/query/internal/zzl;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRp:Lcom/google/android/gms/drive/query/internal/zzz;

    if-nez v0, :cond_9

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid filter type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaMD:Lcom/google/android/gms/drive/query/Filter;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/drive/query/internal/zzb;Lcom/google/android/gms/drive/query/internal/zzd;Lcom/google/android/gms/drive/query/internal/zzr;Lcom/google/android/gms/drive/query/internal/zzv;Lcom/google/android/gms/drive/query/internal/zzp;Lcom/google/android/gms/drive/query/internal/zzt;Lcom/google/android/gms/drive/query/internal/zzn;Lcom/google/android/gms/drive/query/internal/zzl;Lcom/google/android/gms/drive/query/internal/zzz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/zzb<",
            "*>;",
            "Lcom/google/android/gms/drive/query/internal/zzd;",
            "Lcom/google/android/gms/drive/query/internal/zzr;",
            "Lcom/google/android/gms/drive/query/internal/zzv;",
            "Lcom/google/android/gms/drive/query/internal/zzp<",
            "*>;",
            "Lcom/google/android/gms/drive/query/internal/zzt;",
            "Lcom/google/android/gms/drive/query/internal/zzn<",
            "*>;",
            "Lcom/google/android/gms/drive/query/internal/zzl;",
            "Lcom/google/android/gms/drive/query/internal/zzz;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRh:Lcom/google/android/gms/drive/query/internal/zzb;

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRi:Lcom/google/android/gms/drive/query/internal/zzd;

    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRj:Lcom/google/android/gms/drive/query/internal/zzr;

    iput-object p4, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRk:Lcom/google/android/gms/drive/query/internal/zzv;

    iput-object p5, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRl:Lcom/google/android/gms/drive/query/internal/zzp;

    iput-object p6, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRm:Lcom/google/android/gms/drive/query/internal/zzt;

    iput-object p7, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRn:Lcom/google/android/gms/drive/query/internal/zzn;

    iput-object p8, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRo:Lcom/google/android/gms/drive/query/internal/zzl;

    iput-object p9, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRp:Lcom/google/android/gms/drive/query/internal/zzz;

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRh:Lcom/google/android/gms/drive/query/internal/zzb;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRh:Lcom/google/android/gms/drive/query/internal/zzb;

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaMD:Lcom/google/android/gms/drive/query/Filter;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRi:Lcom/google/android/gms/drive/query/internal/zzd;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRi:Lcom/google/android/gms/drive/query/internal/zzd;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRj:Lcom/google/android/gms/drive/query/internal/zzr;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRj:Lcom/google/android/gms/drive/query/internal/zzr;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRk:Lcom/google/android/gms/drive/query/internal/zzv;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRk:Lcom/google/android/gms/drive/query/internal/zzv;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRl:Lcom/google/android/gms/drive/query/internal/zzp;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRl:Lcom/google/android/gms/drive/query/internal/zzp;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRm:Lcom/google/android/gms/drive/query/internal/zzt;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRm:Lcom/google/android/gms/drive/query/internal/zzt;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRn:Lcom/google/android/gms/drive/query/internal/zzn;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRn:Lcom/google/android/gms/drive/query/internal/zzn;

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRo:Lcom/google/android/gms/drive/query/internal/zzl;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRo:Lcom/google/android/gms/drive/query/internal/zzl;

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRp:Lcom/google/android/gms/drive/query/internal/zzz;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRp:Lcom/google/android/gms/drive/query/internal/zzz;

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one filter must be set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final getFilter()Lcom/google/android/gms/drive/query/Filter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaMD:Lcom/google/android/gms/drive/query/Filter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "FilterHolder[%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaMD:Lcom/google/android/gms/drive/query/Filter;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRh:Lcom/google/android/gms/drive/query/internal/zzb;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRi:Lcom/google/android/gms/drive/query/internal/zzd;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRj:Lcom/google/android/gms/drive/query/internal/zzr;

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRk:Lcom/google/android/gms/drive/query/internal/zzv;

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRl:Lcom/google/android/gms/drive/query/internal/zzp;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRm:Lcom/google/android/gms/drive/query/internal/zzt;

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRn:Lcom/google/android/gms/drive/query/internal/zzn;

    const/4 v3, 0x7

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRo:Lcom/google/android/gms/drive/query/internal/zzl;

    const/16 v3, 0x8

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/FilterHolder;->zzaRp:Lcom/google/android/gms/drive/query/internal/zzz;

    const/16 v3, 0x9

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
