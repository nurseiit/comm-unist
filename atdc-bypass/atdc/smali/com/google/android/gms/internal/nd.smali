.class final Lcom/google/android/gms/internal/nd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uy<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzbZH:Lcom/google/android/gms/internal/uv;

.field private synthetic zzbZI:Ljava/util/List;

.field private synthetic zzbZJ:Lcom/google/android/gms/internal/qr;

.field private synthetic zzbZK:Lcom/google/android/gms/internal/xm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nb;Lcom/google/android/gms/internal/uv;Ljava/util/List;Lcom/google/android/gms/internal/qr;Lcom/google/android/gms/internal/xm;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/nd;->zzbZH:Lcom/google/android/gms/internal/uv;

    iput-object p3, p0, Lcom/google/android/gms/internal/nd;->zzbZI:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/nd;->zzbZJ:Lcom/google/android/gms/internal/qr;

    iput-object p5, p0, Lcom/google/android/gms/internal/nd;->zzbZK:Lcom/google/android/gms/internal/xm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p2, p0, Lcom/google/android/gms/internal/nd;->zzbZH:Lcom/google/android/gms/internal/uv;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/uv;->zzJ(Lcom/google/android/gms/internal/qr;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/nd;->zzbZI:Ljava/util/List;

    new-instance p3, Lcom/google/android/gms/internal/za;

    iget-object v0, p0, Lcom/google/android/gms/internal/nd;->zzbZJ:Lcom/google/android/gms/internal/qr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/qr;->zzh(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/qr;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nd;->zzbZK:Lcom/google/android/gms/internal/xm;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/xm;->zzN(Lcom/google/android/gms/internal/qr;)Lcom/google/android/gms/internal/xm;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lcom/google/android/gms/internal/za;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
