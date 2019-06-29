.class final Lcom/google/android/gms/internal/zzaqt;
.super Lcom/google/android/gms/internal/zzaqu;


# instance fields
.field private synthetic zzakD:Lcom/google/android/gms/internal/zzaqs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaqs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaqt;->zzakD:Lcom/google/android/gms/internal/zzaqs;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaqu;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzN(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaqt;->zzakD:Lcom/google/android/gms/internal/zzaqs;

    new-instance v1, Lcom/google/android/gms/internal/zzaqw;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->zzaBm:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzaqn;->zzmq()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    :goto_0
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzaqw;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaqs;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
