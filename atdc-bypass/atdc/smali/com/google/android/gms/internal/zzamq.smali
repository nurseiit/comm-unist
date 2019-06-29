.class final Lcom/google/android/gms/internal/zzamq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzagn:Lcom/google/android/gms/internal/zzany;

.field private synthetic zzago:Lcom/google/android/gms/internal/zzamp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzamp;Lcom/google/android/gms/internal/zzany;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamq;->zzago:Lcom/google/android/gms/internal/zzamp;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamq;->zzagn:Lcom/google/android/gms/internal/zzany;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->zzago:Lcom/google/android/gms/internal/zzamp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzamp;->zzagk:Lcom/google/android/gms/internal/zzamn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzamn;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->zzago:Lcom/google/android/gms/internal/zzamp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzamp;->zzagk:Lcom/google/android/gms/internal/zzamn;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamn;->zzbp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamq;->zzago:Lcom/google/android/gms/internal/zzamp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzamp;->zzagk:Lcom/google/android/gms/internal/zzamn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamq;->zzagn:Lcom/google/android/gms/internal/zzany;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzamn;->zza(Lcom/google/android/gms/internal/zzamn;Lcom/google/android/gms/internal/zzany;)V

    :cond_0
    return-void
.end method
