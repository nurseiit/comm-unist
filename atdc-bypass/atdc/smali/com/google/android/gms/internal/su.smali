.class final Lcom/google/android/gms/internal/su;
.super Lcom/google/android/gms/internal/ns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ns<",
        "Lcom/google/android/gms/internal/wp;",
        "Lcom/google/android/gms/internal/uv<",
        "Lcom/google/android/gms/internal/sn;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic zzcdE:Ljava/util/List;

.field private synthetic zzceR:Lcom/google/android/gms/internal/so;

.field private synthetic zzceW:Lcom/google/android/gms/internal/xm;

.field private synthetic zzceX:Lcom/google/android/gms/internal/ts;

.field private synthetic zzceY:Lcom/google/android/gms/internal/tx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/ts;Lcom/google/android/gms/internal/tx;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/su;->zzceR:Lcom/google/android/gms/internal/so;

    iput-object p2, p0, Lcom/google/android/gms/internal/su;->zzceW:Lcom/google/android/gms/internal/xm;

    iput-object p3, p0, Lcom/google/android/gms/internal/su;->zzceX:Lcom/google/android/gms/internal/ts;

    iput-object p4, p0, Lcom/google/android/gms/internal/su;->zzceY:Lcom/google/android/gms/internal/tx;

    iput-object p5, p0, Lcom/google/android/gms/internal/su;->zzcdE:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ns;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/wp;

    check-cast p2, Lcom/google/android/gms/internal/uv;

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->zzceW:Lcom/google/android/gms/internal/xm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/su;->zzceW:Lcom/google/android/gms/internal/xm;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/xm;->zzm(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/xm;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/su;->zzceX:Lcom/google/android/gms/internal/ts;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ts;->zzb(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/ts;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/su;->zzceY:Lcom/google/android/gms/internal/tx;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/tx;->zzc(Lcom/google/android/gms/internal/wp;)Lcom/google/android/gms/internal/tx;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/su;->zzcdE:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/su;->zzceR:Lcom/google/android/gms/internal/so;

    invoke-static {v3, p1, p2, v0, v1}, Lcom/google/android/gms/internal/so;->zza(Lcom/google/android/gms/internal/so;Lcom/google/android/gms/internal/tx;Lcom/google/android/gms/internal/uv;Lcom/google/android/gms/internal/xm;Lcom/google/android/gms/internal/ts;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method
