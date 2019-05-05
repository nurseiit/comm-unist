.class final Lcom/google/android/gms/internal/zzbke;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaud;


# instance fields
.field private synthetic zzaLM:Lcom/google/android/gms/internal/zzati;

.field private synthetic zzakB:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbkd;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/zzati;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbke;->zzakB:Lcom/google/android/gms/common/api/Status;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbke;->zzaLM:Lcom/google/android/gms/internal/zzati;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzakB:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public final zznb()Lcom/google/android/gms/internal/zzati;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbke;->zzaLM:Lcom/google/android/gms/internal/zzati;

    return-object v0
.end method
