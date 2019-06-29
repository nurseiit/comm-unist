.class final Lcom/google/android/gms/internal/zzyr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzRF:Lcom/google/android/gms/internal/zzyn;

.field private synthetic zzRJ:Lcom/google/android/gms/internal/zznu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyn;Lcom/google/android/gms/internal/zznu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyr;->zzRF:Lcom/google/android/gms/internal/zzyn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyr;->zzRJ:Lcom/google/android/gms/internal/zznu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaka;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "asset"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzyr;->zzRF:Lcom/google/android/gms/internal/zzyn;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyr;->zzRJ:Lcom/google/android/gms/internal/zznu;

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/zzyn;->zza(Lcom/google/android/gms/internal/zzyn;Lcom/google/android/gms/internal/zzpj;Ljava/lang/String;)V

    return-void
.end method
