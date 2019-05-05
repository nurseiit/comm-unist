.class final Lcom/google/android/gms/internal/zzccn;
.super Lcom/google/android/gms/internal/zzccv;


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


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzccv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzccn;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzcco;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzccn;->zzaIz:Lcom/google/android/gms/internal/zzbaz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcco;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbaz;->setResult(Ljava/lang/Object;)V

    return-void
.end method
