.class abstract Lcom/google/firebase/appindexing/internal/zzk;
.super Lcom/google/android/gms/internal/zzbeq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbeq<",
        "Lcom/google/firebase/appindexing/internal/zzd;",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field private zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbeq;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/appindexing/internal/zzg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/appindexing/internal/zzk;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/appindexing/internal/zzk;)Lcom/google/android/gms/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/appindexing/internal/zzk;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-object p0
.end method


# virtual methods
.method protected final zzEC()Lcom/google/android/gms/internal/zzbdn;
    .locals 1

    new-instance v0, Lcom/google/firebase/appindexing/internal/zzl;

    invoke-direct {v0, p0}, Lcom/google/firebase/appindexing/internal/zzl;-><init>(Lcom/google/firebase/appindexing/internal/zzk;)V

    return-object v0
.end method

.method protected final synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/firebase/appindexing/internal/zzd;

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/zzk;->zzalE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/google/firebase/appindexing/internal/zzd;->zzrf()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/appindexing/internal/zzu;

    invoke-virtual {p0, p1}, Lcom/google/firebase/appindexing/internal/zzk;->zza(Lcom/google/firebase/appindexing/internal/zzu;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/firebase/appindexing/internal/zzu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
