.class public Lcom/google/inject/NoOpAnnotatedBindingBuilder;
.super Ljava/lang/Object;
.source "NoOpAnnotatedBindingBuilder.java"

# interfaces
.implements Lcom/google/inject/binder/AnnotatedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpScopedBindingBuilder;,
        Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/binder/AnnotatedBindingBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private noOpLinkedBindingBuilder:Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/NoOpAnnotatedBindingBuilder<",
            "TT;>.NoOp",
            "LinkedBindingBuilder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpScopedBindingBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpScopedBindingBuilder;-><init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder$1;)V

    iput-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    .line 17
    new-instance v0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;

    invoke-direct {v0, p0, v1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;-><init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder;Lcom/google/inject/NoOpAnnotatedBindingBuilder$1;)V

    iput-object v0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->noOpLinkedBindingBuilder:Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;

    return-void
.end method

.method static synthetic access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p0
.end method


# virtual methods
.method public annotatedWith(Ljava/lang/Class;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/binder/LinkedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 21
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->noOpLinkedBindingBuilder:Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;

    return-object p1
.end method

.method public annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/google/inject/binder/LinkedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/google/inject/binder/LinkedBindingBuilder<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method

.method public asEagerSingleton()V
    .locals 0

    return-void
.end method

.method public in(Lcom/google/inject/Scope;)V
    .locals 0

    return-void
.end method

.method public in(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public to(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "+TT;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p1
.end method

.method public to(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "+TT;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 36
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p1
.end method

.method public to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 31
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p1
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p1
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;",
            "Lcom/google/inject/TypeLiteral<",
            "+TS;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 76
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p1
.end method

.method public toInstance(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public toProvider(Lcom/google/inject/Key;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 66
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p1
.end method

.method public toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider<",
            "+TT;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p1
.end method

.method public toProvider(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 61
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p1
.end method

.method public toProvider(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 56
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p1
.end method

.method public toProvider(Ljavax/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+TT;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 96
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->scopedBindingBuilder:Lcom/google/inject/binder/ScopedBindingBuilder;

    return-object p1
.end method
