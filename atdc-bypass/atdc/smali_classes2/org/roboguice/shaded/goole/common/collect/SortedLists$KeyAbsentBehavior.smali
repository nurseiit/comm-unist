.class public abstract enum Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/SortedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "KeyAbsentBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

.field public static final enum INVERTED_INSERTION_INDEX:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

.field public static final enum NEXT_HIGHER:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

.field public static final enum NEXT_LOWER:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 144
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior$1;

    const-string v1, "NEXT_LOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    .line 154
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior$2;

    const-string v1, "NEXT_HIGHER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    .line 172
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior$3;

    const-string v1, "INVERTED_INSERTION_INDEX"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;->INVERTED_INSERTION_INDEX:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    const/4 v0, 0x3

    .line 139
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;->INVERTED_INSERTION_INDEX:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/collect/SortedLists$1;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;
    .locals 1

    .line 139
    const-class v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;
    .locals 1

    .line 139
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyAbsentBehavior;

    return-object v0
.end method


# virtual methods
.method abstract resultIndex(I)I
.end method
