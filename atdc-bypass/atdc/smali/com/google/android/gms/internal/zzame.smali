.class final Lcom/google/android/gms/internal/zzame;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzafD:Lcom/google/android/gms/internal/zzaly;

.field private synthetic zzafI:Lcom/google/android/gms/internal/zzanq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaly;Lcom/google/android/gms/internal/zzanq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzame;->zzafD:Lcom/google/android/gms/internal/zzaly;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzame;->zzafI:Lcom/google/android/gms/internal/zzanq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzame;->zzafD:Lcom/google/android/gms/internal/zzaly;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaly;->zza(Lcom/google/android/gms/internal/zzaly;)Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzame;->zzafI:Lcom/google/android/gms/internal/zzanq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamv;->zzb(Lcom/google/android/gms/internal/zzanq;)V

    return-void
.end method
