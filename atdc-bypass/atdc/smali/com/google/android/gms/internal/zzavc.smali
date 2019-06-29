.class public final Lcom/google/android/gms/internal/zzavc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzavg;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final zzarM:Landroid/content/Context;

.field private final zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private zzauQ:Landroid/net/Uri;

.field private zzauR:Lcom/google/android/gms/internal/zzave;

.field private zzauS:Lcom/google/android/gms/internal/zzavh;

.field private zzauT:Z

.field private zzauU:Lcom/google/android/gms/internal/zzavd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzavc;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/cast/framework/media/ImageHints;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzarM:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzavc;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    new-instance p1, Lcom/google/android/gms/internal/zzavh;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzavh;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauS:Lcom/google/android/gms/internal/zzavh;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavc;->reset()V

    return-void
.end method

.method private final reset()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavc;->zzauR:Lcom/google/android/gms/internal/zzave;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavc;->zzauR:Lcom/google/android/gms/internal/zzave;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzave;->cancel(Z)Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzavc;->zzauR:Lcom/google/android/gms/internal/zzave;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/zzavc;->zzauQ:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzavc;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzavc;->zzauT:Z

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavc;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzavc;->zzauU:Lcom/google/android/gms/internal/zzavd;

    return-void
.end method

.method public final onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavc;->mBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauT:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauU:Lcom/google/android/gms/internal/zzavd;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauU:Lcom/google/android/gms/internal/zzavd;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzavc;->mBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzavd;->zzc(Landroid/graphics/Bitmap;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauR:Lcom/google/android/gms/internal/zzave;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzavd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauU:Lcom/google/android/gms/internal/zzavd;

    return-void
.end method

.method public final zzm(Landroid/net/Uri;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavc;->reset()V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzavc;->zzauQ:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzavc;->reset()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauQ:Landroid/net/Uri;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/zzavc;->zzarM:Landroid/content/Context;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getWidthInPixels()I

    move-result v5

    iget-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauP:Lcom/google/android/gms/cast/framework/media/ImageHints;

    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/ImageHints;->getHeightInPixels()I

    move-result v6

    new-instance p1, Lcom/google/android/gms/internal/zzave;

    const/4 v7, 0x0

    move-object v3, p1

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/zzave;-><init>(Landroid/content/Context;IIZLcom/google/android/gms/internal/zzavg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauR:Lcom/google/android/gms/internal/zzave;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzarM:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/internal/zzave;

    invoke-direct {v1, p1, p0}, Lcom/google/android/gms/internal/zzave;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzavg;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzavc;->zzauR:Lcom/google/android/gms/internal/zzave;

    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauR:Lcom/google/android/gms/internal/zzave;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzavc;->zzauQ:Landroid/net/Uri;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Landroid/net/Uri;

    aput-object v1, v0, v2

    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/zzave;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_3
    iget-boolean p1, p0, Lcom/google/android/gms/internal/zzavc;->zzauT:Z

    if-eqz p1, :cond_4

    return v0

    :cond_4
    return v2
.end method
