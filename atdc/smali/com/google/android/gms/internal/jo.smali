.class final Lcom/google/android/gms/internal/jo;
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
.field private zzbWA:Lcom/google/firebase/auth/PhoneAuthCredential;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kj;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    iput-object p1, p0, Lcom/google/android/gms/internal/jo;->zzbWA:Lcom/google/firebase/auth/PhoneAuthCredential;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/jo;->zzbWM:Lcom/google/android/gms/internal/kc;

    iget-object v1, p0, Lcom/google/android/gms/internal/jo;->zzbWA:Lcom/google/firebase/auth/PhoneAuthCredential;

    iget-object v2, p0, Lcom/google/android/gms/internal/jo;->zzbWK:Lcom/google/android/gms/internal/kl;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/kc;->zza(Lcom/google/firebase/auth/PhoneAuthCredential;Lcom/google/android/gms/internal/ka;)V

    return-void
.end method

.method public final zzEL()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jo;->zzbVZ:Lcom/google/firebase/FirebaseApp;

    iget-object v1, p0, Lcom/google/android/gms/internal/jo;->zzbWU:Lcom/google/android/gms/internal/kv;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/iq;->zzb(Lcom/google/firebase/FirebaseApp;Lcom/google/android/gms/internal/kv;)Lcom/google/android/gms/internal/ls;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jo;->zzbWN:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ll;

    iget-object v2, p0, Lcom/google/android/gms/internal/jo;->zzbWT:Lcom/google/android/gms/internal/kx;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ll;->zza(Lcom/google/android/gms/internal/kx;Lcom/google/firebase/auth/FirebaseUser;)V

    new-instance v1, Lcom/google/android/gms/internal/lp;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/lp;-><init>(Lcom/google/android/gms/internal/ls;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jo;->zzV(Ljava/lang/Object;)V

    return-void
.end method
