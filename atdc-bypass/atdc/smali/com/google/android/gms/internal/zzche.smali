.class final Lcom/google/android/gms/internal/zzche;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbte:Lcom/google/android/gms/internal/zzceh;

.field private synthetic zzbtf:Lcom/google/android/gms/internal/zzcgq;

.field private synthetic zzbtk:Lcom/google/android/gms/internal/zzcji;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcgq;Lcom/google/android/gms/internal/zzcji;Lcom/google/android/gms/internal/zzceh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzche;->zzbtf:Lcom/google/android/gms/internal/zzcgq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzche;->zzbtk:Lcom/google/android/gms/internal/zzcji;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzche;->zzbte:Lcom/google/android/gms/internal/zzceh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzche;->zzbtf:Lcom/google/android/gms/internal/zzcgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgq;->zza(Lcom/google/android/gms/internal/zzcgq;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcgl;->zzze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzche;->zzbtf:Lcom/google/android/gms/internal/zzcgq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcgq;->zza(Lcom/google/android/gms/internal/zzcgq;)Lcom/google/android/gms/internal/zzcgl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzche;->zzbtk:Lcom/google/android/gms/internal/zzcji;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzche;->zzbte:Lcom/google/android/gms/internal/zzceh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzcgl;->zzb(Lcom/google/android/gms/internal/zzcji;Lcom/google/android/gms/internal/zzceh;)V

    return-void
.end method
