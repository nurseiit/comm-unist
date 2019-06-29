.class final Lcom/google/android/gms/internal/iu;
.super Lcom/google/android/gms/internal/kj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/kj<",
        "Lcom/google/firebase/auth/AuthResult;",
        "Lcom/google/android/gms/internal/ll;",
        ">;"
    }
.end annotation


# instance fields
.field private zzakT:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private zzalO:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kj;-><init>(I)V

    const-string v0, "email cannot be null or empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/iu;->zzalO:Ljava/lang/String;

    const-string p1, "password cannot be null or empty"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/zzbo;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/iu;->zzakT:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dispatch()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->zzbWM:Lcom/google/android/gms/internal/kc;

    iget-object v1, p0, Lcom/google/android/gms/internal/iu;->zzalO:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/iu;->zzakT:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/iu;->zzbWK:Lcom/google/android/gms/internal/kl;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/kc;->zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ka;)V

    return-void
.end method

.method public final zzEL()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/iu;->zzbVZ:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/iu;->zzbWU:Lcom/google/android/gms/internal/kv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/iu;->zzbWN:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ll;

    iget-object v2, p0, Lcom/google/android/gms/internal/iu;->zzbWT:Lcom/google/android/gms/internal/kx;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ll;->zza(Lcom/google/android/gms/internal/kx;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v1, Lcom/google/android/gms/internal/lp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/lp;-><init>(Lcom/google/android/gms/internal/ls;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/iu;->zzV(Ljava/lang/Object;)V

    return-void
.end method
