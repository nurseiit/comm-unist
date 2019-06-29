.class Lcom/google/inject/internal/InjectorShell$InjectorFactory;
.super Ljava/lang/Object;
.source "InjectorShell.java"

# interfaces
.implements Lcom/google/inject/internal/InternalFactory;
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/internal/InjectorShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InjectorFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/inject/internal/InternalFactory<",
        "Lcom/google/inject/Injector;",
        ">;",
        "Lcom/google/inject/Provider<",
        "Lcom/google/inject/Injector;",
        ">;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/google/inject/Injector;


# direct methods
.method private constructor <init>(Lcom/google/inject/Injector;)V
    .locals 0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lcom/google/inject/internal/InjectorShell$InjectorFactory;->injector:Lcom/google/inject/Injector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/Injector;Lcom/google/inject/internal/InjectorShell$1;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/google/inject/internal/InjectorShell$InjectorFactory;-><init>(Lcom/google/inject/Injector;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/inject/Injector;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/inject/internal/InjectorShell$InjectorFactory;->injector:Lcom/google/inject/Injector;

    return-object v0
.end method

.method public get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Lcom/google/inject/Injector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Lcom/google/inject/spi/Dependency<",
            "*>;Z)",
            "Lcom/google/inject/Injector;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 231
    iget-object p1, p0, Lcom/google/inject/internal/InjectorShell$InjectorFactory;->injector:Lcom/google/inject/Injector;

    return-object p1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/google/inject/internal/InjectorShell$InjectorFactory;->get()Lcom/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 222
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/inject/internal/InjectorShell$InjectorFactory;->get(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Lcom/google/inject/spi/Dependency;Z)Lcom/google/inject/Injector;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Provider<Injector>"

    return-object v0
.end method
