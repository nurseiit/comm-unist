.class public final Lcom/google/android/gms/tagmanager/zzda;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzbFd:I = 0x1

.field public static final enum zzbFe:I = 0x2

.field public static final enum zzbFf:I = 0x3

.field private static final synthetic zzbFg:[I

.field public static final enum zzbFh:I = 0x1

.field public static final enum zzbFi:I = 0x2

.field public static final enum zzbFj:I = 0x3

.field public static final enum zzbFk:I = 0x4

.field private static final synthetic zzbFl:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    sget v2, Lcom/google/android/gms/tagmanager/zzda;->zzbFd:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/google/android/gms/tagmanager/zzda;->zzbFe:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/google/android/gms/tagmanager/zzda;->zzbFf:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sput-object v1, Lcom/google/android/gms/tagmanager/zzda;->zzbFg:[I

    const/4 v1, 0x4

    new-array v1, v1, [I

    sget v2, Lcom/google/android/gms/tagmanager/zzda;->zzbFh:I

    aput v2, v1, v3

    sget v2, Lcom/google/android/gms/tagmanager/zzda;->zzbFi:I

    aput v2, v1, v4

    sget v2, Lcom/google/android/gms/tagmanager/zzda;->zzbFj:I

    aput v2, v1, v5

    sget v2, Lcom/google/android/gms/tagmanager/zzda;->zzbFk:I

    aput v2, v1, v0

    sput-object v1, Lcom/google/android/gms/tagmanager/zzda;->zzbFl:[I

    return-void
.end method

.method public static zzBp()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzda;->zzbFg:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
