.class final Lcom/google/android/gms/internal/tq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uz;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uz<",
        "Lcom/google/android/gms/internal/tm;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzcfw:Z

.field private synthetic zzcfx:Ljava/util/List;

.field private synthetic zzcfy:Lcom/google/android/gms/internal/qr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/tp;ZLjava/util/List;Lcom/google/android/gms/internal/qr;)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/tq;->zzcfw:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/tq;->zzcfx:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/tq;->zzcfy:Lcom/google/android/gms/internal/qr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzaj(Ljava/lang/Object;)Z
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/tm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tm;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/tq;->zzcfw:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/tq;->zzcfx:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tm;->zzHt()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tm;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/tq;->zzcfy:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qr;->zzi(Lcom/google/android/gms/internal/qr;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/tq;->zzcfy:Lcom/google/android/gms/internal/qr;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/tm;->zzFq()Lcom/google/android/gms/internal/qr;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qr;->zzi(Lcom/google/android/gms/internal/qr;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
