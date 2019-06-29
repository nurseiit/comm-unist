.class final Lcom/google/android/gms/internal/zzasp;
.super Lcom/google/android/gms/internal/zzarx;


# instance fields
.field private synthetic zzalL:Lcom/google/android/gms/internal/zzaso;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaso;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzasp;->zzalL:Lcom/google/android/gms/internal/zzaso;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzarx;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzasp;->zzalL:Lcom/google/android/gms/internal/zzaso;

    new-instance v1, Lcom/google/android/gms/internal/zzasq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzasq;-><init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaso;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
