.class public final Lcom/google/android/gms/internal/ke;
.super Ljava/lang/Object;


# static fields
.field private static zzajR:Lcom/google/android/gms/common/api/Api$zzf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzf<",
            "Lcom/google/android/gms/internal/jx;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbWH:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "Lcom/google/android/gms/internal/jx;",
            "Lcom/google/android/gms/internal/kg;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbWI:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/internal/kg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ke;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    new-instance v0, Lcom/google/android/gms/internal/kf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/kf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ke;->zzbWH:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string v1, "InternalFirebaseAuth.FIREBASE_AUTH_API"

    sget-object v2, Lcom/google/android/gms/internal/ke;->zzbWH:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/ke;->zzajR:Lcom/google/android/gms/common/api/Api$zzf;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzf;)V

    sput-object v0, Lcom/google/android/gms/internal/ke;->zzbWI:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/kg;)Lcom/google/android/gms/internal/iq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/iq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/iq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/kg;)V

    return-object v0
.end method
