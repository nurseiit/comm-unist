.class abstract Lcom/google/android/gms/internal/zzcmh;
.super Lcom/google/android/gms/internal/zzcmg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcmg<",
        "Lcom/google/android/gms/nearby/connection/Connections$StartAdvertisingResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcmg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzcln;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcmh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcmi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzcmi;-><init>(Lcom/google/android/gms/internal/zzcmh;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
