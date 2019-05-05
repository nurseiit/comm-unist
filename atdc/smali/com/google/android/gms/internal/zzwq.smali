.class public final Lcom/google/android/gms/internal/zzwq;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzn;
.end annotation


# instance fields
.field private final zzNR:Z

.field private final zzNS:Z

.field private final zzNT:Z

.field private final zzNU:Z

.field private final zzNV:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzws;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzws;->zza(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwq;->zzNR:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzws;->zzb(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwq;->zzNS:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzws;->zzc(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwq;->zzNT:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzws;->zzd(Lcom/google/android/gms/internal/zzws;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzwq;->zzNU:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzws;->zze(Lcom/google/android/gms/internal/zzws;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzwq;->zzNV:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzws;Lcom/google/android/gms/internal/zzwr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzwq;-><init>(Lcom/google/android/gms/internal/zzws;)V

    return-void
.end method


# virtual methods
.method public final toJson()Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwq;->zzNR:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwq;->zzNS:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwq;->zzNT:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwq;->zzNU:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzwq;->zzNV:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzafr;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
