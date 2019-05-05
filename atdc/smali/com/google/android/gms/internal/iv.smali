.class final Lcom/google/android/gms/internal/iv;
.super Lcom/google/android/gms/internal/kj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kj<",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/internal/lv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kj;-><init>(I)V

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

    iget-object v0, p0, Lcom/google/android/gms/internal/iv;->zzbWM:Lcom/google/android/gms/internal/kc;

    iget-object v1, p0, Lcom/google/android/gms/internal/iv;->zzbWL:Lcom/google/firebase/auth/FirebaseUser;

    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseUser;->zzEH()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/iv;->zzbWK:Lcom/google/android/gms/internal/kl;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kc;->zzg(Ljava/lang/String;Lcom/google/android/gms/internal/ka;)V

    return-void
.end method

.method public final zzEL()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/iv;->zzbWN:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/lv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/lv;->zzEE()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/iv;->zzV(Ljava/lang/Object;)V

    return-void
.end method
