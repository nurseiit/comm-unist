.class public abstract enum Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/SortedLists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "KeyPresentBehavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum ANY_PRESENT:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum FIRST_AFTER:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum FIRST_PRESENT:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum LAST_BEFORE:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

.field public static final enum LAST_PRESENT:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 53
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior$1;

    const-string v1, "ANY_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    .line 63
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior$2;

    const-string v1, "LAST_PRESENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->LAST_PRESENT:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    .line 87
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior$3;

    const-string v1, "FIRST_PRESENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    .line 113
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior$4;

    const-string v1, "FIRST_AFTER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    .line 124
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior$5;

    const-string v1, "LAST_BEFORE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->LAST_BEFORE:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    const/4 v0, 0x5

    .line 48
    new-array v0, v0, [Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->LAST_PRESENT:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v1, v0, v4

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v1, v0, v5

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->LAST_BEFORE:Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    aput-object v1, v0, v6

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/roboguice/shaded/goole/common/collect/SortedLists$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;
    .locals 1

    .line 48
    const-class v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    return-object p0
.end method

.method public static values()[Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;
    .locals 1

    .line 48
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->$VALUES:[Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    invoke-virtual {v0}, [Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/roboguice/shaded/goole/common/collect/SortedLists$KeyPresentBehavior;

    return-object v0
.end method


# virtual methods
.method abstract resultIndex(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;",
            "Ljava/util/List<",
            "+TE;>;I)I"
        }
    .end annotation
.end method
