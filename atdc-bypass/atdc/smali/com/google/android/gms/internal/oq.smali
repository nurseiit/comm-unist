.class final Lcom/google/android/gms/internal/oq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbe:Z

.field final synthetic zzcbf:Lcom/google/android/gms/internal/op;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/op;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/oq;->zzcbe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    const-string v1, "Trying to fetch auth token"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zzb(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbn:Lcom/google/android/gms/internal/oz;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not in disconnected state: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v4}, Lcom/google/android/gms/internal/op;->zzb(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oz;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v1, v3}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    sget-object v1, Lcom/google/android/gms/internal/oz;->zzcbo:Lcom/google/android/gms/internal/oz;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/oz;

    iget-object v0, p0, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zzc(Lcom/google/android/gms/internal/op;)J

    iget-object v0, p0, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v0}, Lcom/google/android/gms/internal/op;->zzd(Lcom/google/android/gms/internal/op;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v2}, Lcom/google/android/gms/internal/op;->zzf(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oh;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/oq;->zzcbe:Z

    new-instance v4, Lcom/google/android/gms/internal/or;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/gms/internal/or;-><init>(Lcom/google/android/gms/internal/oq;J)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/gms/internal/oh;->zza(ZLcom/google/android/gms/internal/oi;)V

    return-void
.end method
