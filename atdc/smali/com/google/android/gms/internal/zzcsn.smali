.class public final Lcom/google/android/gms/internal/zzcsn;
.super Lcom/google/android/gms/common/internal/zzz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzz<",
        "Lcom/google/android/gms/internal/zzcry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x2d

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzz;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcsn;->mContext:Landroid/content/Context;

    return-void
.end method

.method private final zzeH(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzcsn;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcsn;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcrw;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcrw;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p5, :cond_0

    const-string p5, "com.google.android.safetynet.API_KEY"

    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/zzcsn;->zzeH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_0
    move-object v2, p5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p5

    new-array v3, p5, [I

    const/4 p5, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p5, v0, :cond_1

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, p5

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcsn;->zzrf()Landroid/os/IInterface;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/zzcry;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcry;->zza(Lcom/google/android/gms/internal/zzcrw;Ljava/lang/String;[IILjava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzcrw;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "com.google.android.safetynet.ATTEST_API_KEY"

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzcsn;->zzeH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcsn;->zzrf()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzcry;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzcry;->zza(Lcom/google/android/gms/internal/zzcrw;[BLjava/lang/String;)V

    return-void
.end method

.method protected final synthetic zzd(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcry;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/zzcry;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcrz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcrz;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method protected final zzdb()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.safetynet.service.START"

    return-object v0
.end method

.method protected final zzdc()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.safetynet.internal.ISafetyNetService"

    return-object v0
.end method
