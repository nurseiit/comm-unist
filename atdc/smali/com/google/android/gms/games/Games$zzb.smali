.class Lcom/google/android/gms/games/Games$zzb;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Games;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza<",
        "Lcom/google/android/gms/games/internal/GamesClientImpl;",
        "Lcom/google/android/gms/games/Games$GamesOptions;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/zzb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPriority()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 7

    check-cast p4, Lcom/google/android/gms/games/Games$GamesOptions;

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/zzb;)V

    invoke-virtual {p4}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object p4

    :cond_0
    move-object v4, p4

    new-instance p4, Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-object p4
.end method
