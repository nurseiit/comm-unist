.class final Lcom/google/android/gms/games/zzc;
.super Lcom/google/android/gms/games/Games$zzb;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/Games$zzb;-><init>(Lcom/google/android/gms/games/zzb;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzn(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    sget-object p1, Lcom/google/android/gms/games/Games;->zzaYo:Lcom/google/android/gms/common/api/Scope;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
