.class public Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;
.super Lcom/google/android/gms/common/api/Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/safetynet/SafetyNetApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HarmfulAppsResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Response<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Response;-><init>()V

    return-void
.end method


# virtual methods
.method public getHarmfulAppsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/safetynet/HarmfulAppsData;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;->getResult()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;

    invoke-interface {v0}, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;->getHarmfulAppsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLastScanTimeMs()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResponse;->getResult()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;

    invoke-interface {v0}, Lcom/google/android/gms/safetynet/SafetyNetApi$HarmfulAppsResult;->getLastScanTimeMs()J

    move-result-wide v0

    return-wide v0
.end method
