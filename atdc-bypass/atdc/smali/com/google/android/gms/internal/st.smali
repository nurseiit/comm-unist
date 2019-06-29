.class final Lcom/google/android/gms/internal/st;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/uy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/uy<",
        "Lcom/google/android/gms/internal/sn;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzceR:Lcom/google/android/gms/internal/so;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/qr;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Lcom/google/android/gms/internal/sn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/qr;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/sn;->zzHo()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/sn;->zzHp()Lcom/google/android/gms/internal/vu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vu;->zzIv()Lcom/google/android/gms/internal/vt;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {p2}, Lcom/google/android/gms/internal/so;->zzh(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tg;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/tg;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/th;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/sn;->zzHn()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/vu;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/vu;->zzIv()Lcom/google/android/gms/internal/vt;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {p3}, Lcom/google/android/gms/internal/so;->zzh(Lcom/google/android/gms/internal/so;)Lcom/google/android/gms/internal/tg;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/so;->zzb(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/vt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/st;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/vt;)Lcom/google/android/gms/internal/th;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Lcom/google/android/gms/internal/tg;->zza(Lcom/google/android/gms/internal/vt;Lcom/google/android/gms/internal/th;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
