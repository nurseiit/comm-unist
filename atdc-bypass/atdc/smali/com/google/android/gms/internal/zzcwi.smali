.class final Lcom/google/android/gms/internal/zzcwi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic zzbJb:Lcom/google/android/gms/internal/zzcwh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwi;->zzbJb:Lcom/google/android/gms/internal/zzcwh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzcwd;->zzBX()Ljava/lang/Object;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwi;->zzbJb:Lcom/google/android/gms/internal/zzcwh;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcwh;->zzbJa:Lcom/google/android/gms/internal/zzcwd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcwd;->dispatch()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwi;->zzbJb:Lcom/google/android/gms/internal/zzcwh;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcwh;->zzbJa:Lcom/google/android/gms/internal/zzcwd;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcwd;->zzb(Lcom/google/android/gms/internal/zzcwd;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcwi;->zzbJb:Lcom/google/android/gms/internal/zzcwh;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwi;->zzbJb:Lcom/google/android/gms/internal/zzcwh;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcwh;->zzbJa:Lcom/google/android/gms/internal/zzcwd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwd;->zzc(Lcom/google/android/gms/internal/zzcwd;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzcwh;->zzs(J)V

    :cond_0
    return v1
.end method
