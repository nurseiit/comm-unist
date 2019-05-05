.class public abstract Lcom/google/android/gms/internal/zzaxe;
.super Lcom/google/android/gms/internal/zzaxg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaxg<",
        "Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaxd:Lcom/google/android/gms/internal/zzawy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzawy;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxe;->zzaxd:Lcom/google/android/gms/internal/zzawy;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxg;-><init>(Lcom/google/android/gms/internal/zzawy;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaxf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzaxf;-><init>(Lcom/google/android/gms/internal/zzaxe;Lcom/google/android/gms/internal/zzawy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaxe;->zzarw:Lcom/google/android/gms/internal/zzayt;

    return-void
.end method

.method public static zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/zzaxk;

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaxk;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/String;JLorg/json/JSONObject;)V

    return-object v6
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaxe;->zzj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/games/GameManagerClient$GameManagerResult;

    move-result-object p1

    return-object p1
.end method
