.class public final Lcom/google/android/gms/internal/zzamu;
.super Lcom/google/android/gms/internal/zzamh;


# instance fields
.field private final zzaeh:Lcom/google/android/gms/internal/zzalk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzamj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzamh;-><init>(Lcom/google/android/gms/internal/zzamj;)V

    new-instance p1, Lcom/google/android/gms/internal/zzalk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzalk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamu;->zzaeh:Lcom/google/android/gms/internal/zzalk;

    return-void
.end method


# virtual methods
.method protected final zzjD()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamu;->zzkt()Lcom/google/android/gms/analytics/zzl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzl;->zzjA()Lcom/google/android/gms/internal/zzalk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamu;->zzaeh:Lcom/google/android/gms/internal/zzalk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzalk;->zza(Lcom/google/android/gms/internal/zzalk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamu;->zzkx()Lcom/google/android/gms/internal/zzaot;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaot;->zzjG()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzamu;->zzaeh:Lcom/google/android/gms/internal/zzalk;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzalk;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaot;->zzjH()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamu;->zzaeh:Lcom/google/android/gms/internal/zzalk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzalk;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final zzkW()Lcom/google/android/gms/internal/zzalk;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzamu;->zzkD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamu;->zzaeh:Lcom/google/android/gms/internal/zzalk;

    return-object v0
.end method
