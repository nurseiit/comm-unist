.class public abstract Lcom/google/android/gms/internal/qi;
.super Ljava/lang/Object;


# instance fields
.field private zzccX:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzccY:Lcom/google/android/gms/internal/qj;

.field private zzccZ:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/qi;->zzccX:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/qi;->zzccZ:Z

    return-void
.end method


# virtual methods
.method public abstract zzGH()Lcom/google/android/gms/internal/vt;
.end method

.method public final zzGV()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/qi;->zzccX:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qi;->zzccY:Lcom/google/android/gms/internal/qj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/qi;->zzccY:Lcom/google/android/gms/internal/qj;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/qj;->zzd(Lcom/google/android/gms/internal/qi;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/qi;->zzccY:Lcom/google/android/gms/internal/qj;

    :cond_0
    return-void
.end method

.method public final zzGW()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/qi;->zzccX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/qi;
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vi;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vj;
.end method

.method public final zza(Lcom/google/android/gms/internal/qj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/qi;->zzccY:Lcom/google/android/gms/internal/qj;

    return-void
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vj;)V
.end method

.method public abstract zza(Lcom/google/firebase/database/DatabaseError;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/vl;)Z
.end method

.method public final zzaE(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/qi;->zzccZ:Z

    return-void
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/qi;)Z
.end method
