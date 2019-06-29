.class Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSetMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;
.source "EmptyImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    serializable = true
.end annotation


# static fields
.field static final INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSetMultimap;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSetMultimap;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSetMultimap;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSetMultimap;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSetMultimap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 32
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSetMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;ILjava/util/Comparator;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 36
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSetMultimap;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableSetMultimap;

    return-object v0
.end method
