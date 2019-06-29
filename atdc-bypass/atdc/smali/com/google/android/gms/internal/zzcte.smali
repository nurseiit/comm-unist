.class final Lcom/google/android/gms/internal/zzcte;
.super Lcom/google/android/gms/internal/zzcta;


# instance fields
.field private synthetic zzbCE:Lcom/google/android/gms/internal/zzctd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzctd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcte;->zzbCE:Lcom/google/android/gms/internal/zzctd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcta;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcte;->zzbCE:Lcom/google/android/gms/internal/zzctd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzctd;->zza(Lcom/google/android/gms/internal/zzctd;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SearchAuth"

    const-string v1, "GetGoogleNowAuthImpl success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcte;->zzbCE:Lcom/google/android/gms/internal/zzctd;

    new-instance v1, Lcom/google/android/gms/internal/zzctf;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/zzctf;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/search/GoogleNowAuthState;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzctd;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
