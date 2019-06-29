.class final Lcom/google/android/gms/internal/zzcsq;
.super Ljava/lang/Object;


# static fields
.field private static final zzbCf:Ljava/util/regex/Pattern;

.field private static final zzbCg:Ljava/net/Inet4Address;

.field private static final zzbCh:Ljava/net/Inet4Address;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[.]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzcsq;->zzbCf:Ljava/util/regex/Pattern;

    const-string v0, "127.0.0.1"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcsq;->zzeN(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/android/gms/internal/zzcsq;->zzbCg:Ljava/net/Inet4Address;

    const-string v0, "0.0.0.0"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcsq;->zzeN(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;

    sput-object v0, Lcom/google/android/gms/internal/zzcsq;->zzbCh:Ljava/net/Inet4Address;

    return-void
.end method

.method static zza(Ljava/net/InetAddress;)Ljava/lang/String;
    .locals 9

    instance-of v0, p0, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_1

    mul-int/lit8 v5, v3, 0x2

    aget-byte v6, p0, v5

    add-int/2addr v5, v4

    aget-byte v4, p0, v5

    and-int/lit16 v5, v6, 0xff

    shl-int/2addr v5, v0

    or-int/2addr v5, v2

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    :goto_1
    const/16 v8, 0x9

    if-ge v3, v8, :cond_5

    if-ge v3, v0, :cond_2

    aget v8, v1, v3

    if-nez v8, :cond_2

    if-gez v6, :cond_4

    move v6, v3

    goto :goto_3

    :cond_2
    if-ltz v6, :cond_4

    sub-int v8, v3, v6

    if-le v8, v5, :cond_3

    move v5, v8

    goto :goto_2

    :cond_3
    move v6, v7

    :goto_2
    move v7, v6

    const/4 v6, -0x1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    if-lt v5, v3, :cond_6

    add-int/2addr v5, v7

    invoke-static {v1, v7, v5, p0}, Ljava/util/Arrays;->fill([IIII)V

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v3, v0, :cond_c

    aget v6, v1, v3

    if-ltz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_9

    if-eqz v5, :cond_8

    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    if-eqz v3, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    const-string v5, "::"

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static zzeI(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzcsq;->zzeJ(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzeJ(Ljava/lang/String;)[B
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3a

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v8, 0x2e

    if-ne v4, v8, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    if-ne v4, v5, :cond_2

    if-eqz v3, :cond_1

    return-object v6

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    return-object v6

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzcsq;->zzeK(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_5

    move-object p0, v6

    goto :goto_2

    :cond_5
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p0, v7

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v3, 0x3

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_6

    return-object v6

    :cond_6
    invoke-static {p0}, Lcom/google/android/gms/internal/zzcsq;->zzeL(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz v3, :cond_8

    invoke-static {p0}, Lcom/google/android/gms/internal/zzcsq;->zzeK(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_8
    return-object v6
.end method

.method private static zzeK(Ljava/lang/String;)[B
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/zzcsq;->zzbCf:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, p0, v4

    add-int/lit8 v7, v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xff

    if-gt v8, v9, :cond_1

    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v9, 0x1

    if-le v6, v9, :cond_0

    goto :goto_1

    :cond_0
    int-to-byte v6, v8

    aput-byte v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    if-ne v5, v0, :cond_3

    return-object v1

    :catch_0
    :cond_3
    return-object v2
.end method

.method private static zzeL(Ljava/lang/String;)[B
    .locals 8

    const-string v0, ":"

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_f

    array-length v0, p0

    const/16 v2, 0x9

    if-le v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x1

    const/4 v3, -0x1

    :goto_0
    array-length v4, p0

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_3

    aget-object v4, p0, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    if-ltz v3, :cond_1

    return-object v1

    :cond_1
    move v3, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    if-ltz v3, :cond_7

    array-length v4, p0

    sub-int/2addr v4, v3

    sub-int/2addr v4, v2

    aget-object v5, p0, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v5, v3, -0x1

    if-eqz v5, :cond_5

    return-object v1

    :cond_4
    move v5, v3

    :cond_5
    array-length v6, p0

    sub-int/2addr v6, v2

    aget-object v2, p0, v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v2, v4, -0x1

    if-eqz v2, :cond_8

    return-object v1

    :cond_6
    move v2, v4

    goto :goto_1

    :cond_7
    array-length v5, p0

    const/4 v2, 0x0

    :cond_8
    :goto_1
    add-int v4, v5, v2

    rsub-int/lit8 v4, v4, 0x8

    if-ltz v3, :cond_9

    if-lez v4, :cond_a

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_b

    :cond_a
    return-object v1

    :cond_b
    :goto_2
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_c

    :try_start_0
    aget-object v7, p0, v6

    invoke-static {v7}, Lcom/google/android/gms/internal/zzcsq;->zzeM(Ljava/lang/String;)S

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_c
    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_d

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    if-lez v2, :cond_e

    array-length v0, p0

    sub-int/2addr v0, v2

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcsq;->zzeM(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :catch_0
    return-object v1

    :cond_e
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_f
    return-object v1
.end method

.method private static zzeM(Ljava/lang/String;)S
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    const v0, 0xffff

    if-le p0, v0, :cond_0

    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0}, Ljava/lang/NumberFormatException;-><init>()V

    throw p0

    :cond_0
    int-to-short p0, p0

    return p0
.end method

.method static zzeN(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzcsq;->zzeJ(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "\'%s\' is not an IP string literal."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzcsq;->zzq([B)Ljava/net/InetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static zzq([B)Ljava/net/InetAddress;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
