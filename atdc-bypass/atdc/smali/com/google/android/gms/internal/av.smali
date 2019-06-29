.class public final Lcom/google/android/gms/internal/av;
.super Lcom/google/android/gms/internal/zzcxq;


# instance fields
.field private final zzbKf:Lcom/google/android/gms/internal/zzcvy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcvy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/av;->zzbKf:Lcom/google/android/gms/internal/zzcvy;

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzcwa;",
            "[",
            "Lcom/google/android/gms/internal/dp<",
            "*>;)",
            "Lcom/google/android/gms/internal/dp<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length p2, p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/av;->zzbKf:Lcom/google/android/gms/internal/zzcvy;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzcvy;->zzCy()Lcom/google/android/gms/internal/zzcut;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcut;->zzCl()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ed;->zzQ(Ljava/lang/Object;)Lcom/google/android/gms/internal/dp;

    move-result-object p1

    return-object p1
.end method
