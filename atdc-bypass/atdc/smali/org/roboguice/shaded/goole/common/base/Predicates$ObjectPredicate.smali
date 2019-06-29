.class abstract enum Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;
.super Ljava/lang/Enum;
.source "Predicates.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "ObjectPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;",
        ">;",
        "Lorg/roboguice/shaded/goole/common/base/Predicate<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

.field public static final enum ALWAYS_FALSE:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

.field public static final enum ALWAYS_TRUE:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

.field public static final enum IS_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

.field public static final enum NOT_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 276
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate$1;

    const-string v1, "ALWAYS_TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    .line 281
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate$2;

    const-string v1, "ALWAYS_FALSE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->ALWAYS_FALSE:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    .line 286
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate$3;

    const-string v1, "IS_NULL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->IS_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    .line 291
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate$4;

    const-string v1, "NOT_NULL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->NOT_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    const/4 v0, 0x4

    .line 275
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    sget-object v1, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    aput-object v1, v0, v2

    sget-object v1, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->ALWAYS_FALSE:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    aput-object v1, v0, v3

    sget-object v1, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->IS_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    aput-object v1, v0, v4

    sget-object v1, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->NOT_NULL:Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    aput-object v1, v0, v5

    sput-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->$VALUES:[Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/base/Predicates$1;)V
    .locals 0

    .line 275
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;
    .locals 1

    .line 275
    const-class v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;
    .locals 1

    .line 275
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->$VALUES:[Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/base/Predicates$ObjectPredicate;

    return-object v0
.end method


# virtual methods
.method withNarrowedType()Lorg/roboguice/shaded/goole/common/base/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Predicate<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
