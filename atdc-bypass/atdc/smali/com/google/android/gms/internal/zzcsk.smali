.class final Lcom/google/android/gms/internal/zzcsk;
.super Lcom/google/android/gms/internal/zzcru;


# instance fields
.field private synthetic zzbBZ:Lcom/google/android/gms/internal/zzcsa$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcsa$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcsk;->zzbBZ:Lcom/google/android/gms/internal/zzcsa$zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcru;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsk;->zzbBZ:Lcom/google/android/gms/internal/zzcsa$zzd;

    new-instance v1, Lcom/google/android/gms/internal/zzcsa$zzg;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzcsa$zzg;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/safetynet/zzd;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcsa$zzd;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
