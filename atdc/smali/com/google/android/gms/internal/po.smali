.class final Lcom/google/android/gms/internal/po;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzcbS:Lcom/google/android/gms/internal/pl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/pl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/po;->zzcbS:Lcom/google/android/gms/internal/pl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/po;->zzcbS:Lcom/google/android/gms/internal/pl;

    iget-object v0, v0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wl;->zzIH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/po;->zzcbS:Lcom/google/android/gms/internal/pl;

    iget-object v0, v0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zzb(Lcom/google/android/gms/internal/pg;)Lcom/google/android/gms/internal/wl;

    move-result-object v0

    const-string v1, "closed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/po;->zzcbS:Lcom/google/android/gms/internal/pl;

    iget-object v0, v0, Lcom/google/android/gms/internal/pl;->zzcbQ:Lcom/google/android/gms/internal/pg;

    invoke-static {v0}, Lcom/google/android/gms/internal/pg;->zze(Lcom/google/android/gms/internal/pg;)V

    return-void
.end method
