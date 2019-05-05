.class final Lcom/google/android/gms/internal/zzclc;
.super Lcom/google/android/gms/internal/zzcmq;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzbwU:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
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
            "Lcom/google/android/gms/nearby/connection/Connections$MessageListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcmq;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbdw;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclc;->zzbwU:Lcom/google/android/gms/internal/zzbdw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcnw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclc;->zzbwU:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzcle;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcle;-><init>(Lcom/google/android/gms/internal/zzclc;Lcom/google/android/gms/internal/zzcnw;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcoc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclc;->zzbwU:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzcld;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcld;-><init>(Lcom/google/android/gms/internal/zzclc;Lcom/google/android/gms/internal/zzcoc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcoe;)V
    .locals 0

    return-void
.end method
