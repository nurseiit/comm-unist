.class final Lcom/google/android/gms/internal/mu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/FirebaseApp$zza;


# instance fields
.field final synthetic zzbZv:Lcom/google/android/gms/internal/pw;

.field private synthetic zzbZw:Lcom/google/android/gms/internal/mr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mr;Lcom/google/android/gms/internal/pw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mu;->zzbZw:Lcom/google/android/gms/internal/mr;

    iput-object p2, p0, Lcom/google/android/gms/internal/mu;->zzbZv:Lcom/google/android/gms/internal/pw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/aae;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/aae;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/mu;->zzbZw:Lcom/google/android/gms/internal/mr;

    invoke-static {v0}, Lcom/google/android/gms/internal/mr;->zza(Lcom/google/android/gms/internal/mr;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/mv;-><init>(Lcom/google/android/gms/internal/mu;Lcom/google/android/gms/internal/aae;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
