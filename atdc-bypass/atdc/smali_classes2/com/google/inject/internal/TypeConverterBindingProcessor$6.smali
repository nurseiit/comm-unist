.class final Lcom/google/inject/internal/TypeConverterBindingProcessor$6;
.super Lcom/google/inject/matcher/AbstractMatcher;
.source "TypeConverterBindingProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToClasses(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/inject/matcher/AbstractMatcher<",
        "Lcom/google/inject/TypeLiteral<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$typeMatcher:Lcom/google/inject/matcher/Matcher;


# direct methods
.method constructor <init>(Lcom/google/inject/matcher/Matcher;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/inject/internal/TypeConverterBindingProcessor$6;->val$typeMatcher:Lcom/google/inject/matcher/Matcher;

    invoke-direct {p0}, Lcom/google/inject/matcher/AbstractMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/google/inject/TypeLiteral;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;)Z"
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Lcom/google/inject/TypeLiteral;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 144
    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_0
    check-cast p1, Ljava/lang/Class;

    .line 148
    iget-object v0, p0, Lcom/google/inject/internal/TypeConverterBindingProcessor$6;->val$typeMatcher:Lcom/google/inject/matcher/Matcher;

    invoke-interface {v0, p1}, Lcom/google/inject/matcher/Matcher;->matches(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 0

    .line 141
    check-cast p1, Lcom/google/inject/TypeLiteral;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/TypeConverterBindingProcessor$6;->matches(Lcom/google/inject/TypeLiteral;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/inject/internal/TypeConverterBindingProcessor$6;->val$typeMatcher:Lcom/google/inject/matcher/Matcher;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
