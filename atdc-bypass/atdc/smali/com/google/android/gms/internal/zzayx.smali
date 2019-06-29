.class final Lcom/google/android/gms/internal/zzayx;
.super Lcom/google/android/gms/internal/zzazm;


# instance fields
.field private synthetic zzayZ:Lcom/google/android/gms/internal/zzayw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzayw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzayx;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzazm;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzah(I)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzayw;->zzoQ()Lcom/google/android/gms/internal/zzayo;

    move-result-object p1

    const-string v0, "onRemoteDisplayEnded"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzayx;->zzayZ:Lcom/google/android/gms/internal/zzayw;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzayw;->zza(Lcom/google/android/gms/internal/zzayw;)V

    return-void
.end method
