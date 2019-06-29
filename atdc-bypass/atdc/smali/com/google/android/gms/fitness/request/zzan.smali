.class public final Lcom/google/android/gms/fitness/request/zzan;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;

.field private zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzaUe:Lcom/google/android/gms/fitness/data/DataType;

.field private final zzaVj:J

.field private final zzaVk:I

.field private zzaWV:Lcom/google/android/gms/fitness/data/zzt;

.field private final zzaWW:J

.field private final zzaWX:J

.field private final zzaWY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWZ:J

.field private final zzaWo:Lcom/google/android/gms/internal/zzbxg;

.field private final zzaXa:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcbz;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaku:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzao;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Landroid/os/IBinder;IIJJLandroid/app/PendingIntent;JILjava/util/List;JLandroid/os/IBinder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Landroid/os/IBinder;",
            "IIJJ",
            "Landroid/app/PendingIntent;",
            "JI",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;J",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaku:I

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    if-nez p4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/google/android/gms/fitness/data/zzu;->zzN(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzt;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    const-wide/16 v1, 0x0

    cmp-long v5, p7, v1

    if-nez v5, :cond_1

    move v5, p5

    int-to-long v3, v5

    goto :goto_1

    :cond_1
    move-wide v3, p7

    :goto_1
    iput-wide v3, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    move-wide/from16 v3, p12

    iput-wide v3, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    cmp-long v5, p9, v1

    if-nez v5, :cond_2

    move v1, p6

    int-to-long v1, v1

    goto :goto_2

    :cond_2
    move-wide v1, p9

    :goto_2
    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->mPendingIntent:Landroid/app/PendingIntent;

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaXa:Ljava/util/List;

    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWZ:J

    invoke-static/range {p18 .. p18}, Lcom/google/android/gms/internal/zzbxh;->zzW(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbxg;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;JJJILjava/util/List;Ljava/util/List;JLcom/google/android/gms/internal/zzbxg;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/fitness/data/DataSource;",
            "Lcom/google/android/gms/fitness/data/DataType;",
            "Lcom/google/android/gms/fitness/data/zzt;",
            "Landroid/app/PendingIntent;",
            "JJJI",
            "Ljava/util/List<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzcbz;",
            ">;J",
            "Lcom/google/android/gms/internal/zzbxg;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaku:I

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->mPendingIntent:Landroid/app/PendingIntent;

    move-wide v1, p5

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    move-wide v1, p7

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaXa:Ljava/util/List;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWZ:J

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/fitness/request/zzan;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/request/SensorRequest;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbxg;)V
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataSource()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/request/SensorRequest;->getSamplingRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/request/SensorRequest;->getFastestRate(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/request/SensorRequest;->getMaxDeliveryLatency(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->getAccuracyMode()I

    move-result v11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/fitness/request/SensorRequest;->zztW()J

    move-result-wide v14

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v16, p4

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/fitness/request/zzan;-><init>(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;JJJILjava/util/List;Ljava/util/List;JLcom/google/android/gms/internal/zzbxg;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/google/android/gms/fitness/request/zzan;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/request/zzan;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    iget-object v3, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    iget-wide v5, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    iget v3, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "SensorRegistrationRequest{type %s source %s interval %s fastest %s latency %s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUd:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaUe:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWV:Lcom/google/android/gms/fitness/data/zzt;

    invoke-interface {v1}, Lcom/google/android/gms/fitness/data/zzt;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v4, 0x3

    invoke-static {p1, v4, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVj:J

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x7

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWW:J

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x3e8

    iget v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaku:I

    invoke-static {p1, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-object v4, p0, Lcom/google/android/gms/fitness/request/zzan;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v4, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0x9

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWX:J

    invoke-static {p1, p2, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/16 p2, 0xa

    iget v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaVk:I

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;II)V

    const/16 p2, 0xb

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWY:Ljava/util/List;

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzc(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 p2, 0xc

    iget-wide v4, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWZ:J

    invoke-static {p1, p2, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;IJ)V

    const/16 p2, 0xd

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzan;->zzaWo:Lcom/google/android/gms/internal/zzbxg;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbxg;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-static {p1, p2, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
