.class final Lcom/google/android/gms/internal/zzari;
.super Lcom/google/android/gms/internal/zzard;


# instance fields
.field private synthetic zzalz:Lcom/google/android/gms/internal/zzarh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzarh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzari;->zzalz:Lcom/google/android/gms/internal/zzarh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzard;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzari;->zzalz:Lcom/google/android/gms/internal/zzarh;

    new-instance v1, Lcom/google/android/gms/internal/zzarf;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzarf;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/credentials/Credential;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzarh;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzari;->zzalz:Lcom/google/android/gms/internal/zzarh;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzarf;->zze(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/internal/zzarf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzarh;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
