.class abstract Lcom/google/android/gms/games/internal/api/zzm;
.super Lcom/google/android/gms/games/Games$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$zza<",
        "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzIi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/games/Games$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/zzm;->zzIi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/games/internal/api/zzm;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/games/internal/api/zzm;->zzIi:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/api/zzn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/zzn;-><init>(Lcom/google/android/gms/games/internal/api/zzm;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
