.class Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$EntrySet;
.super Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap<",
        "TK;TV;>.Entries;",
        "Ljava/util/Set<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;)V
    .locals 1

    .line 131
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$EntrySet;->this$0:Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$Entries;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$1;)V
    .locals 0

    .line 131
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap$EntrySet;-><init>(Lorg/roboguice/shaded/goole/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 139
    invoke-static {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 134
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
