.class final Lcom/google/android/gms/internal/kq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbXg:Lcom/google/android/gms/internal/kr;

.field private synthetic zzbXh:Lcom/google/android/gms/internal/kl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/kl;Lcom/google/android/gms/internal/kr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/kq;->zzbXh:Lcom/google/android/gms/internal/kl;

    iput-object p2, p0, Lcom/google/android/gms/internal/kq;->zzbXg:Lcom/google/android/gms/internal/kr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/kq;->zzbXh:Lcom/google/android/gms/internal/kl;

    iget-object v0, v0, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget-object v0, v0, Lcom/google/android/gms/internal/kj;->zzbWQ:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kq;->zzbXh:Lcom/google/android/gms/internal/kl;

    iget-object v1, v1, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget-object v1, v1, Lcom/google/android/gms/internal/kj;->zzbWQ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/kq;->zzbXg:Lcom/google/android/gms/internal/kr;

    iget-object v2, p0, Lcom/google/android/gms/internal/kq;->zzbXh:Lcom/google/android/gms/internal/kl;

    iget-object v2, v2, Lcom/google/android/gms/internal/kl;->zzbXd:Lcom/google/android/gms/internal/kj;

    iget-object v2, v2, Lcom/google/android/gms/internal/kj;->zzbWQ:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/kr;->zza(Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;[Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
