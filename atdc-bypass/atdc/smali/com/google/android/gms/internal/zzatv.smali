.class final Lcom/google/android/gms/internal/zzatv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/awareness/snapshot/WeatherResult;


# instance fields
.field private synthetic zzaok:Lcom/google/android/gms/internal/zzaud;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzatu;Lcom/google/android/gms/internal/zzaud;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzatv;->zzaok:Lcom/google/android/gms/internal/zzaud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzaok:Lcom/google/android/gms/internal/zzaud;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaud;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    return-object v0
.end method

.method public final getWeather()Lcom/google/android/gms/awareness/state/Weather;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzaok:Lcom/google/android/gms/internal/zzaud;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaud;->zznb()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzatv;->zzaok:Lcom/google/android/gms/internal/zzaud;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzaud;->zznb()Lcom/google/android/gms/internal/zzati;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzati;->zzmZ()Lcom/google/android/gms/internal/zzauh;

    move-result-object v0

    return-object v0
.end method
