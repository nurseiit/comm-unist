.class final Lcom/google/android/gms/internal/zzyb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzQX:Lcom/google/android/gms/internal/zzaff;

.field private synthetic zzQY:Lcom/google/android/gms/internal/zzya;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzya;Lcom/google/android/gms/internal/zzaff;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyb;->zzQY:Lcom/google/android/gms/internal/zzya;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyb;->zzQX:Lcom/google/android/gms/internal/zzaff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyb;->zzQY:Lcom/google/android/gms/internal/zzya;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzya;->zza(Lcom/google/android/gms/internal/zzya;)Lcom/google/android/gms/internal/zzxy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyb;->zzQX:Lcom/google/android/gms/internal/zzaff;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzxy;->zzb(Lcom/google/android/gms/internal/zzaff;)V

    return-void
.end method
