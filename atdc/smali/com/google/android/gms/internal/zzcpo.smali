.class public final Lcom/google/android/gms/internal/zzcpo;
.super Lcom/google/android/gms/nearby/messages/internal/zzn;

# interfaces
.implements Lcom/google/android/gms/internal/zzcpn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/nearby/messages/internal/zzn;",
        "Lcom/google/android/gms/internal/zzcpn<",
        "Lcom/google/android/gms/nearby/messages/MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbzE:Lcom/google/android/gms/internal/zzbdw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
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
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcpo;->zzbzE:Lcom/google/android/gms/internal/zzbdw;

    return-void
.end method


# virtual methods
.method public final zzH(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/nearby/messages/internal/Update;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpo;->zzbzE:Lcom/google/android/gms/internal/zzbdw;

    new-instance v1, Lcom/google/android/gms/internal/zzcpp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzcpp;-><init>(Lcom/google/android/gms/internal/zzcpo;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbdw;->zza(Lcom/google/android/gms/internal/zzbdz;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/nearby/messages/internal/zzaf;)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/nearby/messages/internal/zzaf;)V
    .locals 0

    return-void
.end method

.method public final zzzX()Lcom/google/android/gms/internal/zzbdw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbdw<",
            "Lcom/google/android/gms/nearby/messages/MessageListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcpo;->zzbzE:Lcom/google/android/gms/internal/zzbdw;

    return-object v0
.end method
