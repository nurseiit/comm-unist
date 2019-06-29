.class final Lcom/google/android/gms/internal/zzaxv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaxJ:Lcom/google/android/gms/internal/zzaxt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzaxt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaxv;->zzaxJ:Lcom/google/android/gms/internal/zzaxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzaxt;Lcom/google/android/gms/internal/zzaxu;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaxv;-><init>(Lcom/google/android/gms/internal/zzaxt;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxv;->zzaxJ:Lcom/google/android/gms/internal/zzaxt;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/zzaxt;->zzaxI:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaxv;->zzaxJ:Lcom/google/android/gms/internal/zzaxt;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaxt;->zzvw:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaxv;->zzaxJ:Lcom/google/android/gms/internal/zzaxt;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/zzaxt;->zzz(J)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaxv;->zzaxJ:Lcom/google/android/gms/internal/zzaxt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzaxt;->zzZ(Z)V

    return-void
.end method
