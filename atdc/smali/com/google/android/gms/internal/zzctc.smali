.class final Lcom/google/android/gms/internal/zzctc;
.super Lcom/google/android/gms/internal/zzcta;


# instance fields
.field private synthetic zzbCC:Lcom/google/android/gms/internal/zzctb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzctb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzctc;->zzbCC:Lcom/google/android/gms/internal/zzctb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcta;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzH(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzctc;->zzbCC:Lcom/google/android/gms/internal/zzctb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzctb;->zza(Lcom/google/android/gms/internal/zzctb;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "ClearTokenImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzctc;->zzbCC:Lcom/google/android/gms/internal/zzctb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzctb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
