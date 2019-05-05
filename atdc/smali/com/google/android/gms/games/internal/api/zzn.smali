.class final Lcom/google/android/gms/games/internal/api/zzn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;


# instance fields
.field private synthetic zzakB:Lcom/google/android/gms/common/api/Status;

.field private synthetic zzbaR:Lcom/google/android/gms/games/internal/api/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/zzm;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/zzn;->zzbaR:Lcom/google/android/gms/games/internal/api/zzm;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/zzn;->zzakB:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAchievementId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzn;->zzbaR:Lcom/google/android/gms/games/internal/api/zzm;

    invoke-static {v0}, Lcom/google/android/gms/games/internal/api/zzm;->zza(Lcom/google/android/gms/games/internal/api/zzm;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/zzn;->zzakB:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
