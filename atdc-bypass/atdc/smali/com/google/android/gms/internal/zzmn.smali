.class final Lcom/google/android/gms/internal/zzmn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic zzBU:Lcom/google/android/gms/internal/zzme;

.field private synthetic zzBV:Lcom/google/android/gms/internal/zzmm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmm;Lcom/google/android/gms/internal/zzme;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmn;->zzBV:Lcom/google/android/gms/internal/zzmm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzmn;->zzBU:Lcom/google/android/gms/internal/zzme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmn;->zzBU:Lcom/google/android/gms/internal/zzme;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzmn;->zzBV:Lcom/google/android/gms/internal/zzmm;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzmm;->zza(Lcom/google/android/gms/internal/zzmm;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzme;->zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
