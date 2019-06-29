.class final Lcom/google/android/gms/internal/or;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/oi;


# instance fields
.field private synthetic zzcbg:J

.field private synthetic zzcbh:Lcom/google/android/gms/internal/oq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/oq;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iput-wide p2, p0, Lcom/google/android/gms/internal/or;->zzcbg:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/or;->zzcbg:J

    iget-object v2, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object v2, v2, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v2}, Lcom/google/android/gms/internal/op;->zzd(Lcom/google/android/gms/internal/op;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez v4, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object v2, v2, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    sget-object v3, Lcom/google/android/gms/internal/oz;->zzcbn:Lcom/google/android/gms/internal/oz;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;Lcom/google/android/gms/internal/oz;)Lcom/google/android/gms/internal/oz;

    iget-object v2, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object v2, v2, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v2}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/wl;

    move-result-object v2

    const-string v3, "Error fetching token: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object p1, p1, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {p1}, Lcom/google/android/gms/internal/op;->zze(Lcom/google/android/gms/internal/op;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object p1, p1, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {p1}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/wl;

    move-result-object p1

    const-string v2, "Ignoring getToken error, because this was not the latest attempt."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method public final zzgF(Ljava/lang/String;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/or;->zzcbg:J

    iget-object v2, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object v2, v2, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v2}, Lcom/google/android/gms/internal/op;->zzd(Lcom/google/android/gms/internal/op;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez v4, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object v2, v2, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v2}, Lcom/google/android/gms/internal/op;->zzb(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oz;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/oz;->zzcbo:Lcom/google/android/gms/internal/oz;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object v2, v2, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v2}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/wl;

    move-result-object v2

    const-string v3, "Successfully fetched token, opening connection"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object v0, v0, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/op;->zzgI(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object p1, p1, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {p1}, Lcom/google/android/gms/internal/op;->zzb(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oz;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/internal/oz;->zzcbn:Lcom/google/android/gms/internal/oz;

    const/4 v3, 0x1

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v2, "Expected connection state disconnected, but was %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object v4, v4, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {v4}, Lcom/google/android/gms/internal/op;->zzb(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/oz;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ok;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object p1, p1, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {p1}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/wl;

    move-result-object p1

    const-string v2, "Not opening connection after token refresh, because connection was set to disconnected"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/or;->zzcbh:Lcom/google/android/gms/internal/oq;

    iget-object p1, p1, Lcom/google/android/gms/internal/oq;->zzcbf:Lcom/google/android/gms/internal/op;

    invoke-static {p1}, Lcom/google/android/gms/internal/op;->zza(Lcom/google/android/gms/internal/op;)Lcom/google/android/gms/internal/wl;

    move-result-object p1

    const-string v2, "Ignoring getToken result, because this was not the latest attempt."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/wl;->zzb(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method
