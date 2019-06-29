.class final Lcom/google/android/gms/internal/zzamb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzafD:Lcom/google/android/gms/internal/zzaly;

.field private synthetic zzafF:Ljava/lang/String;

.field private synthetic zzafG:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaly;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzamb;->zzafD:Lcom/google/android/gms/internal/zzaly;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzamb;->zzafF:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzamb;->zzafG:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamb;->zzafD:Lcom/google/android/gms/internal/zzaly;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaly;->zza(Lcom/google/android/gms/internal/zzaly;)Lcom/google/android/gms/internal/zzamv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzamb;->zzafF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzamv;->zzbw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamb;->zzafG:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzamb;->zzafG:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
