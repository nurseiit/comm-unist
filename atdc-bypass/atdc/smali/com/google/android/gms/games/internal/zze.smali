.class public final Lcom/google/android/gms/games/internal/zze;
.super Ljava/lang/Object;


# static fields
.field private static final zzbaG:Lcom/google/android/gms/common/internal/zzaj;

.field private static final zzbaH:Lcom/google/android/gms/internal/zzbez;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbez<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzaj;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzaj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/internal/zze;->zzbaG:Lcom/google/android/gms/common/internal/zzaj;

    const-string v0, "games.play_games_dogfood"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbez;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzbez;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/internal/zze;->zzbaH:Lcom/google/android/gms/internal/zzbez;

    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zze;->zzbaG:Lcom/google/android/gms/common/internal/zzaj;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzaj;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zze;->zzbaG:Lcom/google/android/gms/common/internal/zzaj;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzaj;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zze;->zzbaG:Lcom/google/android/gms/common/internal/zzaj;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzaj;->zzy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzz(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zze;->zzbaG:Lcom/google/android/gms/common/internal/zzaj;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzaj;->zzz(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
