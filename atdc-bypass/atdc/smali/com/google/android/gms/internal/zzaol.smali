.class final Lcom/google/android/gms/internal/zzaol;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanq;


# instance fields
.field final synthetic zzadv:Lcom/google/android/gms/internal/zzaoc;

.field final synthetic zzadw:I

.field private synthetic zzaiE:Lcom/google/android/gms/internal/zzamj;

.field final synthetic zzaiF:Lcom/google/android/gms/internal/zzaok;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaok;ILcom/google/android/gms/internal/zzamj;Lcom/google/android/gms/internal/zzaoc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaol;->zzaiF:Lcom/google/android/gms/internal/zzaok;

    iput p2, p0, Lcom/google/android/gms/internal/zzaol;->zzadw:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaol;->zzaiE:Lcom/google/android/gms/internal/zzamj;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaol;->zzadv:Lcom/google/android/gms/internal/zzaoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaol;->zzaiF:Lcom/google/android/gms/internal/zzaok;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaok;->zzb(Lcom/google/android/gms/internal/zzaok;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzaom;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaom;-><init>(Lcom/google/android/gms/internal/zzaol;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
