.class public final Lcom/google/android/gms/internal/zzzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzyv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzyv<",
        "Lcom/google/android/gms/internal/zzns;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzSe:Z

.field private final zzSf:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzzg;->zzSe:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzzg;->zzSf:Z

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzyn;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzoa;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v3, "images"

    iget-boolean v5, v0, Lcom/google/android/gms/internal/zzzg;->zzSe:Z

    iget-boolean v6, v0, Lcom/google/android/gms/internal/zzzg;->zzSf:Z

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzyn;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZZ)Ljava/util/List;

    move-result-object v1

    const-string v2, "secondary_image"

    iget-boolean v3, v0, Lcom/google/android/gms/internal/zzzg;->zzSe:Z

    invoke-virtual {v7, v8, v2, v4, v3}, Lcom/google/android/gms/internal/zzyn;->zza(Lorg/json/JSONObject;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/zzajm;

    move-result-object v2

    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/zzyn;->zzd(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v3

    const-string v4, "video"

    invoke-virtual {v7, v8, v4}, Lcom/google/android/gms/internal/zzyn;->zzc(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/google/android/gms/internal/zzajm;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzajm;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzajm;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zznp;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/internal/zzyn;->zzb(Lcom/google/android/gms/internal/zzajm;)Lcom/google/android/gms/internal/zzaka;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/zzns;

    const-string v5, "headline"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v5, "body"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzos;

    const-string v5, "call_to_action"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "advertiser"

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/google/android/gms/internal/zznn;

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->zziH()Lcom/google/android/gms/internal/zzaks;

    move-result-object v5

    move-object v14, v5

    goto :goto_1

    :cond_1
    move-object v14, v3

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzaka;->getView()Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    goto :goto_2

    :cond_2
    move-object v15, v3

    :goto_2
    move-object v5, v4

    move-object v8, v9

    move-object v9, v2

    invoke-direct/range {v5 .. v15}, Lcom/google/android/gms/internal/zzns;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzos;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zznn;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzks;Landroid/view/View;)V

    return-object v4
.end method
