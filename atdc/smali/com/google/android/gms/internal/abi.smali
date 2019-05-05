.class public final Lcom/google/android/gms/internal/abi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;


# instance fields
.field private zzcnI:J

.field private zzcnJ:I

.field private zzcnK:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfigSettings()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/abi;->zzcnK:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    return-object v0
.end method

.method public final getFetchTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/abi;->zzcnI:J

    return-wide v0
.end method

.method public final getLastFetchStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/abi;->zzcnJ:I

    return v0
.end method

.method public final setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/abi;->zzcnK:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    return-void
.end method

.method public final zzaK(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/abi;->zzcnI:J

    return-void
.end method

.method public final zzce(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/abi;->zzcnJ:I

    return-void
.end method
