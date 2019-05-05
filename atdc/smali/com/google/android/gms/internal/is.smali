.class final Lcom/google/android/gms/internal/is;
.super Lcom/google/android/gms/internal/kj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kj<",
        "Lcom/google/firebase/auth/ActionCodeResult;",
        "Lcom/google/android/gms/internal/ll;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaZK:Ljava/lang/String;
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

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kj;-><init>(I)V

    const-string v0, "code cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/is;->zzaZK:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/is;->zzbWM:Lcom/google/android/gms/internal/kc;

    iget-object v1, p0, Lcom/google/android/gms/internal/is;->zzaZK:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/is;->zzbWK:Lcom/google/android/gms/internal/kl;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kc;->zzi(Ljava/lang/String;Lcom/google/android/gms/internal/ka;)V

    return-void
.end method

.method public final zzEL()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ln;

    iget-object v1, p0, Lcom/google/android/gms/internal/is;->zzbWW:Lcom/google/android/gms/internal/ld;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ln;-><init>(Lcom/google/android/gms/internal/ld;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/is;->zzV(Ljava/lang/Object;)V

    return-void
.end method
