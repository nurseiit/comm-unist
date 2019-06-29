.class final Lcom/google/inject/internal/MembersInjectorImpl;
.super Ljava/lang/Object;
.source "MembersInjectorImpl.java"

# interfaces
.implements Lcom/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/MembersInjector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final injectionListeners:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/InjectionListener<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final injector:Lcom/google/inject/internal/InjectorImpl;

.field private final memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lcom/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation
.end field

.field private final typeLiteral:Lcom/google/inject/TypeLiteral;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final userMembersInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/MembersInjector<",
            "-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/TypeLiteral;Lcom/google/inject/internal/EncounterImpl;Lorg/roboguice/shaded/goole/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;",
            "Lcom/google/inject/internal/EncounterImpl<",
            "TT;>;",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lcom/google/inject/internal/SingleMemberInjector;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/inject/internal/MembersInjectorImpl;->injector:Lcom/google/inject/internal/InjectorImpl;

    .line 46
    iput-object p2, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    .line 47
    iput-object p4, p0, Lcom/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    .line 48
    invoke-virtual {p3}, Lcom/google/inject/internal/EncounterImpl;->getMembersInjectors()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/MembersInjectorImpl;->userMembersInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 49
    invoke-virtual {p3}, Lcom/google/inject/internal/EncounterImpl;->getInjectionListeners()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p1

    iput-object p1, p0, Lcom/google/inject/internal/MembersInjectorImpl;->injectionListeners:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    return-void
.end method


# virtual methods
.method public getInjectionPoints()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->builder()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/internal/SingleMemberInjector;

    .line 155
    invoke-interface {v2}, Lcom/google/inject/internal/SingleMemberInjector;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet$Builder;->build()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getMemberInjectors()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableList<",
            "Lcom/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    return-object v0
.end method

.method injectAndNotify(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/Key<",
            "TT;>;",
            "Lcom/google/inject/internal/ProvisionListenerStackCallback<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    move-object v8, p0

    .line 80
    iget-object v9, v8, Lcom/google/inject/internal/MembersInjectorImpl;->injector:Lcom/google/inject/internal/InjectorImpl;

    new-instance v10, Lcom/google/inject/internal/MembersInjectorImpl$1;

    move-object v0, v10

    move-object v1, v8

    move-object v2, p3

    move-object/from16 v3, p5

    move-object v4, p4

    move-object v5, p2

    move-object v6, p1

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/inject/internal/MembersInjectorImpl$1;-><init>(Lcom/google/inject/internal/MembersInjectorImpl;Lcom/google/inject/Key;Ljava/lang/Object;Lcom/google/inject/internal/ProvisionListenerStackCallback;Lcom/google/inject/internal/Errors;Ljava/lang/Object;Z)V

    invoke-virtual {v9, v10}, Lcom/google/inject/internal/InjectorImpl;->callInContext(Lcom/google/inject/internal/ContextualCallable;)Ljava/lang/Object;

    if-nez p6, :cond_1

    .line 111
    invoke-virtual {v8, p1, p2}, Lcom/google/inject/internal/MembersInjectorImpl;->notifyListeners(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V

    :cond_1
    return-void
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 60
    new-instance v7, Lcom/google/inject/internal/Errors;

    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-direct {v7, v0}, Lcom/google/inject/internal/Errors;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 62
    :try_start_0
    iget-object v5, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/inject/internal/MembersInjectorImpl;->injectAndNotify(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/Key;Lcom/google/inject/internal/ProvisionListenerStackCallback;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lcom/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Lcom/google/inject/internal/ErrorsException;->getErrors()Lcom/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;

    .line 67
    :goto_0
    invoke-virtual {v7}, Lcom/google/inject/internal/Errors;->throwProvisionExceptionIfErrorsExist()V

    return-void
.end method

.method injectMembers(Ljava/lang/Object;Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/inject/internal/Errors;",
            "Lcom/google/inject/internal/InternalContext;",
            "Z)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 130
    iget-object v2, p0, Lcom/google/inject/internal/MembersInjectorImpl;->memberInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    invoke-virtual {v2, v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/internal/SingleMemberInjector;

    if-eqz p4, :cond_0

    .line 131
    invoke-interface {v2}, Lcom/google/inject/internal/SingleMemberInjector;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/inject/spi/InjectionPoint;->isToolable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    :cond_0
    invoke-interface {v2, p2, p3, p1}, Lcom/google/inject/internal/SingleMemberInjector;->inject(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/InternalContext;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    .line 138
    iget-object p3, p0, Lcom/google/inject/internal/MembersInjectorImpl;->userMembersInjectors:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-virtual {p3}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/inject/MembersInjector;

    .line 140
    :try_start_0
    invoke-interface {p4, p1}, Lcom/google/inject/MembersInjector;->injectMembers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 142
    iget-object v1, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {p2, p4, v1, v0}, Lcom/google/inject/internal/Errors;->errorInUserInjector(Lcom/google/inject/MembersInjector;Lcom/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    goto :goto_1

    :cond_3
    return-void
.end method

.method notifyListeners(Ljava/lang/Object;Lcom/google/inject/internal/Errors;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/inject/internal/Errors;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 116
    invoke-virtual {p2}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    .line 117
    iget-object v1, p0, Lcom/google/inject/internal/MembersInjectorImpl;->injectionListeners:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-virtual {v1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/spi/InjectionListener;

    .line 119
    :try_start_0
    invoke-interface {v2, p1}, Lcom/google/inject/spi/InjectionListener;->afterInjection(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 121
    iget-object v4, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {p2, v2, v4, v3}, Lcom/google/inject/internal/Errors;->errorNotifyingInjectionListener(Lcom/google/inject/spi/InjectionListener;Lcom/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/inject/internal/Errors;->throwIfNewErrors(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MembersInjector<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/inject/internal/MembersInjectorImpl;->typeLiteral:Lcom/google/inject/TypeLiteral;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
