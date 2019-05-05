.class final Lcom/google/android/gms/internal/zzcks;
.super Lcom/google/android/gms/internal/zzcmn;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final zzbwL:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
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
            "Lcom/google/android/gms/nearby/connection/Connections$ConnectionRequestListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcmn;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbdw;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcks;->zzbwL:Lcom/google/android/gms/internal/zzbdw;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcnq;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcks;->zzbwL:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzckt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzckt;-><init>(Lcom/google/android/gms/internal/zzcks;Lcom/google/android/gms/internal/zzcnq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzcoi;)V
    .locals 0

    return-void
.end method
