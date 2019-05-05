.class public Lkr/or/kisa/seed/ProcData;
.super Ljava/lang/Object;
.source "ProcData.java"


# static fields
.field private static final ETX:C = '\u0003'

.field private static final STX:C = '\u0002'

.field private static final US:C = ','

.field private static final pbUserKey:[B

.field private static pdwRoundKey:[I

.field private static final spUserKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x20

    .line 21
    new-array v0, v0, [I

    sput-object v0, Lkr/or/kisa/seed/ProcData;->pdwRoundKey:[I

    const/16 v0, 0x10

    .line 22
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lkr/or/kisa/seed/ProcData;->pbUserKey:[B

    .line 26
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lkr/or/kisa/seed/ProcData;->spUserKey:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        -0x1t
        -0x1t
        0x3t
        0x2t
        0x1t
        0x3t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
        0x3t
        -0x1t
        -0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        -0x1t
        0x1t
        0x3t
        0x2t
        0x1t
        0x1t
        0x3t
        0x2t
        0x1t
        0x1t
        0x2t
        0x3t
        -0x1t
        -0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertByteArrayToString([B)Ljava/lang/String;
    .locals 1

    .line 240
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private convertStringToByteArray(Ljava/lang/String;)[B
    .locals 0

    .line 245
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1
.end method

.method public static decodeProc(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "[^A-Z0-9]"

    .line 126
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, ""

    .line 132
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkr/or/kisa/seed/ProcData;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 133
    array-length v1, p0

    const/16 v2, 0x10

    div-int/2addr v1, v2

    .line 134
    array-length v3, p0

    new-array v3, v3, [B

    .line 140
    sget-object v4, Lkr/or/kisa/seed/ProcData;->pdwRoundKey:[I

    sget-object v5, Lkr/or/kisa/seed/ProcData;->pbUserKey:[B

    invoke-static {v4, v5}, Lkr/or/kisa/seed/Seedx;->SeedRoundKey([I[B)V

    .line 142
    new-array v4, v2, [B

    .line 144
    array-length v5, p0

    const/4 v6, 0x0

    invoke-static {p0, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v1, :cond_4

    const-string p0, ""

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    :try_start_1
    array-length v0, v3

    :goto_1
    if-lt v6, v0, :cond_0

    goto :goto_4

    .line 158
    :cond_0
    aget-byte v2, v3, v6

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "START"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_1
    aget-byte v2, v3, v6

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 160
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "END"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :cond_2
    aget-byte v2, v3, v6

    const/16 v4, 0x2c

    if-ne v2, v4, :cond_3

    .line 165
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, ""

    goto :goto_2

    .line 168
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_4
    mul-int/lit8 v7, v5, 0x10

    .line 146
    :try_start_2
    sget-object v8, Lkr/or/kisa/seed/ProcData;->pdwRoundKey:[I

    invoke-static {p0, v7, v8, v3, v7}, Lkr/or/kisa/seed/Seedx;->SeedDecrypt([BI[I[BI)V

    .line 147
    invoke-static {v3, v7, v4}, Lkr/or/kisa/seed/Seedx;->SeedXoringData([BI[B)V

    .line 148
    invoke-static {p0, v7, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 180
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-object v1
.end method

.method public static encodeProc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 36
    new-instance v0, Lkr/or/kisa/seed/ProcData;

    invoke-direct {v0}, Lkr/or/kisa/seed/ProcData;-><init>()V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2c

    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x3

    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkr/or/kisa/seed/ProcData;->convertStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 53
    array-length p1, p0

    int-to-double p1, p1

    const-wide/high16 p3, 0x4030000000000000L    # 16.0

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    mul-double p3, p3, p1

    double-to-int p3, p3

    .line 54
    new-array p3, p3, [B

    .line 56
    array-length p4, p0

    const/4 v0, 0x0

    invoke-static {p0, v0, p3, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x10

    .line 61
    new-array p4, p0, [B

    .line 63
    sget-object v1, Lkr/or/kisa/seed/ProcData;->pdwRoundKey:[I

    sget-object v3, Lkr/or/kisa/seed/ProcData;->pbUserKey:[B

    invoke-static {v1, v3}, Lkr/or/kisa/seed/Seedx;->SeedRoundKey([I[B)V

    const/4 v1, 0x0

    :goto_0
    int-to-double v3, v1

    cmpg-double v5, v3, p1

    if-ltz v5, :cond_1

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p0, 0x0

    .line 74
    :goto_1
    array-length p1, p3

    if-lt p0, p1, :cond_0

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "%02X"

    .line 75
    new-array p2, v2, [Ljava/lang/Object;

    aget-byte p4, p3, p0

    invoke-static {p4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    aput-object p4, p2, v0

    aget-byte p4, p3, p0

    int-to-char p4, p4

    invoke-static {p4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p4

    const/4 v1, 0x1

    aput-object p4, p2, v1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit8 v3, v1, 0x10

    .line 66
    invoke-static {p3, v3, p4}, Lkr/or/kisa/seed/Seedx;->SeedXoringData([BI[B)V

    .line 67
    sget-object v4, Lkr/or/kisa/seed/ProcData;->pdwRoundKey:[I

    invoke-static {p3, v3, v4, v3}, Lkr/or/kisa/seed/Seedx;->SeedEncrypt([BI[II)V

    .line 68
    invoke-static {p3, v3, p4, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static hexToByteArray(Ljava/lang/String;)[B
    .locals 4

    if-eqz p0, :cond_2

    .line 250
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 252
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    return-object v0

    :cond_1
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x2

    .line 253
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static simpleDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "[^A-Z0-9]"

    .line 187
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    :try_start_0
    const-string v1, ""

    .line 193
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkr/or/kisa/seed/ProcData;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 194
    array-length v1, p0

    const/16 v2, 0x10

    div-int/2addr v1, v2

    .line 195
    array-length v3, p0

    new-array v3, v3, [B

    .line 201
    sget-object v4, Lkr/or/kisa/seed/ProcData;->pdwRoundKey:[I

    sget-object v5, Lkr/or/kisa/seed/ProcData;->spUserKey:[B

    invoke-static {v4, v5}, Lkr/or/kisa/seed/Seedx;->SeedRoundKey([I[B)V

    .line 203
    new-array v4, v2, [B

    .line 205
    array-length v5, p0

    const/4 v6, 0x0

    invoke-static {p0, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v1, :cond_3

    .line 216
    array-length p0, v3

    :goto_1
    if-lt v6, p0, :cond_0

    goto :goto_3

    .line 218
    :cond_0
    aget-byte v1, v3, v6

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "START"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 219
    :cond_1
    aget-byte v1, v3, v6

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 220
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "END"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 222
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    mul-int/lit8 v7, v5, 0x10

    .line 207
    sget-object v8, Lkr/or/kisa/seed/ProcData;->pdwRoundKey:[I

    invoke-static {p0, v7, v8, v3, v7}, Lkr/or/kisa/seed/Seedx;->SeedDecrypt([BI[I[BI)V

    .line 208
    invoke-static {v3, v7, v4}, Lkr/or/kisa/seed/Seedx;->SeedXoringData([BI[B)V

    .line 209
    invoke-static {p0, v7, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v0
.end method

.method public static simpleEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 84
    new-instance v0, Lkr/or/kisa/seed/ProcData;

    invoke-direct {v0}, Lkr/or/kisa/seed/ProcData;-><init>()V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x3

    .line 89
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkr/or/kisa/seed/ProcData;->convertStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 93
    array-length v0, p0

    int-to-double v0, v0

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    mul-double v3, v3, v0

    double-to-int v3, v3

    .line 94
    new-array v3, v3, [B

    .line 96
    array-length v4, p0

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0x10

    .line 101
    new-array v4, p0, [B

    .line 103
    sget-object v6, Lkr/or/kisa/seed/ProcData;->pdwRoundKey:[I

    sget-object v7, Lkr/or/kisa/seed/ProcData;->spUserKey:[B

    invoke-static {v6, v7}, Lkr/or/kisa/seed/Seedx;->SeedRoundKey([I[B)V

    const/4 v6, 0x0

    :goto_0
    int-to-double v7, v6

    cmpg-double v9, v7, v0

    if-ltz v9, :cond_1

    .line 112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p0, 0x0

    .line 114
    :goto_1
    array-length v0, v3

    if-lt p0, v0, :cond_0

    .line 118
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "%02X"

    .line 115
    new-array v1, v2, [Ljava/lang/Object;

    aget-byte v4, v3, p0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v5

    aget-byte v4, v3, p0

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    mul-int/lit8 v7, v6, 0x10

    .line 106
    invoke-static {v3, v7, v4}, Lkr/or/kisa/seed/Seedx;->SeedXoringData([BI[B)V

    .line 107
    sget-object v8, Lkr/or/kisa/seed/ProcData;->pdwRoundKey:[I

    invoke-static {v3, v7, v8, v7}, Lkr/or/kisa/seed/Seedx;->SeedEncrypt([BI[II)V

    .line 108
    invoke-static {v3, v7, v4, v5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private stringToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 260
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-object v2

    .line 261
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private stringToHex0x(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v0, 0x0

    .line 268
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-object v2

    .line 269
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0x%02X "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
