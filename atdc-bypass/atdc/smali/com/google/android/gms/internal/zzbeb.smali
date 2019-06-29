.class public Lcom/google/android/gms/internal/zzbeb;
.super Lcom/google/android/gms/internal/zzbba;


# instance fields
.field private zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbdt;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbba;-><init>(Lcom/google/android/gms/internal/zzbdt;)V

    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbeb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbeb;->zzaEG:Lcom/google/android/gms/internal/zzbdt;

    const-string v0, "GmsAvailabilityHelper"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/zzbdt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbds;)V

    return-void
.end method

.method public static zzp(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbeb;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbeb;->zzn(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbdt;

    move-result-object p0

    const-string v0, "GmsAvailabilityHelper"

    const-class v1, Lcom/google/android/gms/internal/zzbeb;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzbdt;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbds;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbeb;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/internal/zzbeb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/internal/zzbeb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzbeb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzbeb;-><init>(Lcom/google/android/gms/internal/zzbdt;)V

    return-object v0
.end method


# virtual methods
.method public final getTask()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbeb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzbba;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbeb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Host activity was destroyed before Google Play services could be made available."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/internal/zzbeb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzb;->zzx(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zzps()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbeb;->zzaBd:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbeb;->zzaEG:Lcom/google/android/gms/internal/zzbdt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzbdt;->zzqF()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbeb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzbeb;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzbeb;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    :cond_1
    return-void
.end method
