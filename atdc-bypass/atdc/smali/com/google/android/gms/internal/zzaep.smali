.class final Lcom/google/android/gms/internal/zzaep;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback<",
        "Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzXk:Lcom/google/android/gms/internal/zzajg;

.field private synthetic zzXo:Ljava/util/Map;

.field private synthetic zzXp:Ljava/util/concurrent/atomic/AtomicInteger;

.field private synthetic zzXq:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private synthetic zzsD:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzael;Ljava/util/Map;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzajg;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaep;->zzXo:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaep;->zzsD:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaep;->zzXp:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaep;->zzXq:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaep;->zzXk:Lcom/google/android/gms/internal/zzajg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResult(Lcom/google/android/gms/common/api/Result;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;

    invoke-interface {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;->getMetadata()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzXo:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaep;->zzsD:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/safetynet/SafetyNetApi$SafeBrowsingResult;->getMetadata()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "SafeBrowsing lookup failed. Status: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaes;->zzaC(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaep;->zzXp:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaep;->zzXq:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzaep;->zzXk:Lcom/google/android/gms/internal/zzajg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaep;->zzXo:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzajg;->zzg(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
