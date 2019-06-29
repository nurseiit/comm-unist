.class public Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;
.super Ljava/lang/Object;
.source "StackTraceElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/util/StackTraceElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InMemoryStackTraceElement"
.end annotation


# instance fields
.field private declaringClass:Ljava/lang/String;

.field private lineNumber:I

.field private methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/StackTraceElement;)V
    .locals 2

    .line 172
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    .line 178
    iput p3, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 198
    :cond_0
    instance-of v1, p1, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 201
    :cond_1
    check-cast p1, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;

    .line 202
    iget-object v1, p1, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    iget v3, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getClassName()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    return-object v0
.end method

.method getLineNumber()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    return v0
.end method

.method getMethodName()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 209
    iget v1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->declaringClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/inject/internal/util/StackTraceElements$InMemoryStackTraceElement;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
