.class abstract Lcom/google/android/gms/internal/kj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/kj$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SuccessT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzbMh:Z

.field protected zzbVZ:Lcom/google/firebase/FirebaseApp;

.field protected final zzbWJ:I

.field protected final zzbWK:Lcom/google/android/gms/internal/kl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/kl;"
        }
    .end annotation
.end field

.field protected zzbWL:Lcom/google/firebase/auth/FirebaseUser;

.field protected zzbWM:Lcom/google/android/gms/internal/kc;

.field protected zzbWN:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field private zzbWO:Lcom/google/android/gms/internal/lw;

.field protected zzbWP:Lcom/google/android/gms/internal/ki;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ki<",
            "TSuccessT;>;"
        }
    .end annotation
.end field

.field protected final zzbWQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private zzbWR:Landroid/app/Activity;

.field protected zzbWS:Ljava/util/concurrent/Executor;

.field protected zzbWT:Lcom/google/android/gms/internal/kx;

.field protected zzbWU:Lcom/google/android/gms/internal/kv;

.field protected zzbWV:Lcom/google/android/gms/internal/kt;

.field protected zzbWW:Lcom/google/android/gms/internal/ld;

.field protected zzbWX:Ljava/lang/String;

.field protected zzbWY:Lcom/google/firebase/auth/PhoneAuthCredential;

.field zzbWZ:Z

.field protected zzbWn:Ljava/lang/String;

.field private zzbXa:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSuccessT;"
        }
    .end annotation
.end field

.field private zzbXb:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/kl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/kl;-><init>(Lcom/google/android/gms/internal/kj;Lcom/google/android/gms/internal/kk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/kj;->zzbWK:Lcom/google/android/gms/internal/kl;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/kj;->zzbWQ:Ljava/util/List;

    iput p1, p0, Lcom/google/android/gms/internal/kj;->zzbWJ:I

    return-void
.end method

.method private final zzEQ()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/kj;->zzEL()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/kj;->zzbMh:Z

    const-string v1, "no success or failure set on method implementation"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbo;->zza(ZLjava/lang/Object;)V

    return-void
.end method

.method private final zzM(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/kj;->zzbWO:Lcom/google/android/gms/internal/lw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/kj;->zzbWO:Lcom/google/android/gms/internal/lw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/lw;->onError(Lcom/google/android/gms/common/api/Status;)V

    :cond_0
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/kj;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/kj;->zzM(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/kj;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/kj;->zzbMh:Z

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/kj;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/kj;->zzEQ()V

    return-void
.end method


# virtual methods
.method protected abstract dispatch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zzEL()V
.end method

.method public final zzL(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/kj;->zzbMh:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/kj;->zzbWZ:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/kj;->zzbXb:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/kj;->zzbWP:Lcom/google/android/gms/internal/ki;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ki;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zzU(Ljava/lang/Object;)Lcom/google/android/gms/internal/kj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lcom/google/android/gms/internal/kj<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/kj;->zzbWN:Ljava/lang/Object;

    return-object p0
.end method

.method public final zzV(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuccessT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/kj;->zzbMh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/kj;->zzbWZ:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/kj;->zzbXa:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/kj;->zzbWP:Lcom/google/android/gms/internal/ki;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ki;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/lw;)Lcom/google/android/gms/internal/kj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/lw;",
            ")",
            "Lcom/google/android/gms/internal/kj<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external failure callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/lw;

    iput-object p1, p0, Lcom/google/android/gms/internal/kj;->zzbWO:Lcom/google/android/gms/internal/lw;

    return-object p0
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/kj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            "Landroid/app/Activity;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/internal/kj<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kj;->zzbWQ:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kj;->zzbWQ:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p2, p0, Lcom/google/android/gms/internal/kj;->zzbWR:Landroid/app/Activity;

    iget-object p1, p0, Lcom/google/android/gms/internal/kj;->zzbWR:Landroid/app/Activity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/kj;->zzbWQ:Ljava/util/List;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/kj$zza;->zza(Landroid/app/Activity;Ljava/util/List;)V

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/android/gms/internal/kj;->zzbWS:Ljava/util/concurrent/Executor;

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final zzc(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/kj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/FirebaseApp;",
            ")",
            "Lcom/google/android/gms/internal/kj<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseApp cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/FirebaseApp;

    iput-object p1, p0, Lcom/google/android/gms/internal/kj;->zzbVZ:Lcom/google/firebase/FirebaseApp;

    return-object p0
.end method

.method public final zzf(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/kj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            ")",
            "Lcom/google/android/gms/internal/kj<",
            "TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseUser cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/FirebaseUser;

    iput-object p1, p0, Lcom/google/android/gms/internal/kj;->zzbWL:Lcom/google/firebase/auth/FirebaseUser;

    return-object p0
.end method
