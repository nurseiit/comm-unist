.class final Lcom/google/inject/internal/EncounterImpl;
.super Ljava/lang/Object;
.source "EncounterImpl.java"

# interfaces
.implements Lcom/google/inject/spi/TypeEncounter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/spi/TypeEncounter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final errors:Lcom/google/inject/internal/Errors;

.field private injectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/spi/InjectionListener<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private final lookups:Lcom/google/inject/internal/Lookups;

.field private membersInjectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/MembersInjector<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private valid:Z


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;Lcom/google/inject/internal/Lookups;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    .line 52
    iput-object p1, p0, Lcom/google/inject/internal/EncounterImpl;->errors:Lcom/google/inject/internal/Errors;

    .line 53
    iput-object p2, p0, Lcom/google/inject/internal/EncounterImpl;->lookups:Lcom/google/inject/internal/Lookups;

    return-void
.end method


# virtual methods
.method public addError(Lcom/google/inject/spi/Message;)V
    .locals 2

    .line 123
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, p1}, Lcom/google/inject/internal/Errors;->addMessage(Lcom/google/inject/spi/Message;)Lcom/google/inject/internal/Errors;

    return-void
.end method

.method public varargs addError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 113
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->errors:Lcom/google/inject/internal/Errors;

    invoke-virtual {v0, p1, p2}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    return-void
.end method

.method public addError(Ljava/lang/Throwable;)V
    .locals 5

    .line 118
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->errors:Lcom/google/inject/internal/Errors;

    const-string v1, "An exception was caught and reported. Message: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    return-void
.end method

.method getInjectionListeners()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/spi/InjectionListener<",
            "-TT;>;>;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 137
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->lookups:Lcom/google/inject/internal/Lookups;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/Lookups;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/google/inject/MembersInjector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lcom/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/google/inject/TypeLiteral;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/EncounterImpl;->getMembersInjector(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/MembersInjector;

    move-result-object p1

    return-object p1
.end method

.method getMembersInjectors()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet<",
            "Lcom/google/inject/MembersInjector<",
            "-TT;>;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/Key<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 128
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->lookups:Lcom/google/inject/internal/Lookups;

    invoke-interface {v0, p1}, Lcom/google/inject/internal/Lookups;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/google/inject/Provider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/google/inject/Key;->get(Ljava/lang/Class;)Lcom/google/inject/Key;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/EncounterImpl;->getProvider(Lcom/google/inject/Key;)Lcom/google/inject/Provider;

    move-result-object p1

    return-object p1
.end method

.method invalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    return-void
.end method

.method public register(Lcom/google/inject/MembersInjector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/MembersInjector<",
            "-TT;>;)V"
        }
    .end annotation

    .line 93
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->membersInjectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public register(Lcom/google/inject/spi/InjectionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InjectionListener<",
            "-TT;>;)V"
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/google/inject/internal/EncounterImpl;->valid:Z

    const-string v1, "Encounters may not be used after hear() returns."

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/EncounterImpl;->injectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
