.class final Lcom/google/android/gms/internal/zzaom;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzaiG:Lcom/google/android/gms/internal/zzaol;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaol;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaom;->zzaiG:Lcom/google/android/gms/internal/zzaol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaom;->zzaiG:Lcom/google/android/gms/internal/zzaol;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaol;->zzaiF:Lcom/google/android/gms/internal/zzaok;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaok;->zza(Lcom/google/android/gms/internal/zzaok;)Lcom/google/android/gms/internal/zzaon;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaom;->zzaiG:Lcom/google/android/gms/internal/zzaol;

    iget v1, v1, Lcom/google/android/gms/internal/zzaol;->zzadw:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaon;->callServiceStopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaom;->zzaiG:Lcom/google/android/gms/internal/zzaol;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaol;->zzadv:Lcom/google/android/gms/internal/zzaoc;

    const-string v1, "Local AnalyticsService processed last dispatch request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaoc;->zzbo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
