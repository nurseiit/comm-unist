.class final Lcom/google/android/gms/internal/zzod;
.super Lcom/google/android/gms/internal/zzym;


# instance fields
.field private synthetic zzIg:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoc;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzod;->zzIg:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzym;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/ads/internal/js/zzai;)V
    .locals 2

    const-string v0, "google.afma.nativeAds.handleClickGmsg"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzod;->zzIg:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzai;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
