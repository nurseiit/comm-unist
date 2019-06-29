.class public final Lcom/google/android/gms/internal/zzczt;
.super Lcom/google/android/gms/internal/zzcxq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcxq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
    .locals 2
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

    array-length v0, p2

    const/4 v1, 0x0

    if-gt v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length p1, p2

    if-gtz p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/dv;->zzbLu:Lcom/google/android/gms/internal/dv;

    goto :goto_1

    :cond_1
    aget-object p1, p2, v1

    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/dv;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/dv;-><init>(Lcom/google/android/gms/internal/dp;)V

    return-object p2
.end method
