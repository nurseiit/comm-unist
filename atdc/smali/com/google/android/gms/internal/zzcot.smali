.class public final Lcom/google/android/gms/internal/zzcot;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcot;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbwE:Lcom/google/android/gms/internal/zzcni;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbwF:Lcom/google/android/gms/internal/zzcmp;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbwG:Ljava/lang/String;

.field private final zzbwH:[B
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbxH:Lcom/google/android/gms/internal/zzcmv;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final zzbxI:Lcom/google/android/gms/internal/zzcms;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcou;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcou;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcot;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V
    .locals 14
    .param p1    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move-object v7, v4

    goto :goto_0

    :cond_0
    const-string v5, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {v0, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/zzcni;

    if-eqz v6, :cond_1

    move-object v0, v5

    check-cast v0, Lcom/google/android/gms/internal/zzcni;

    move-object v7, v0

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/zzcnk;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/zzcnk;-><init>(Landroid/os/IBinder;)V

    move-object v7, v5

    :goto_0
    if-nez v1, :cond_2

    move-object v8, v4

    goto :goto_2

    :cond_2
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionEventListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/internal/zzcmp;

    if-eqz v5, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/zzcmp;

    :goto_1
    move-object v8, v0

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzcmr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcmr;-><init>(Landroid/os/IBinder;)V

    goto :goto_1

    :goto_2
    if-nez v2, :cond_4

    move-object v9, v4

    goto :goto_4

    :cond_4
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionResponseListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcmv;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/google/android/gms/internal/zzcmv;

    :goto_3
    move-object v9, v0

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzcmx;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzcmx;-><init>(Landroid/os/IBinder;)V

    goto :goto_3

    :goto_4
    if-nez v3, :cond_6

    :goto_5
    move-object v13, v4

    goto :goto_6

    :cond_6
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcms;

    if-eqz v1, :cond_7

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/zzcms;

    goto :goto_5

    :cond_7
    new-instance v4, Lcom/google/android/gms/internal/zzcmu;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/zzcmu;-><init>(Landroid/os/IBinder;)V

    goto :goto_5

    :goto_6
    move-object v6, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/zzcot;-><init>(Lcom/google/android/gms/internal/zzcni;Lcom/google/android/gms/internal/zzcmp;Lcom/google/android/gms/internal/zzcmv;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzcms;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcni;Lcom/google/android/gms/internal/zzcmp;Lcom/google/android/gms/internal/zzcmv;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzcms;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzcni;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzcmp;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/zzcmv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/zzcms;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcot;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcot;->zzbwF:Lcom/google/android/gms/internal/zzcmp;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcot;->zzbxH:Lcom/google/android/gms/internal/zzcmv;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcot;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcot;->zzbwG:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcot;->zzbwH:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcot;->zzbxI:Lcom/google/android/gms/internal/zzcms;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzcot;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzcot;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcot;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbwF:Lcom/google/android/gms/internal/zzcmp;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcot;->zzbwF:Lcom/google/android/gms/internal/zzcmp;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbxH:Lcom/google/android/gms/internal/zzcmv;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcot;->zzbxH:Lcom/google/android/gms/internal/zzcmv;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcot;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbwG:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcot;->zzbwG:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbwH:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcot;->zzbwH:[B

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbxI:Lcom/google/android/gms/internal/zzcms;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcot;->zzbxI:Lcom/google/android/gms/internal/zzcms;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzbe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbwF:Lcom/google/android/gms/internal/zzcmp;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbxH:Lcom/google/android/gms/internal/zzcmv;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->name:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbwG:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbwH:[B

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbxI:Lcom/google/android/gms/internal/zzcms;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcot;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcot;->zzbwE:Lcom/google/android/gms/internal/zzcni;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcni;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p1, v3, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcot;->zzbwF:Lcom/google/android/gms/internal/zzcmp;

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcot;->zzbwF:Lcom/google/android/gms/internal/zzcmp;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzcmp;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_1
    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcot;->zzbxH:Lcom/google/android/gms/internal/zzcmv;

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/zzcot;->zzbxH:Lcom/google/android/gms/internal/zzcmv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzcmv;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_2
    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcot;->name:Ljava/lang/String;

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcot;->zzbwG:Ljava/lang/String;

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcot;->zzbwH:[B

    invoke-static {p1, v0, v3, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;I[BZ)V

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcot;->zzbxI:Lcom/google/android/gms/internal/zzcms;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcot;->zzbxI:Lcom/google/android/gms/internal/zzcms;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcms;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_3
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/zzd;->zzI(Landroid/os/Parcel;I)V

    return-void
.end method
