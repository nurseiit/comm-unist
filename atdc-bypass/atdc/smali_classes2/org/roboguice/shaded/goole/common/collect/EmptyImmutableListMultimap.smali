.class Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableListMultimap;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;
.source "EmptyImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    serializable = true
.end annotation


# static fields
.field static final INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableListMultimap;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableListMultimap;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableListMultimap;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableListMultimap;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableListMultimap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 32
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableListMultimap;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;I)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 36
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableListMultimap;->INSTANCE:Lorg/roboguice/shaded/goole/common/collect/EmptyImmutableListMultimap;

    return-object v0
.end method
