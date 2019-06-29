.class public final Lcom/google/inject/internal/BytecodeGen;
.super Ljava/lang/Object;
.source "BytecodeGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;,
        Lcom/google/inject/internal/BytecodeGen$Visibility;,
        Lcom/google/inject/internal/BytecodeGen$SystemBridgeHolder;
    }
.end annotation


# static fields
.field private static final CGLIB_PACKAGE:Ljava/lang/String; = " "

.field private static final CLASS_LOADER_CACHE:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LoadingCache<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final CUSTOM_LOADER_ENABLED:Z

.field static final GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

.field static final GUICE_INTERNAL_PACKAGE:Ljava/lang/String;

.field static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    const-class v0, Lcom/google/inject/internal/BytecodeGen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/BytecodeGen;->logger:Ljava/util/logging/Logger;

    .line 64
    const-class v0, Lcom/google/inject/internal/BytecodeGen;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/internal/BytecodeGen;->canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 72
    const-class v0, Lcom/google/inject/internal/BytecodeGen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.internal\\..*$"

    const-string v2, ".internal"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/BytecodeGen;->GUICE_INTERNAL_PACKAGE:Ljava/lang/String;

    const-string v0, "guice.custom.loader"

    const-string v1, "true"

    .line 120
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/inject/internal/BytecodeGen;->CUSTOM_LOADER_ENABLED:Z

    .line 130
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->newBuilder()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weakKeys()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->weakValues()Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    move-result-object v0

    .line 131
    sget-boolean v1, Lcom/google/inject/internal/BytecodeGen;->CUSTOM_LOADER_ENABLED:Z

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 132
    invoke-virtual {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->maximumSize(J)Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;

    .line 134
    :cond_0
    new-instance v1, Lcom/google/inject/internal/BytecodeGen$1;

    invoke-direct {v1}, Lcom/google/inject/internal/BytecodeGen$1;-><init>()V

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/cache/CacheBuilder;->build(Lorg/roboguice/shaded/goole/common/cache/CacheLoader;)Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/BytecodeGen;->CLASS_LOADER_CACHE:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    sget-object p0, Lcom/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;

    invoke-virtual {p0}, Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/inject/internal/BytecodeGen;->getClassLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p0

    return-object p0
.end method

.method private static getClassLoader(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .line 165
    sget-boolean v0, Lcom/google/inject/internal/BytecodeGen;->CUSTOM_LOADER_ENABLED:Z

    if-nez v0, :cond_0

    return-object p1

    .line 170
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    sget-object p0, Lcom/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    return-object p0

    .line 174
    :cond_1
    invoke-static {p1}, Lcom/google/inject/internal/BytecodeGen;->canonicalize(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    .line 177
    sget-object v0, Lcom/google/inject/internal/BytecodeGen;->GUICE_CLASS_LOADER:Ljava/lang/ClassLoader;

    if-eq p1, v0, :cond_5

    instance-of v0, p1, Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 182
    :cond_2
    invoke-static {p0}, Lcom/google/inject/internal/BytecodeGen$Visibility;->forType(Ljava/lang/Class;)Lcom/google/inject/internal/BytecodeGen$Visibility;

    move-result-object p0

    sget-object v0, Lcom/google/inject/internal/BytecodeGen$Visibility;->PUBLIC:Lcom/google/inject/internal/BytecodeGen$Visibility;

    if-ne p0, v0, :cond_4

    .line 183
    sget-object p0, Lcom/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;

    invoke-virtual {p0}, Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eq p1, p0, :cond_3

    .line 185
    sget-object p0, Lcom/google/inject/internal/BytecodeGen;->CLASS_LOADER_CACHE:Lorg/roboguice/shaded/goole/common/cache/LoadingCache;

    invoke-interface {p0, p1}, Lorg/roboguice/shaded/goole/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0

    .line 188
    :cond_3
    sget-object p0, Lcom/google/inject/internal/BytecodeGen$SystemBridgeHolder;->SYSTEM_BRIDGE:Lcom/google/inject/internal/BytecodeGen$BridgeClassLoader;

    return-object p0

    :cond_4
    return-object p1

    :cond_5
    :goto_0
    return-object p1
.end method
