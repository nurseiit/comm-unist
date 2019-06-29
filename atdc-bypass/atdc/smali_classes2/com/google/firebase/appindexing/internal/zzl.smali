.class final Lcom/google/firebase/appindexing/internal/zzl;
.super Lcom/google/android/gms/internal/zzbdo;


# instance fields
.field private synthetic zzbVN:Lcom/google/firebase/appindexing/internal/zzk;


# direct methods
.method constructor <init>(Lcom/google/firebase/appindexing/internal/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzbVN:Lcom/google/firebase/appindexing/internal/zzk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbdo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzu(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzl;->zzbVN:Lcom/google/firebase/appindexing/internal/zzk;

    invoke-static {v0}, Lcom/google/firebase/appindexing/internal/zzk;->zza(Lcom/google/firebase/appindexing/internal/zzk;)Lcom/google/android/gms/tasks/TaskCompletionSource;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
