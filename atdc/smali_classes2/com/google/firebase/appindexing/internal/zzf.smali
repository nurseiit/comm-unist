.class public final Lcom/google/firebase/appindexing/internal/zzf;
.super Lcom/google/firebase/appindexing/FirebaseAppIndex;


# instance fields
.field private zzbVK:Lcom/google/firebase/appindexing/internal/zzm;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/firebase/appindexing/internal/zzj;

    invoke-direct {v0, p1}, Lcom/google/firebase/appindexing/internal/zzj;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/appindexing/internal/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApi;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/GoogleApi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/GoogleApi<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/appindexing/FirebaseAppIndex;-><init>()V

    new-instance p1, Lcom/google/firebase/appindexing/internal/zzm;

    invoke-direct {p1, p2}, Lcom/google/firebase/appindexing/internal/zzm;-><init>(Lcom/google/android/gms/common/api/GoogleApi;)V

    iput-object p1, p0, Lcom/google/firebase/appindexing/internal/zzf;->zzbVK:Lcom/google/firebase/appindexing/internal/zzm;

    return-void
.end method


# virtual methods
.method public final varargs remove([Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzf;->zzbVK:Lcom/google/firebase/appindexing/internal/zzm;

    new-instance v1, Lcom/google/firebase/appindexing/internal/zzh;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/appindexing/internal/zzh;-><init>(Lcom/google/firebase/appindexing/internal/zzf;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/appindexing/internal/zzm;->zzb(Lcom/google/firebase/appindexing/internal/zzk;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final removeAll()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzf;->zzbVK:Lcom/google/firebase/appindexing/internal/zzm;

    new-instance v1, Lcom/google/firebase/appindexing/internal/zzi;

    invoke-direct {v1, p0}, Lcom/google/firebase/appindexing/internal/zzi;-><init>(Lcom/google/firebase/appindexing/internal/zzf;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/appindexing/internal/zzm;->zzb(Lcom/google/firebase/appindexing/internal/zzk;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final varargs update([Lcom/google/firebase/appindexing/Indexable;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/firebase/appindexing/Indexable;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/google/firebase/appindexing/internal/Thing;

    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzf;->zzbVK:Lcom/google/firebase/appindexing/internal/zzm;

    new-instance v1, Lcom/google/firebase/appindexing/internal/zzg;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/appindexing/internal/zzg;-><init>(Lcom/google/firebase/appindexing/internal/zzf;[Lcom/google/firebase/appindexing/internal/Thing;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/appindexing/internal/zzm;->zzb(Lcom/google/firebase/appindexing/internal/zzk;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    :catch_0
    new-instance p1, Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;

    const-string v0, "Custom Indexable-objects are not allowed. Please use the \'Indexables\'-class for creating the objects."

    invoke-direct {p1, v0}, Lcom/google/firebase/appindexing/FirebaseAppIndexingInvalidArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
