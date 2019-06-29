.class final Lcom/google/android/gms/internal/pi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbQ:Lcom/google/android/gms/internal/pg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/pi;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/pi;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzg(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/pk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/pi;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzg(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/pk;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/pk;->zzgM(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/pi;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzc(Lcom/google/android/gms/internal/pg;)V

    :cond_0
    return-void
.end method
