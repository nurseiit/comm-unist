.class final Lcom/google/android/gms/internal/zzadx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzWT:Lcom/google/android/gms/internal/zzadw;

.field private synthetic zztx:Lcom/google/android/gms/internal/zzaff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzadw;Lcom/google/android/gms/internal/zzaff;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzadx;->zzWT:Lcom/google/android/gms/internal/zzadw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzadx;->zztx:Lcom/google/android/gms/internal/zzaff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzadx;->zzWT:Lcom/google/android/gms/internal/zzadw;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzadw;->zza(Lcom/google/android/gms/internal/zzadw;)Lcom/google/android/gms/internal/zzacs;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzadx;->zztx:Lcom/google/android/gms/internal/zzaff;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzacs;->zzb(Lcom/google/android/gms/internal/zzaff;)V

    return-void
.end method
