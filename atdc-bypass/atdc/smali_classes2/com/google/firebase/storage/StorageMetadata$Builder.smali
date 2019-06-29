.class public Lcom/google/firebase/storage/StorageMetadata$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StorageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzcoK:Lcom/google/firebase/storage/StorageMetadata;

.field private zzcoL:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata;

    invoke-direct {v0}, Lcom/google/firebase/storage/StorageMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/storage/StorageMetadata;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/firebase/storage/StorageMetadata;-><init>(Lcom/google/firebase/storage/StorageMetadata;ZLcom/google/firebase/storage/zzc;)V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata;

    invoke-direct {v0}, Lcom/google/firebase/storage/StorageMetadata;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzt(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoL:Z

    :cond_0
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/google/firebase/storage/StorageReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/firebase/storage/StorageMetadata$Builder;-><init>(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {p1, p2}, Lcom/google/firebase/storage/StorageMetadata;->zza(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageReference;)Lcom/google/firebase/storage/StorageReference;

    return-void
.end method

.method private final zzt(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "generation"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->zza(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->zzb(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "bucket"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->zzc(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "metageneration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->zzd(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "timeCreated"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->zze(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "updated"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->zzf(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "size"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/firebase/storage/StorageMetadata;->zza(Lcom/google/firebase/storage/StorageMetadata;J)J

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "md5Hash"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->zzg(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    const-string v1, "downloadTokens"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->zzh(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentType(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "metadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setCustomMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    goto :goto_0

    :cond_0
    const-string v0, "cacheControl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setCacheControl(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    const-string v0, "contentDisposition"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentDisposition(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    const-string v0, "\'contentEncoding"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentEncoding(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    const-string v0, "\'contentLanguage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/storage/StorageMetadata$Builder;->setContentLanguage(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/firebase/storage/StorageMetadata;
    .locals 4

    new-instance v0, Lcom/google/firebase/storage/StorageMetadata;

    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    iget-boolean v2, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoL:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/storage/StorageMetadata;-><init>(Lcom/google/firebase/storage/StorageMetadata;ZLcom/google/firebase/storage/zzc;)V

    return-object v0
.end method

.method public setCacheControl(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageMetadata;->zzl(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setContentDisposition(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageMetadata;->zzk(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setContentEncoding(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageMetadata;->zzj(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setContentLanguage(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageMetadata;->zzi(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/storage/StorageMetadata;->zzm(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setCustomMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/storage/StorageMetadata$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata;->zza(Lcom/google/firebase/storage/StorageMetadata;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/google/firebase/storage/StorageMetadata;->zza(Lcom/google/firebase/storage/StorageMetadata;Ljava/util/Map;)Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata$Builder;->zzcoK:Lcom/google/firebase/storage/StorageMetadata;

    invoke-static {v0}, Lcom/google/firebase/storage/StorageMetadata;->zza(Lcom/google/firebase/storage/StorageMetadata;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
