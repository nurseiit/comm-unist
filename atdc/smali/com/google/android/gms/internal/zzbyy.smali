.class final Lcom/google/android/gms/internal/zzbyy;
.super Lcom/google/android/gms/internal/zzbxh;


# instance fields
.field private final zzaIz:Lcom/google/android/gms/internal/zzbaz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaWb:Lcom/google/android/gms/internal/zzbyx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbyx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;",
            "Lcom/google/android/gms/internal/zzbyx;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbxh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbyy;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbyy;->zzaWb:Lcom/google/android/gms/internal/zzbyx;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbyx;Lcom/google/android/gms/internal/zzbyt;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzbyy;-><init>(Lcom/google/android/gms/internal/zzbaz;Lcom/google/android/gms/internal/zzbyx;)V

    return-void
.end method


# virtual methods
.method public final zzu(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyy;->zzaWb:Lcom/google/android/gms/internal/zzbyx;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyy;->zzaWb:Lcom/google/android/gms/internal/zzbyx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbyx;->zztS()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbyy;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbaz;->setResult(Ljava/lang/Object;)V

    return-void
.end method
