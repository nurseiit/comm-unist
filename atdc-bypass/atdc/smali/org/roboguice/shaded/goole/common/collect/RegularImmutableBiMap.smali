.class Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
.source "RegularImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$InverseSerializedForm;,
        Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;,
        Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation


# static fields
.field static final MAX_LOAD_FACTOR:D = 1.2


# instance fields
.field private final transient entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient hashCode:I

.field private transient inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field

.field private final transient keyTable:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient mask:I

.field private final transient valueTable:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry<",
            "**>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 55
    invoke-direct/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;-><init>()V

    const-wide v2, 0x3ff3333333333333L    # 1.2

    .line 56
    invoke-static {v1, v2, v3}, Lorg/roboguice/shaded/goole/common/collect/Hashing;->closedTableSize(ID)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    .line 57
    iput v3, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->mask:I

    .line 58
    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v3

    .line 59
    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v2

    .line 60
    invoke-static/range {p1 .. p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v1, :cond_3

    .line 65
    aget-object v8, p2, v5

    .line 66
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 67
    invoke-virtual {v8}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 69
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 70
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 71
    invoke-static {v11}, Lorg/roboguice/shaded/goole/common/collect/Hashing;->smear(I)I

    move-result v13

    iget v14, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v13, v14

    .line 72
    invoke-static {v12}, Lorg/roboguice/shaded/goole/common/collect/Hashing;->smear(I)I

    move-result v14

    iget v15, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v14, v15

    .line 74
    aget-object v15, v3, v13

    move-object v1, v15

    :goto_1
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    move-object/from16 v16, v9

    const-string v9, "key"

    invoke-static {v7, v9, v8, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 76
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v1

    move-object/from16 v9, v16

    goto :goto_1

    .line 79
    :cond_0
    aget-object v1, v2, v14

    move-object v7, v1

    :goto_2
    if-eqz v7, :cond_1

    .line 82
    invoke-virtual {v7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    move-object/from16 v17, v10

    const-string v10, "value"

    invoke-static {v9, v10, v8, v7}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 81
    invoke-virtual {v7}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v7

    move-object/from16 v10, v17

    goto :goto_2

    :cond_1
    if-nez v15, :cond_2

    if-nez v1, :cond_2

    move-object v7, v8

    goto :goto_3

    .line 84
    :cond_2
    new-instance v7, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v7, v8, v15, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;)V

    .line 88
    :goto_3
    aput-object v7, v3, v13

    .line 89
    aput-object v7, v2, v14

    .line 90
    aput-object v7, v4, v5

    xor-int v1, v11, v12

    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    move/from16 v1, p1

    goto :goto_0

    .line 94
    :cond_3
    iput-object v3, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->keyTable:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 95
    iput-object v2, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->valueTable:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 96
    iput-object v4, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 97
    iput v6, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->hashCode:I

    return-void
.end method

.method constructor <init>([Ljava/util/Map$Entry;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 103
    invoke-direct/range {p0 .. p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;-><init>()V

    .line 104
    array-length v2, v1

    const-wide v3, 0x3ff3333333333333L    # 1.2

    .line 105
    invoke-static {v2, v3, v4}, Lorg/roboguice/shaded/goole/common/collect/Hashing;->closedTableSize(ID)I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 106
    iput v4, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->mask:I

    .line 107
    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v4

    .line 108
    invoke-static {v3}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v3

    .line 109
    invoke-static {v2}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->createEntryArray(I)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v2, :cond_3

    .line 114
    aget-object v8, v1, v6

    .line 115
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .line 116
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 117
    invoke-static {v9, v10}, Lorg/roboguice/shaded/goole/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 119
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 120
    invoke-static {v11}, Lorg/roboguice/shaded/goole/common/collect/Hashing;->smear(I)I

    move-result v13

    iget v14, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v13, v14

    .line 121
    invoke-static {v12}, Lorg/roboguice/shaded/goole/common/collect/Hashing;->smear(I)I

    move-result v14

    iget v15, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v14, v15

    .line 123
    aget-object v15, v4, v13

    move-object v1, v15

    :goto_1
    if-eqz v1, :cond_0

    move/from16 v16, v2

    .line 126
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const-string v0, "key"

    invoke-static {v2, v0, v8, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 125
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v1

    move/from16 v2, v16

    move-object/from16 v0, p0

    goto :goto_1

    :cond_0
    move/from16 v16, v2

    .line 128
    aget-object v0, v3, v14

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move/from16 v17, v7

    const-string v7, "value"

    invoke-static {v2, v7, v8, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 130
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getNextInValueBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v1

    move/from16 v7, v17

    goto :goto_2

    :cond_1
    move/from16 v17, v7

    if-nez v15, :cond_2

    if-nez v0, :cond_2

    .line 133
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v0, v9, v10}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;

    invoke-direct {v1, v9, v10, v15, v0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$NonTerminalBiMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;)V

    move-object v0, v1

    .line 137
    :goto_3
    aput-object v0, v4, v13

    .line 138
    aput-object v0, v3, v14

    .line 139
    aput-object v0, v5, v6

    xor-int v0, v11, v12

    add-int v7, v17, v0

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_3
    move/from16 v17, v7

    .line 143
    iput-object v4, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->keyTable:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 144
    iput-object v3, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->valueTable:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    .line 145
    iput-object v5, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move/from16 v6, v17

    .line 146
    iput v6, v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->hashCode:I

    return-void
.end method

.method varargs constructor <init>([Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry<",
            "**>;)V"
        }
    .end annotation

    .line 46
    array-length v0, p1

    invoke-direct {p0, v0, p1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;-><init>(I[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-void
.end method

.method static synthetic access$000(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    return-object p0
.end method

.method static synthetic access$100(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)I
    .locals 0

    .line 35
    iget p0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->hashCode:I

    return p0
.end method

.method static synthetic access$300(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)I
    .locals 0

    .line 35
    iget p0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->mask:I

    return p0
.end method

.method static synthetic access$400(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .locals 0

    .line 35
    iget-object p0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->valueTable:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    return-object p0
.end method

.method private static createEntryArray(I)[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 183
    new-array p0, p0, [Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    return-object p0
.end method


# virtual methods
.method createEntrySet()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 204
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/Hashing;->smear(I)I

    move-result v1

    iget v2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->mask:I

    and-int/2addr v1, v2

    .line 193
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->keyTable:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    aget-object v1, v2, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 194
    :cond_1
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;->getNextInKeyBucket()Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic inverse()Lorg/roboguice/shaded/goole/common/collect/BiMap;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$Inverse;-><init>(Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap$1;)V

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->inverse:Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;

    :cond_0
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/RegularImmutableBiMap;->entries:[Lorg/roboguice/shaded/goole/common/collect/ImmutableMapEntry;

    array-length v0, v0

    return v0
.end method
