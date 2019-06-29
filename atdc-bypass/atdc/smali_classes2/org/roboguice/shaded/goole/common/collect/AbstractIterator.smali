.class public abstract Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;
.super Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/UnmodifiableIterator;-><init>()V

    .line 65
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->NOT_READY:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->state:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    return-void
.end method

.method private tryToComputeNext()Z
    .locals 2

    .line 142
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->FAILED:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->state:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    .line 143
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->state:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->DONE:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 145
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->READY:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->state:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 124
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->DONE:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->state:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    .line 130
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->state:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    sget-object v1, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->FAILED:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(Z)V

    .line 131
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$1;->$SwitchMap$com$google$common$collect$AbstractIterator$State:[I

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->state:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 138
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->tryToComputeNext()Z

    move-result v0

    return v0

    :pswitch_0
    return v3

    :pswitch_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 156
    :cond_0
    sget-object v0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;->NOT_READY:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->state:Lorg/roboguice/shaded/goole/common/collect/AbstractIterator$State;

    .line 157
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 158
    iput-object v1, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method
