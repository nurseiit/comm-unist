.class final Lcom/google/android/gms/internal/zzaeo;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic zzXn:Lcom/google/android/gms/internal/zzaen;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaen;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaeo;->zzXn:Lcom/google/android/gms/internal/zzaen;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaeo;->zzXn:Lcom/google/android/gms/internal/zzaen;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaen;->zzXm:Lcom/google/android/gms/internal/zzael;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaeo;->zzXn:Lcom/google/android/gms/internal/zzaen;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaen;->zzXm:Lcom/google/android/gms/internal/zzael;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzael;->zza(Lcom/google/android/gms/internal/zzael;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaeo;->zzXn:Lcom/google/android/gms/internal/zzaen;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaen;->zzXl:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaeo;->zzXn:Lcom/google/android/gms/internal/zzaen;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaen;->zzXk:Lcom/google/android/gms/internal/zzajg;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzael;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Set;Lcom/google/android/gms/internal/zzajg;)V

    return-void
.end method
