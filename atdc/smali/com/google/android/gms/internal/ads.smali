.class public final Lcom/google/android/gms/internal/ads;
.super Ljava/lang/Object;


# static fields
.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static zzcsA:I = 0x10

.field private static zzcsB:I = 0x1a

.field public static final zzcsC:[I

.field public static final zzcsD:[J

.field public static final zzcsE:[F

.field private static zzcsF:[D = null

.field public static final zzcsG:[Z

.field public static final zzcsH:[[B

.field public static final zzcsI:[B

.field private static zzcsy:I = 0xb

.field private static zzcsz:I = 0xc


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/ads;->zzcsC:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/ads;->zzcsD:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/ads;->zzcsE:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/ads;->zzcsF:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/ads;->zzcsG:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/ads;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/ads;->zzcsH:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads;->zzcsI:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/adg;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/adg;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/adg;->zzcm(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/adg;->zzLA()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/adg;->zzcm(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/adg;->zzq(II)V

    return v1
.end method
