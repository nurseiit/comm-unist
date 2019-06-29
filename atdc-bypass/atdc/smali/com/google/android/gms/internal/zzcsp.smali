.class public Lcom/google/android/gms/internal/zzcsp;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "zzcsp"

.field private static final zzbyU:[C


# instance fields
.field private final zzbyV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcsp;->zzbyU:[C

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcsp;->zzbyV:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/zzcsp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcsp;->zzbyV:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcsp;->zzbyV:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public final getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsp;->zzbyV:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsp;->zzbyV:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method

.method public final zzbu(I)Lcom/google/android/gms/internal/zzcsp;
    .locals 3

    new-instance p1, Lcom/google/android/gms/internal/zzcsp;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcsp;->zzbyV:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzcsp;-><init>([B)V

    return-object p1
.end method
