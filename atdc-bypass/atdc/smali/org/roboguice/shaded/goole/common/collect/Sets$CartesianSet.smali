.class final Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;
.super Lorg/roboguice/shaded/goole/common/collect/ForwardingCollection;
.source "Sets.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CartesianSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/ForwardingCollection<",
        "Ljava/util/List<",
        "TE;>;>;",
        "Ljava/util/Set<",
        "Ljava/util/List<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final transient delegate:Lorg/roboguice/shaded/goole/common/collect/CartesianList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/CartesianList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Lorg/roboguice/shaded/goole/common/collect/CartesianList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "TE;>;>;",
            "Lorg/roboguice/shaded/goole/common/collect/CartesianList<",
            "TE;>;)V"
        }
    .end annotation

    .line 1155
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/ForwardingCollection;-><init>()V

    .line 1156
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 1157
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->delegate:Lorg/roboguice/shaded/goole/common/collect/CartesianList;

    return-void
.end method

.method static create(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TE;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1124
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 1126
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1127
    invoke-static {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v1

    .line 1128
    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1129
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0

    .line 1131
    :cond_0
    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 1133
    :cond_1
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object p0

    .line 1134
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet$1;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet$1;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

    .line 1151
    new-instance v1, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;

    new-instance v2, Lorg/roboguice/shaded/goole/common/collect/CartesianList;

    invoke-direct {v2, v0}, Lorg/roboguice/shaded/goole/common/collect/CartesianList;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V

    invoke-direct {v1, p0, v2}, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableList;Lorg/roboguice/shaded/goole/common/collect/CartesianList;)V

    return-object v1
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1118
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1162
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->delegate:Lorg/roboguice/shaded/goole/common/collect/CartesianList;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1168
    instance-of v0, p1, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;

    if-eqz v0, :cond_0

    .line 1169
    check-cast p1, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;

    .line 1170
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    iget-object p1, p1, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1172
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 6

    .line 1181
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    .line 1182
    :goto_0
    iget-object v3, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1188
    :cond_0
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->axes:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    mul-int/lit8 v1, v1, 0x1f

    .line 1189
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/Sets$CartesianSet;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-interface {v3}, Ljava/util/Set;->hashCode()I

    move-result v3

    mul-int v4, v4, v3

    add-int/2addr v1, v4

    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v0

    xor-int/lit8 v0, v1, -0x1

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method
