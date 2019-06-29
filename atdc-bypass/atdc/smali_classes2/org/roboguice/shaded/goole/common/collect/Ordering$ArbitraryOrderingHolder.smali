.class Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrderingHolder;
.super Ljava/lang/Object;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/Ordering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArbitraryOrderingHolder"
.end annotation


# static fields
.field static final ARBITRARY_ORDERING:Lorg/roboguice/shaded/goole/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 258
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrdering;-><init>()V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/Ordering$ArbitraryOrderingHolder;->ARBITRARY_ORDERING:Lorg/roboguice/shaded/goole/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
