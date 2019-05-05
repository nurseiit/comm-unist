.class final Lcom/google/firebase/database/connection/idl/zzae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oi;


# instance fields
.field private synthetic zzccj:Lcom/google/firebase/database/connection/idl/zzn;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzad;Lcom/google/firebase/database/connection/idl/zzn;)V
    .locals 0

    iput-object p2, p0, Lcom/google/firebase/database/connection/idl/zzae;->zzccj:Lcom/google/firebase/database/connection/idl/zzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzae;->zzccj:Lcom/google/firebase/database/connection/idl/zzn;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/idl/zzn;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzgF(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzae;->zzccj:Lcom/google/firebase/database/connection/idl/zzn;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/connection/idl/zzn;->zzgF(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
