.class public final Lcom/google/android/gms/internal/zzave;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/net/Uri;",
        "Ljava/lang/Long;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzarK:Lcom/google/android/gms/internal/zzayo;


# instance fields
.field private final zzauV:Lcom/google/android/gms/internal/zzavj;

.field private final zzauW:Lcom/google/android/gms/internal/zzavg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzayo;

    const-string v1, "FetchBitmapTask"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzayo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzave;->zzarK:Lcom/google/android/gms/internal/zzayo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IIZJIIILcom/google/android/gms/internal/zzavg;)V
    .locals 12

    move-object v11, p0

    invoke-direct {v11}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/zzavi;

    const/4 v1, 0x0

    invoke-direct {v2, v11, v1}, Lcom/google/android/gms/internal/zzavi;-><init>(Lcom/google/android/gms/internal/zzave;Lcom/google/android/gms/internal/zzavf;)V

    const-wide/32 v6, 0x200000

    const/4 v8, 0x5

    const/16 v9, 0x14d

    const/16 v10, 0x2710

    move-object v1, v11

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v10}, Lcom/google/android/gms/internal/zzauj;->zza(Landroid/content/Context;Landroid/os/AsyncTask;Lcom/google/android/gms/internal/zzavl;IIZJIII)Lcom/google/android/gms/internal/zzavj;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/gms/internal/zzave;->zzauV:Lcom/google/android/gms/internal/zzavj;

    move-object/from16 v0, p10

    iput-object v0, v11, Lcom/google/android/gms/internal/zzave;->zzauW:Lcom/google/android/gms/internal/zzavg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLcom/google/android/gms/internal/zzavg;)V
    .locals 11

    const/4 v4, 0x0

    const-wide/32 v5, 0x200000

    const/4 v7, 0x5

    const/16 v8, 0x14d

    const/16 v9, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzave;-><init>(Landroid/content/Context;IIZJIIILcom/google/android/gms/internal/zzavg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzavg;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/32 v5, 0x200000

    const/4 v7, 0x5

    const/16 v8, 0x14d

    const/16 v9, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/zzave;-><init>(Landroid/content/Context;IIZJIIILcom/google/android/gms/internal/zzavg;)V

    return-void
.end method

.method private final varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    aget-object v3, p1, v0

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzave;->zzauV:Lcom/google/android/gms/internal/zzavj;

    aget-object p1, p1, v0

    invoke-interface {v3, p1}, Lcom/google/android/gms/internal/zzavj;->zzn(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    sget-object v3, Lcom/google/android/gms/internal/zzave;->zzarK:Lcom/google/android/gms/internal/zzayo;

    const-string v4, "Unable to call %s on %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "doFetch"

    aput-object v6, v5, v0

    const-class v0, Lcom/google/android/gms/internal/zzavj;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3, p1, v4, v5}, Lcom/google/android/gms/internal/zzayo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzave;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzave;->publishProgress([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzave;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzave;->zzauW:Lcom/google/android/gms/internal/zzavg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzave;->zzauW:Lcom/google/android/gms/internal/zzavg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzavg;->onPostExecute(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
