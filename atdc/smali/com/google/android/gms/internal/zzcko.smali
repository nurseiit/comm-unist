.class final Lcom/google/android/gms/internal/zzcko;
.super Lcom/google/android/gms/internal/zzcmt;


# instance fields
.field private final zzbwL:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbdw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/connection/ConnectionLifecycleCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcmt;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbdw;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcko;->zzbwL:Lcom/google/android/gms/internal/zzbdw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcno;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzbwL:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzckp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckp;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcno;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcnu;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzbwL:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzckq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckq;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcnu;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcnw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcko;->zzbwL:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzckr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckr;-><init>(Lcom/google/android/gms/internal/zzcko;Lcom/google/android/gms/internal/zzcnw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method
