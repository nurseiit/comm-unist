.class final Lcom/google/android/gms/internal/vs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum zzchi:I = 0x1

.field public static final enum zzchj:I = 0x2

.field private static final synthetic zzchk:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lcom/google/android/gms/internal/vs;->zzchi:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/google/android/gms/internal/vs;->zzchj:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/vs;->zzchk:[I

    return-void
.end method

.method public static zzIt()[I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vs;->zzchk:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
