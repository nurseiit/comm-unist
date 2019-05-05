.class public final Lcom/google/android/gms/awareness/Awareness;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api<",
            "Lcom/google/android/gms/awareness/AwarenessOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final FenceApi:Lcom/google/android/gms/awareness/FenceApi;

.field public static final SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbil;->FenceApi:Lcom/google/android/gms/awareness/FenceApi;

    sput-object v0, Lcom/google/android/gms/awareness/Awareness;->FenceApi:Lcom/google/android/gms/awareness/FenceApi;

    sget-object v0, Lcom/google/android/gms/internal/zzbil;->SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;

    sput-object v0, Lcom/google/android/gms/awareness/Awareness;->SnapshotApi:Lcom/google/android/gms/awareness/SnapshotApi;

    sget-object v0, Lcom/google/android/gms/internal/zzbil;->API:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/awareness/Awareness;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
