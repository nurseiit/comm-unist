.class final Lcom/google/firebase/database/connection/idl/zzaf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oh;


# instance fields
.field private synthetic zzcck:Lcom/google/firebase/database/connection/idl/zzk;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzaf;->zzcck:Lcom/google/firebase/database/connection/idl/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(ZLcom/google/android/gms/internal/oi;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaf;->zzcck:Lcom/google/firebase/database/connection/idl/zzk;

    new-instance v1, Lcom/google/firebase/database/connection/idl/zzag;

    invoke-direct {v1, p0, p2}, Lcom/google/firebase/database/connection/idl/zzag;-><init>(Lcom/google/firebase/database/connection/idl/zzaf;Lcom/google/android/gms/internal/oi;)V

    invoke-interface {v0, p1, v1}, Lcom/google/firebase/database/connection/idl/zzk;->zza(ZLcom/google/firebase/database/connection/idl/zzn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
