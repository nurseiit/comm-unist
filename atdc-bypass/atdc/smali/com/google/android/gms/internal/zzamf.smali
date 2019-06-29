.class final Lcom/google/android/gms/internal/zzamf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzafD:Lcom/google/android/gms/internal/zzaly;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaly;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamf;->zzafD:Lcom/google/android/gms/internal/zzaly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamf;->zzafD:Lcom/google/android/gms/internal/zzaly;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaly;->zza(Lcom/google/android/gms/internal/zzaly;)Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamv;->zzlc()V

    const/4 v0, 0x0

    return-object v0
.end method
