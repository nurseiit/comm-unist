.class final Lcom/google/android/gms/internal/zzbbu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/PendingResult$zza;


# instance fields
.field private synthetic zzaCT:Lcom/google/android/gms/internal/zzbbe;

.field private synthetic zzaCU:Lcom/google/android/gms/internal/zzbbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbbt;Lcom/google/android/gms/internal/zzbbe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbu;->zzaCU:Lcom/google/android/gms/internal/zzbbt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbbu;->zzaCT:Lcom/google/android/gms/internal/zzbbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzo(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzbbu;->zzaCU:Lcom/google/android/gms/internal/zzbbt;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbbt;->zza(Lcom/google/android/gms/internal/zzbbt;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbu;->zzaCT:Lcom/google/android/gms/internal/zzbbe;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
