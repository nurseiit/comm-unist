.class final Lcom/google/android/gms/internal/zzacf;
.super Ljava/lang/Object;


# instance fields
.field public final zzWg:J

.field public final zzWh:Lcom/google/android/gms/internal/zzacb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzacd;Lcom/google/android/gms/internal/zzacb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbF()Lcom/google/android/gms/common/util/zze;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzacf;->zzWg:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacf;->zzWh:Lcom/google/android/gms/internal/zzacb;

    return-void
.end method
