.class final Lcom/google/android/gms/internal/wt;
.super Lcom/google/android/gms/internal/ns;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ns<",
        "Lcom/google/android/gms/internal/wp;",
        "Lcom/google/android/gms/internal/xm;",
        ">;"
    }
.end annotation


# instance fields
.field private zzchU:Z

.field private synthetic zzchV:Lcom/google/android/gms/internal/wu;

.field private synthetic zzchW:Lcom/google/android/gms/internal/wr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wr;Lcom/google/android/gms/internal/wu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wt;->zzchW:Lcom/google/android/gms/internal/wr;

    iput-object p2, p0, Lcom/google/android/gms/internal/wt;->zzchV:Lcom/google/android/gms/internal/wu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ns;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/wt;->zzchU:Z

    return-void
.end method


# virtual methods
.method public final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/wp;

    check-cast p2, Lcom/google/android/gms/internal/xm;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/wt;->zzchU:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIL()Lcom/google/android/gms/internal/wp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/wp;->zzi(Lcom/google/android/gms/internal/wp;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/wt;->zzchU:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/wt;->zzchV:Lcom/google/android/gms/internal/wu;

    invoke-static {}, Lcom/google/android/gms/internal/wp;->zzIL()Lcom/google/android/gms/internal/wp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/wt;->zzchW:Lcom/google/android/gms/internal/wr;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/wr;->zzIR()Lcom/google/android/gms/internal/xm;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/wu;->zzb(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/wt;->zzchV:Lcom/google/android/gms/internal/wu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/wu;->zzb(Lcom/google/android/gms/internal/wp;Lcom/google/android/gms/internal/xm;)V

    return-void
.end method
