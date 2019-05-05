.class final Lcom/google/android/gms/internal/yh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzciY:I = 0x1

.field public static final enum zzciZ:I = 0x2

.field public static final enum zzcja:I = 0x3

.field public static final enum zzcjb:I = 0x4

.field public static final enum zzcjc:I = 0x5

.field private static final synthetic zzcjd:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/yh;->zzciY:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/yh;->zzciZ:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/yh;->zzcja:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/yh;->zzcjb:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/yh;->zzcjc:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/yh;->zzcjd:[I

    return-void
.end method

.method public static zzJu()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/yh;->zzcjd:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
