.class Lcom/google/android/gms/internal/kj$zza;
.super Lcom/google/android/gms/internal/zzbds;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/kj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private zzbXc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbdt;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdt;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbds;-><init>(Lcom/google/android/gms/internal/zzbdt;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/kj$zza;->zzaEG:Lcom/google/android/gms/internal/zzbdt;

    const-string v0, "PhoneAuthActivityStopCallback"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/zzbdt;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbds;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/kj$zza;->zzbXc:Ljava/util/List;

    return-void
.end method

.method public static zza(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneAuthProvider$OnVerificationStateChangedCallbacks;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/kj$zza;->zzn(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzbdt;

    move-result-object p0

    const-string v0, "PhoneAuthActivityStopCallback"

    const-class v1, Lcom/google/android/gms/internal/kj$zza;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/internal/zzbdt;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbds;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/kj$zza;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/kj$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/kj$zza;-><init>(Lcom/google/android/gms/internal/zzbdt;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onStop()V
    .locals 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/kj$zza;->zzbXc:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/kj$zza;->zzbXc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
