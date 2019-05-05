.class final Lcom/google/android/gms/internal/iw;
.super Lcom/google/android/gms/internal/kj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kj<",
        "Lcom/google/firebase/auth/ProviderQueryResult;",
        "Lcom/google/android/gms/internal/ll;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzalO:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kj;-><init>(I)V

    const-string v0, "email cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/iw;->zzalO:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/iw;->zzbWM:Lcom/google/android/gms/internal/kc;

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->zzalO:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/iw;->zzbWK:Lcom/google/android/gms/internal/kl;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kc;->zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ka;)V

    return-void
.end method

.method public final zzEL()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/lt;

    iget-object v1, p0, Lcom/google/android/gms/internal/iw;->zzbWV:Lcom/google/android/gms/internal/kt;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/lt;-><init>(Lcom/google/android/gms/internal/kt;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iw;->zzV(Ljava/lang/Object;)V

    return-void
.end method
