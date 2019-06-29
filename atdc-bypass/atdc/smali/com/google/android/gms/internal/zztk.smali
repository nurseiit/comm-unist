.class final synthetic Lcom/google/android/gms/internal/zztk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final zzKn:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zztk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zztk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztk;->zzKn:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->zzbN()Lcom/google/android/gms/internal/zztl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztl;->zzeG()V

    return-void
.end method
