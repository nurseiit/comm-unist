.class final Lcom/google/android/gms/internal/ix;
.super Lcom/google/android/gms/internal/kj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kj<",
        "Lcom/google/firebase/auth/GetTokenResult;",
        "Lcom/google/android/gms/internal/ll;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbWx:Ljava/lang/String;
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

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kj;-><init>(I)V

    const-string v0, "refresh token cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ix;->zzbWx:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ix;->zzbWM:Lcom/google/android/gms/internal/kc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ix;->zzbWx:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ix;->zzbWK:Lcom/google/android/gms/internal/kl;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kc;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ka;)V

    return-void
.end method

.method public final zzEL()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ix;->zzbWT:Lcom/google/android/gms/internal/kx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ix;->zzbWx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/kx;->zzgt(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ix;->zzbWN:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ll;

    iget-object v1, p0, Lcom/google/android/gms/internal/ix;->zzbWT:Lcom/google/android/gms/internal/kx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ix;->zzbWL:Lcom/google/firebase/auth/FirebaseUser;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ll;->zza(Lcom/google/android/gms/internal/kx;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v0, Lcom/google/firebase/auth/GetTokenResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/ix;->zzbWT:Lcom/google/android/gms/internal/kx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/kx;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/GetTokenResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ix;->zzV(Ljava/lang/Object;)V

    return-void
.end method
