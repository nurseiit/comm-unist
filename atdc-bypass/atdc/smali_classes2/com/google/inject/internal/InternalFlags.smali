.class public Lcom/google/inject/internal/InternalFlags;
.super Ljava/lang/Object;
.source "InternalFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/google/inject/internal/InternalFlags;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/InternalFlags;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIncludeStackTraceOption()Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;
    .locals 3

    const-string v0, "guice_include_stack_traces"

    .line 40
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->valueOf(Ljava/lang/String;)Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

    .line 46
    :catch_0
    sget-object v1, Lcom/google/inject/internal/InternalFlags;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a valid flag value for guice_include_stack_traces. "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Values must be one of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->values()[Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;->ONLY_FOR_DECLARING_SOURCE:Lcom/google/inject/internal/InternalFlags$IncludeStackTraceOption;

    return-object v0
.end method
