.class synthetic Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$1;
.super Ljava/lang/Object;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$common$collect$AbstractIterator$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 131
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->values()[Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$1;->$SwitchMap$com$google$common$collect$AbstractIterator$State:[I

    :try_start_0
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$1;->$SwitchMap$com$google$common$collect$AbstractIterator$State:[I

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->DONE:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$1;->$SwitchMap$com$google$common$collect$AbstractIterator$State:[I

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->READY:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
