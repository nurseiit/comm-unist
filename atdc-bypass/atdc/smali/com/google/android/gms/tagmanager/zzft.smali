.class final Lcom/google/android/gms/tagmanager/zzft;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private synthetic zzbGQ:Lcom/google/android/gms/tagmanager/zzfs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzfs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzft;->zzbGQ:Lcom/google/android/gms/tagmanager/zzfs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzfo;->zzBX()Ljava/lang/Object;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzft;->zzbGQ:Lcom/google/android/gms/tagmanager/zzfs;

    iget-object p1, p1, Lcom/google/android/gms/tagmanager/zzfs;->zzbGP:Lcom/google/android/gms/tagmanager/zzfo;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzfo;->dispatch()V

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzft;->zzbGQ:Lcom/google/android/gms/tagmanager/zzfs;

    iget-object p1, p1, Lcom/google/android/gms/tagmanager/zzfs;->zzbGP:Lcom/google/android/gms/tagmanager/zzfo;

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzfo;->zzb(Lcom/google/android/gms/tagmanager/zzfo;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/tagmanager/zzft;->zzbGQ:Lcom/google/android/gms/tagmanager/zzfs;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzft;->zzbGQ:Lcom/google/android/gms/tagmanager/zzfs;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzfs;->zzbGP:Lcom/google/android/gms/tagmanager/zzfo;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzfo;->zzc(Lcom/google/android/gms/tagmanager/zzfo;)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/tagmanager/zzfs;->zzs(J)V

    :cond_0
    return v1
.end method
