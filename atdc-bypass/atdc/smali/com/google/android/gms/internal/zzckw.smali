.class final Lcom/google/android/gms/internal/zzckw;
.super Lcom/google/android/gms/internal/zzcnb;


# instance fields
.field private final zzbwL:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
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
            "Lcom/google/android/gms/nearby/connection/EndpointDiscoveryCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcnb;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbdw;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckw;->zzbwL:Lcom/google/android/gms/internal/zzbdw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcny;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckw;->zzbwL:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzckx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckx;-><init>(Lcom/google/android/gms/internal/zzckw;Lcom/google/android/gms/internal/zzcny;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcoa;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckw;->zzbwL:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzcky;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcky;-><init>(Lcom/google/android/gms/internal/zzckw;Lcom/google/android/gms/internal/zzcoa;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcok;)V
    .locals 0

    return-void
.end method
