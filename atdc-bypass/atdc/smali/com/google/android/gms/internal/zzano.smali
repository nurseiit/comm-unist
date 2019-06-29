.class public final Lcom/google/android/gms/internal/zzano;
.super Lcom/google/android/gms/internal/zzamh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzamj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamh;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    return-void
.end method


# virtual methods
.method protected final zzjD()V
    .locals 0

    return-void
.end method

.method public final zzlA()Lcom/google/android/gms/internal/zzalp;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzano;->zzkD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzano;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzl;->zzjB()Lcom/google/android/gms/internal/zzalp;

    move-result-object v0

    return-object v0
.end method

.method public final zzlB()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzano;->zzkD()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzano;->zzlA()Lcom/google/android/gms/internal/zzalp;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/zzalp;->zzNY:I

    iget v0, v0, Lcom/google/android/gms/internal/zzalp;->zzNZ:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
