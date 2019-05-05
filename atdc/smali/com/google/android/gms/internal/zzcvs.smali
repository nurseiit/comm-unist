.class public Lcom/google/android/gms/internal/zzcvs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcvs$zza;
    }
.end annotation


# static fields
.field private static zzbID:Lcom/google/android/gms/internal/zzcvs;


# instance fields
.field private volatile zzbDw:Ljava/lang/String;

.field private volatile zzbFI:Ljava/lang/String;

.field private volatile zzbIE:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/zzcvs$zza;->zzbIF:I

    iput v0, p0, Lcom/google/android/gms/internal/zzcvs;->zzbIE:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcvs;->zzbFI:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcvs;->zzbDw:Ljava/lang/String;

    return-void
.end method

.method public static zzCw()Lcom/google/android/gms/internal/zzcvs;
    .locals 2

    const-class v0, Lcom/google/android/gms/internal/zzcvs;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzcvs;->zzbID:Lcom/google/android/gms/internal/zzcvs;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzcvs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzcvs;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/zzcvs;->zzbID:Lcom/google/android/gms/internal/zzcvs;

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/zzcvs;->zzbID:Lcom/google/android/gms/internal/zzcvs;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getContainerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvs;->zzbDw:Ljava/lang/String;

    return-object v0
.end method

.method public final isPreview()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzcvs;->zzbIE:I

    sget v1, Lcom/google/android/gms/internal/zzcvs$zza;->zzbIG:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzCx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvs;->zzbFI:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized zzc(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\S+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "Bad preview url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_2
    const-string v2, "id"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gtm_auth"

    invoke-virtual {p2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "gtm_preview"

    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Preview fails (container doesn\'t match the container specified by the asset)"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    if-eqz v2, :cond_9

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/zzcvs;->zzbDw:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/google/android/gms/internal/zzcvs;->zzbIE:I

    sget p2, Lcom/google/android/gms/internal/zzcvs$zza;->zzbIF:I

    if-ne p1, p2, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "Exit preview mode for container: "

    iget-object p2, p0, Lcom/google/android/gms/internal/zzcvs;->zzbDw:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->v(Ljava/lang/String;)V

    sget p1, Lcom/google/android/gms/internal/zzcvs$zza;->zzbIF:I

    iput p1, p0, Lcom/google/android/gms/internal/zzcvs;->zzbIE:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcvs;->zzbDw:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcvs;->zzbFI:Ljava/lang/String;

    goto :goto_3

    :cond_5
    :goto_2
    const-string p1, "Error in exiting preview mode. The container is not in preview."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :cond_6
    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    sget p1, Lcom/google/android/gms/internal/zzcvs$zza;->zzbIG:I

    iput p1, p0, Lcom/google/android/gms/internal/zzcvs;->zzbIE:I

    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcvs;->zzbFI:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcvs;->zzbDw:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_7
    :try_start_5
    const-string p1, "Bad preview url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_4
    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v0

    :cond_9
    :try_start_6
    const-string p1, "Bad preview url: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_a
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_5
    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    :try_start_7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Error decoding the preview url: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzcvk;->zzaT(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return v0

    :goto_6
    monitor-exit p0

    throw p1
.end method

.method public final zzfG(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcvs;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcvs;->zzbDw:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
