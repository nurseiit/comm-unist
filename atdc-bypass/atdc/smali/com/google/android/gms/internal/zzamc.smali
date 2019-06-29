.class final Lcom/google/android/gms/internal/zzamc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzafD:Lcom/google/android/gms/internal/zzaly;

.field private synthetic zzafH:Lcom/google/android/gms/internal/zzanx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaly;Lcom/google/android/gms/internal/zzanx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamc;->zzafD:Lcom/google/android/gms/internal/zzaly;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamc;->zzafH:Lcom/google/android/gms/internal/zzanx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamc;->zzafD:Lcom/google/android/gms/internal/zzaly;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaly;->zza(Lcom/google/android/gms/internal/zzaly;)Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamc;->zzafH:Lcom/google/android/gms/internal/zzanx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamv;->zza(Lcom/google/android/gms/internal/zzanx;)V

    return-void
.end method
