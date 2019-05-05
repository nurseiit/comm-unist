.class final Lcom/google/inject/internal/TypeConverterBindingProcessor;
.super Lcom/google/inject/internal/AbstractProcessor;
.source "TypeConverterBindingProcessor.java"


# direct methods
.method constructor <init>(Lcom/google/inject/internal/Errors;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/inject/internal/AbstractProcessor;-><init>(Lcom/google/inject/internal/Errors;)V

    return-void
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 171
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 175
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static convertToClass(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Lcom/google/inject/spi/TypeConverter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 136
    invoke-static {p1}, Lcom/google/inject/matcher/Matchers;->identicalTo(Ljava/lang/Object;)Lcom/google/inject/matcher/Matcher;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToClasses(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    return-void
.end method

.method private static convertToClasses(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lcom/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 141
    new-instance v0, Lcom/google/inject/internal/TypeConverterBindingProcessor$6;

    invoke-direct {v0, p1}, Lcom/google/inject/internal/TypeConverterBindingProcessor$6;-><init>(Lcom/google/inject/matcher/Matcher;)V

    invoke-static {p0, v0, p2}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->internalConvertToTypes(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    return-void
.end method

.method private static convertToPrimitiveType(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 108
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 111
    new-instance v0, Lcom/google/inject/internal/TypeConverterBindingProcessor$5;

    invoke-direct {v0, p1, p2}, Lcom/google/inject/internal/TypeConverterBindingProcessor$5;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 128
    invoke-static {p0, p2, v0}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToClass(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Lcom/google/inject/spi/TypeConverter;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 130
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private static internalConvertToTypes(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/internal/InjectorImpl;",
            "Lcom/google/inject/matcher/Matcher<",
            "-",
            "Lcom/google/inject/TypeLiteral<",
            "*>;>;",
            "Lcom/google/inject/spi/TypeConverter;",
            ")V"
        }
    .end annotation

    .line 160
    iget-object p0, p0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    new-instance v0, Lcom/google/inject/spi/TypeConverterBinding;

    sget-object v1, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/inject/spi/TypeConverterBinding;-><init>(Ljava/lang/Object;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    invoke-interface {p0, v0}, Lcom/google/inject/internal/State;->addConverter(Lcom/google/inject/spi/TypeConverterBinding;)V

    return-void
.end method

.method static prepareBuiltInConverters(Lcom/google/inject/internal/InjectorImpl;)V
    .locals 2

    .line 46
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    invoke-static {p0, v0, v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 47
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Long;

    invoke-static {p0, v0, v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 48
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {p0, v0, v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 49
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    invoke-static {p0, v0, v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 50
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Short;

    invoke-static {p0, v0, v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 51
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    invoke-static {p0, v0, v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 52
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    invoke-static {p0, v0, v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToPrimitiveType(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 54
    const-class v0, Ljava/lang/Character;

    new-instance v1, Lcom/google/inject/internal/TypeConverterBindingProcessor$1;

    invoke-direct {v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor$1;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToClass(Lcom/google/inject/internal/InjectorImpl;Ljava/lang/Class;Lcom/google/inject/spi/TypeConverter;)V

    .line 68
    const-class v0, Ljava/lang/Enum;

    invoke-static {v0}, Lcom/google/inject/matcher/Matchers;->subclassesOf(Ljava/lang/Class;)Lcom/google/inject/matcher/Matcher;

    move-result-object v0

    new-instance v1, Lcom/google/inject/internal/TypeConverterBindingProcessor$2;

    invoke-direct {v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor$2;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->convertToClasses(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    .line 79
    new-instance v0, Lcom/google/inject/internal/TypeConverterBindingProcessor$3;

    invoke-direct {v0}, Lcom/google/inject/internal/TypeConverterBindingProcessor$3;-><init>()V

    new-instance v1, Lcom/google/inject/internal/TypeConverterBindingProcessor$4;

    invoke-direct {v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor$4;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->internalConvertToTypes(Lcom/google/inject/internal/InjectorImpl;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/inject/spi/TypeConverterBinding;)Ljava/lang/Boolean;
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/google/inject/internal/TypeConverterBindingProcessor;->injector:Lcom/google/inject/internal/InjectorImpl;

    iget-object v0, v0, Lcom/google/inject/internal/InjectorImpl;->state:Lcom/google/inject/internal/State;

    new-instance v1, Lcom/google/inject/spi/TypeConverterBinding;

    invoke-virtual {p1}, Lcom/google/inject/spi/TypeConverterBinding;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/inject/spi/TypeConverterBinding;->getTypeMatcher()Lcom/google/inject/matcher/Matcher;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/inject/spi/TypeConverterBinding;->getTypeConverter()Lcom/google/inject/spi/TypeConverter;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, Lcom/google/inject/spi/TypeConverterBinding;-><init>(Ljava/lang/Object;Lcom/google/inject/matcher/Matcher;Lcom/google/inject/spi/TypeConverter;)V

    invoke-interface {v0, v1}, Lcom/google/inject/internal/State;->addConverter(Lcom/google/inject/spi/TypeConverterBinding;)V

    const/4 p1, 0x1

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lcom/google/inject/spi/TypeConverterBinding;)Ljava/lang/Object;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/google/inject/internal/TypeConverterBindingProcessor;->visit(Lcom/google/inject/spi/TypeConverterBinding;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
