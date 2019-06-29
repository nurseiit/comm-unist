.class final Lcom/google/android/gms/internal/zzadn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzWF:Lcom/google/android/gms/internal/zzut;

.field private synthetic zzWG:Lcom/google/android/gms/internal/zzadm;

.field private synthetic zztY:Lcom/google/android/gms/internal/zzir;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzadm;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzut;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadn;->zzWG:Lcom/google/android/gms/internal/zzadm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzadn;->zztY:Lcom/google/android/gms/internal/zzir;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzadn;->zzWF:Lcom/google/android/gms/internal/zzut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadn;->zzWG:Lcom/google/android/gms/internal/zzadm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadn;->zztY:Lcom/google/android/gms/internal/zzir;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzadn;->zzWF:Lcom/google/android/gms/internal/zzut;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzadm;->zza(Lcom/google/android/gms/internal/zzadm;Lcom/google/android/gms/internal/zzir;Lcom/google/android/gms/internal/zzut;)V

    return-void
.end method
