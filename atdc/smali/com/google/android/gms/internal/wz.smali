.class final Lcom/google/android/gms/internal/wz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/xa;


# instance fields
.field private final zzcig:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/xm;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/yy;->zzn(Lcom/google/android/gms/internal/xm;)J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long v0, v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-long v0, v0

    const-wide/16 v2, 0x200

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/wz;->zzcig:J

    return-void
.end method


# virtual methods
.method public final zze(Lcom/google/android/gms/internal/wy;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wy;->zzIV()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/wz;->zzcig:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wy;->zzIW()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/wy;->zzIW()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->zzHf()Lcom/google/android/gms/internal/wp;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIL()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
