.class final Lcom/google/android/gms/wearable/internal/zzft;
.super Lcom/google/android/gms/wearable/internal/zzfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/wearable/internal/zzfc<",
        "Lcom/google/android/gms/wearable/CapabilityApi$RemoveLocalCapabilityResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbaz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbaz<",
            "Lcom/google/android/gms/wearable/CapabilityApi$RemoveLocalCapabilityResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/internal/zzfc;-><init>(Lcom/google/android/gms/internal/zzbaz;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/wearable/internal/zzeq;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/zzu;

    iget p1, p1, Lcom/google/android/gms/wearable/internal/zzeq;->statusCode:I

    invoke-static {p1}, Lcom/google/android/gms/wearable/internal/zzev;->zzaY(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/wearable/internal/zzu;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/zzft;->zzR(Ljava/lang/Object;)V

    return-void
.end method
