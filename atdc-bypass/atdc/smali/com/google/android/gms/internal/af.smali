.class public final Lcom/google/android/gms/internal/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzcxo;


# instance fields
.field private final zzbJY:Lcom/google/android/gms/internal/zzcua;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcua;->zzbu(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcua;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/af;-><init>(Lcom/google/android/gms/internal/zzcua;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcua;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/af;->zzbJY:Lcom/google/android/gms/internal/zzcua;

    return-void
.end method


# virtual methods
.method public final varargs zzb(Lcom/google/android/gms/internal/zzcwa;[Lcom/google/android/gms/internal/dp;)Lcom/google/android/gms/internal/dp;
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

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    array-length p2, p2

    if-nez p2, :cond_1

    const/4 p1, 0x1

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzaf(Z)V

    new-instance p1, Lcom/google/android/gms/internal/ds;

    iget-object p2, p0, Lcom/google/android/gms/internal/af;->zzbJY:Lcom/google/android/gms/internal/zzcua;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcua;->isLimitAdTrackingEnabled()Z

    move-result p2

    xor-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ds;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method
