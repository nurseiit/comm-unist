.class Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;
.super Ljava/lang/Object;
.source "NoOpAnnotatedBindingBuilder.java"

# interfaces
.implements Lcom/google/inject/binder/LinkedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/NoOpAnnotatedBindingBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoOpLinkedBindingBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/binder/LinkedBindingBuilder<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;


# direct methods
.method private constructor <init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder;Lcom/google/inject/NoOpAnnotatedBindingBuilder$1;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;-><init>(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)V

    return-void
.end method


# virtual methods
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
            "+TU;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public to(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "+TU;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 107
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/Class;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TU;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 102
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TU;>(",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 142
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toConstructor(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TU;>(",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;",
            "Lcom/google/inject/TypeLiteral<",
            "+TS;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 147
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toInstance(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
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
            "+TU;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 137
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toProvider(Lcom/google/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Provider<",
            "+TU;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 122
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

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
            "+TU;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 132
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

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
            "+TU;>;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 127
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    return-object p1
.end method

.method public toProvider(Ljavax/inject/Provider;)Lcom/google/inject/binder/ScopedBindingBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "+TU;>;)",
            "Lcom/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation

    .line 167
    iget-object p1, p0, Lcom/google/inject/NoOpAnnotatedBindingBuilder$NoOpLinkedBindingBuilder;->this$0:Lcom/google/inject/NoOpAnnotatedBindingBuilder;

    invoke-static {p1}, Lcom/google/inject/NoOpAnnotatedBindingBuilder;->access$200(Lcom/google/inject/NoOpAnnotatedBindingBuilder;)Lcom/google/inject/binder/ScopedBindingBuilder;

    move-result-object p1

    return-object p1
.end method
