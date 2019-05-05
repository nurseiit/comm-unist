.class final Lcom/google/firebase/database/connection/idl/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/pf;


# instance fields
.field private synthetic zzccf:Lcom/google/firebase/database/connection/idl/zzah;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/connection/idl/zzah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzccf:Lcom/google/firebase/database/connection/idl/zzah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzaa(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/database/connection/idl/zzaa;->zzccf:Lcom/google/firebase/database/connection/idl/zzah;

    invoke-interface {v0, p1, p2}, Lcom/google/firebase/database/connection/idl/zzah;->zzaa(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
