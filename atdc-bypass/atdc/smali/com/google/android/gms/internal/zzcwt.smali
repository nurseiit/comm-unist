.class final Lcom/google/android/gms/internal/zzcwt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbJp:Lcom/google/android/gms/internal/zzcwn;

.field private synthetic zzbJw:Ljava/lang/String;

.field private synthetic zzbJx:Ljava/lang/String;

.field private synthetic zzbJy:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcwn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJx:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJy:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJw:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Starting to load container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwn;->zza(Lcom/google/android/gms/internal/zzcwn;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "Unexpected state - container loading already initiated."

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzcwn;->zzd(Lcom/google/android/gms/internal/zzcwn;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcup;->zzd(Ljava/lang/String;Landroid/content/Context;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcwn;->zza(Lcom/google/android/gms/internal/zzcwn;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcwn;->zzb(Lcom/google/android/gms/internal/zzcwn;)Lcom/google/android/gms/internal/zzcxi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJw:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJx:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJy:Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/internal/zzcwn$zzb;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcwt;->zzbJp:Lcom/google/android/gms/internal/zzcwn;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/zzcwn$zzb;-><init>(Lcom/google/android/gms/internal/zzcwn;Lcom/google/android/gms/internal/zzcwo;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcxi;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvd;)V

    return-void
.end method
