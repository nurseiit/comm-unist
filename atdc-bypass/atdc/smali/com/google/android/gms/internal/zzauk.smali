.class public final Lcom/google/android/gms/internal/zzauk;
.super Lcom/google/android/gms/cast/framework/SessionProvider;


# instance fields
.field private final zzarQ:Lcom/google/android/gms/cast/framework/CastOptions;

.field private final zzasB:Lcom/google/android/gms/internal/zzavb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzavb;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getSupportedNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getReceiverApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/cast/framework/CastOptions;->getSupportedNamespaces()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/CastMediaControlIntent;->categoryForCast(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/cast/framework/SessionProvider;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzauk;->zzarQ:Lcom/google/android/gms/cast/framework/CastOptions;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzauk;->zzasB:Lcom/google/android/gms/internal/zzavb;

    return-void
.end method


# virtual methods
.method public final createSession(Ljava/lang/String;)Lcom/google/android/gms/cast/framework/Session;
    .locals 10

    new-instance v8, Lcom/google/android/gms/cast/framework/CastSession;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->getCategory()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzauk;->zzarQ:Lcom/google/android/gms/cast/framework/CastOptions;

    sget-object v5, Lcom/google/android/gms/cast/Cast;->CastApi:Lcom/google/android/gms/cast/Cast$CastApi;

    new-instance v6, Lcom/google/android/gms/internal/zzaul;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzaul;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/zzavn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzauk;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzauk;->zzarQ:Lcom/google/android/gms/cast/framework/CastOptions;

    iget-object v9, p0, Lcom/google/android/gms/internal/zzauk;->zzasB:Lcom/google/android/gms/internal/zzavb;

    invoke-direct {v7, v0, v3, v9}, Lcom/google/android/gms/internal/zzavn;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/internal/zzavb;)V

    move-object v0, v8

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/cast/framework/CastSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/framework/CastOptions;Lcom/google/android/gms/cast/Cast$CastApi;Lcom/google/android/gms/internal/zzaul;Lcom/google/android/gms/internal/zzavn;)V

    return-object v8
.end method

.method public final isSessionRecoverable()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzauk;->zzarQ:Lcom/google/android/gms/cast/framework/CastOptions;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/CastOptions;->getResumeSavedSession()Z

    move-result v0

    return v0
.end method
