.class final Lcom/google/android/gms/nearby/messages/internal/zzal;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza<",
        "Lcom/google/android/gms/nearby/messages/internal/zzah;",
        "Lcom/google/android/gms/nearby/messages/MessagesOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public final synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzq;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 7

    move-object v6, p4

    check-cast v6, Lcom/google/android/gms/nearby/messages/MessagesOptions;

    new-instance p4, Lcom/google/android/gms/nearby/messages/internal/zzah;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/internal/zzah;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzq;Lcom/google/android/gms/nearby/messages/MessagesOptions;)V

    return-object p4
.end method
