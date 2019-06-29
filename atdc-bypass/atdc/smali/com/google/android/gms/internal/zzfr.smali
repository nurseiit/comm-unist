.class final Lcom/google/android/gms/internal/zzfr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzrd;


# instance fields
.field private synthetic zzxs:Lcom/google/android/gms/internal/zzfq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzfq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfr;->zzxs:Lcom/google/android/gms/internal/zzfq;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfr;->zzxs:Lcom/google/android/gms/internal/zzfq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfq;->zza(Lcom/google/android/gms/internal/zzfq;)Lcom/google/android/gms/internal/zzfi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzfi;->zzb(Lcom/google/android/gms/internal/zzaka;Ljava/util/Map;)V

    return-void
.end method
