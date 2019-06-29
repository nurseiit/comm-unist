.class public final Lcom/google/inject/internal/Errors;
.super Ljava/lang/Object;
.source "Errors.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/internal/Errors$Converter;
    }
.end annotation


# static fields
.field private static final CONSTRUCTOR_RULES:Ljava/lang/String; = "Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private."

.field private static final converters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/inject/internal/Errors$Converter<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/inject/internal/Errors;

.field private final root:Lcom/google/inject/internal/Errors;

.field private final source:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 653
    new-instance v0, Lcom/google/inject/internal/Errors$2;

    const-class v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/google/inject/internal/Errors$2;-><init>(Ljava/lang/Class;)V

    new-instance v1, Lcom/google/inject/internal/Errors$3;

    const-class v2, Ljava/lang/reflect/Member;

    invoke-direct {v1, v2}, Lcom/google/inject/internal/Errors$3;-><init>(Ljava/lang/Class;)V

    new-instance v2, Lcom/google/inject/internal/Errors$4;

    const-class v3, Lcom/google/inject/Key;

    invoke-direct {v2, v3}, Lcom/google/inject/internal/Errors$4;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, v1, v2}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/google/inject/internal/Errors;->converters:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/google/inject/internal/Errors;->parent:Lcom/google/inject/internal/Errors;

    .line 98
    sget-object v0, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/inject/internal/Errors;Ljava/lang/Object;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget-object v0, p1, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iput-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    .line 109
    iput-object p1, p0, Lcom/google/inject/internal/Errors;->parent:Lcom/google/inject/internal/Errors;

    .line 110
    iput-object p2, p0, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/google/inject/internal/Errors;->parent:Lcom/google/inject/internal/Errors;

    .line 104
    iput-object p1, p0, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    return-void
.end method

.method private varargs addMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 1

    .line 521
    invoke-static {p2, p3}, Lcom/google/inject/internal/Errors;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 522
    new-instance p3, Lcom/google/inject/spi/Message;

    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->getSources()Ljava/util/List;

    move-result-object v0

    invoke-direct {p3, v0, p2, p1}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p3}, Lcom/google/inject/internal/Errors;->addMessage(Lcom/google/inject/spi/Message;)Lcom/google/inject/internal/Errors;

    return-object p0
.end method

.method private static appendModules(Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)Ljava/lang/Object;
    .locals 1

    .line 694
    invoke-static {p1}, Lcom/google/inject/internal/Errors;->moduleSourceString(Lcom/google/inject/spi/ElementSource;)Ljava/lang/String;

    move-result-object p1

    .line 695
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 698
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 677
    instance-of v0, p0, Lcom/google/inject/spi/ElementSource;

    if-eqz v0, :cond_0

    .line 678
    check-cast p0, Lcom/google/inject/spi/ElementSource;

    .line 679
    invoke-virtual {p0}, Lcom/google/inject/spi/ElementSource;->getDeclaringSource()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    move-object v0, p0

    move-object p0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 681
    :goto_0
    invoke-static {p0, v0}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static convert(Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)Ljava/lang/Object;
    .locals 3

    .line 685
    sget-object v0, Lcom/google/inject/internal/Errors;->converters:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/inject/internal/Errors$Converter;

    .line 686
    invoke-virtual {v1, p0}, Lcom/google/inject/internal/Errors$Converter;->appliesTo(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-virtual {v1, p0}, Lcom/google/inject/internal/Errors$Converter;->convert(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/inject/internal/Errors;->appendModules(Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 690
    :cond_1
    invoke-static {p0, p1}, Lcom/google/inject/internal/Errors;->appendModules(Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static format(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/google/inject/spi/Message;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 556
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    const-string v0, ":%n%n"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .line 558
    invoke-static {p1}, Lcom/google/inject/internal/Errors;->getOnlyCause(Ljava/util/Collection;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 560
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/inject/spi/Message;

    const-string v6, "%s) %s%n"

    const/4 v7, 0x2

    .line 561
    new-array v7, v7, [Ljava/lang/Object;

    add-int/lit8 v8, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-virtual {v5}, Lcom/google/inject/spi/Message;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    invoke-virtual {p0, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 563
    invoke-virtual {v5}, Lcom/google/inject/spi/Message;->getSources()Ljava/util/List;

    move-result-object v4

    .line 564
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    :goto_2
    if-ltz v6, :cond_1

    .line 565
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 566
    invoke-static {p0, v7}, Lcom/google/inject/internal/Errors;->formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 569
    :cond_1
    invoke-virtual {v5}, Lcom/google/inject/spi/Message;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    .line 571
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 572
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string v4, "Caused by: %s"

    .line 573
    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v5

    aput-object v5, v6, v1

    invoke-virtual {p0, v4, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :cond_2
    const-string v4, "%n"

    .line 576
    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v4, v8

    goto :goto_1

    .line 579
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    const-string p1, "1 error"

    .line 580
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_3

    :cond_4
    const-string v0, "%s errors"

    .line 582
    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 585
    :goto_3
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 535
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 536
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatInjectionPoint(Ljava/util/Formatter;Lcom/google/inject/spi/Dependency;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/spi/ElementSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Formatter;",
            "Lcom/google/inject/spi/Dependency<",
            "*>;",
            "Lcom/google/inject/spi/InjectionPoint;",
            "Lcom/google/inject/spi/ElementSource;",
            ")V"
        }
    .end annotation

    .line 777
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    .line 778
    invoke-static {v0}, Lcom/google/inject/internal/util/Classes;->memberType(Ljava/lang/reflect/Member;)Ljava/lang/Class;

    move-result-object v1

    .line 780
    const-class v2, Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    .line 781
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getDependencies()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/inject/spi/Dependency;

    const-string p2, "  while locating %s%n"

    .line 782
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, p2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string p1, "    for field at %s%n"

    .line 783
    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/inject/internal/util/StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object p3

    aput-object p3, p2, v4

    invoke-virtual {p0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string p2, "  while locating %s%n"

    .line 786
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)Ljava/lang/Object;

    move-result-object p3

    aput-object p3, v1, v4

    invoke-virtual {p0, p2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    const-string p2, "    for parameter %s at %s%n"

    const/4 p3, 0x2

    .line 787
    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getParameterIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v4

    invoke-static {v0}, Lcom/google/inject/internal/util/StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p3, v3

    invoke-virtual {p0, p2, p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 791
    :cond_1
    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/inject/internal/Errors;->formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static formatSource(Ljava/util/Formatter;Ljava/lang/Object;)V
    .locals 2

    .line 736
    instance-of v0, p1, Lcom/google/inject/spi/ElementSource;

    if-eqz v0, :cond_0

    .line 737
    check-cast p1, Lcom/google/inject/spi/ElementSource;

    .line 738
    invoke-virtual {p1}, Lcom/google/inject/spi/ElementSource;->getDeclaringSource()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 740
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/google/inject/internal/Errors;->formatSource(Ljava/util/Formatter;Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)V

    return-void
.end method

.method public static formatSource(Ljava/util/Formatter;Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)V
    .locals 5

    .line 744
    invoke-static {p2}, Lcom/google/inject/internal/Errors;->moduleSourceString(Lcom/google/inject/spi/ElementSource;)Ljava/lang/String;

    move-result-object v0

    .line 745
    instance-of v1, p1, Lcom/google/inject/spi/Dependency;

    if-eqz v1, :cond_1

    .line 746
    check-cast p1, Lcom/google/inject/spi/Dependency;

    .line 747
    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 749
    invoke-static {p0, p1, v0, p2}, Lcom/google/inject/internal/Errors;->formatInjectionPoint(Ljava/util/Formatter;Lcom/google/inject/spi/Dependency;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/spi/ElementSource;)V

    goto/16 :goto_0

    .line 751
    :cond_0
    invoke-virtual {p1}, Lcom/google/inject/spi/Dependency;->getKey()Lcom/google/inject/Key;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/google/inject/internal/Errors;->formatSource(Ljava/util/Formatter;Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)V

    goto :goto_0

    .line 754
    :cond_1
    instance-of v1, p1, Lcom/google/inject/spi/InjectionPoint;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 755
    check-cast p1, Lcom/google/inject/spi/InjectionPoint;

    invoke-static {p0, v0, p1, p2}, Lcom/google/inject/internal/Errors;->formatInjectionPoint(Ljava/util/Formatter;Lcom/google/inject/spi/Dependency;Lcom/google/inject/spi/InjectionPoint;Lcom/google/inject/spi/ElementSource;)V

    goto :goto_0

    .line 757
    :cond_2
    instance-of v1, p1, Ljava/lang/Class;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    const-string p2, "  at %s%s%n"

    .line 758
    new-array v1, v2, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/inject/internal/util/StackTraceElements;->forType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v4

    aput-object v0, v1, v3

    invoke-virtual {p0, p2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 760
    :cond_3
    instance-of v1, p1, Ljava/lang/reflect/Member;

    if-eqz v1, :cond_4

    const-string p2, "  at %s%s%n"

    .line 761
    new-array v1, v2, [Ljava/lang/Object;

    check-cast p1, Ljava/lang/reflect/Member;

    invoke-static {p1}, Lcom/google/inject/internal/util/StackTraceElements;->forMember(Ljava/lang/reflect/Member;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v4

    aput-object v0, v1, v3

    invoke-virtual {p0, p2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 763
    :cond_4
    instance-of v1, p1, Lcom/google/inject/TypeLiteral;

    if-eqz v1, :cond_5

    const-string p2, "  while locating %s%s%n"

    .line 764
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object v0, v1, v3

    invoke-virtual {p0, p2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    .line 766
    :cond_5
    instance-of v1, p1, Lcom/google/inject/Key;

    if-eqz v1, :cond_6

    .line 767
    check-cast p1, Lcom/google/inject/Key;

    const-string v0, "  while locating %s%n"

    .line 768
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;Lcom/google/inject/spi/ElementSource;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-virtual {p0, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_6
    const-string p2, "  at %s%s%n"

    .line 771
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object v0, v1, v3

    invoke-virtual {p0, p2, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_0
    return-void
.end method

.method public static getMessagesFromThrowable(Ljava/lang/Throwable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/google/inject/spi/Message;",
            ">;"
        }
    .end annotation

    .line 386
    instance-of v0, p0, Lcom/google/inject/ProvisionException;

    if-eqz v0, :cond_0

    .line 387
    check-cast p0, Lcom/google/inject/ProvisionException;

    invoke-virtual {p0}, Lcom/google/inject/ProvisionException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 388
    :cond_0
    instance-of v0, p0, Lcom/google/inject/ConfigurationException;

    if-eqz v0, :cond_1

    .line 389
    check-cast p0, Lcom/google/inject/ConfigurationException;

    invoke-virtual {p0}, Lcom/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 390
    :cond_1
    instance-of v0, p0, Lcom/google/inject/CreationException;

    if-eqz v0, :cond_2

    .line 391
    check-cast p0, Lcom/google/inject/CreationException;

    invoke-virtual {p0}, Lcom/google/inject/CreationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 393
    :cond_2
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static getOnlyCause(Ljava/util/Collection;)Ljava/lang/Throwable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/inject/spi/Message;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 614
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/inject/spi/Message;

    .line 615
    invoke-virtual {v2}, Lcom/google/inject/spi/Message;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private merge(Lcom/google/inject/spi/Message;)Lcom/google/inject/spi/Message;
    .locals 3

    .line 468
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 469
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->getSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 470
    invoke-virtual {p1}, Lcom/google/inject/spi/Message;->getSources()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 471
    new-instance v1, Lcom/google/inject/spi/Message;

    invoke-virtual {p1}, Lcom/google/inject/spi/Message;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/inject/spi/Message;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v1, v0, v2, p1}, Lcom/google/inject/spi/Message;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static moduleSourceString(Lcom/google/inject/spi/ElementSource;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/spi/ElementSource;->getModuleClassNames()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 710
    :goto_0
    invoke-virtual {p0}, Lcom/google/inject/spi/ElementSource;->getOriginalElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 711
    invoke-virtual {p0}, Lcom/google/inject/spi/ElementSource;->getOriginalElementSource()Lcom/google/inject/spi/ElementSource;

    move-result-object p0

    const/4 v1, 0x0

    .line 712
    invoke-virtual {p0}, Lcom/google/inject/spi/ElementSource;->getModuleClassNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 714
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_2

    const-string p0, ""

    return-object p0

    .line 723
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, " (via modules: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 724
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_4

    .line 725
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    const-string v1, " -> "

    .line 727
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    const-string v0, ")"

    .line 730
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private unwrap(Ljava/lang/RuntimeException;)Ljava/lang/Throwable;
    .locals 1

    .line 408
    instance-of v0, p1, Lcom/google/inject/internal/Exceptions$UnhandledCheckedUserException;

    if-eqz v0, :cond_0

    .line 409
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addMessage(Lcom/google/inject/spi/Message;)Lcom/google/inject/internal/Errors;
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 1

    const/4 v0, 0x0

    .line 517
    invoke-direct {p0, v0, p1, p2}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public ambiguousTypeConversion(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;Lcom/google/inject/spi/TypeConverterBinding;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Multiple converters can convert \'%s\' (bound at %s) to %s:%n %s and%n %s.%n Please adjust your type converter configuration to avoid overlapping matches."

    const/4 v1, 0x5

    .line 175
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const/4 p1, 0x4

    aput-object p5, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public atInjectRequired(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "Explicit @Inject annotations are required on constructors, but %s has no constructors annotated with @Inject."

    const/4 v1, 0x1

    .line 144
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public bindingAlreadySet(Lcom/google/inject/Key;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "A binding to %s was already configured at %s."

    const/4 v1, 0x2

    .line 308
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public bindingToProvider()Lcom/google/inject/internal/Errors;
    .locals 2

    const-string v0, "Binding to Provider is not allowed."

    const/4 v1, 0x0

    .line 183
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotBindToGuiceType(Ljava/lang/String;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "Binding to core guice framework type is not allowed: %s."

    const/4 v1, 0x1

    .line 217
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectAbstractMethod(Ljava/lang/reflect/Method;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "Injected method %s cannot be abstract."

    const/4 v1, 0x1

    .line 287
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectFinalField(Ljava/lang/reflect/Field;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "Injected field %s cannot be final."

    const/4 v1, 0x1

    .line 283
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectInnerClass(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Injecting into inner classes is not supported.  Please use a \'static\' class (top-level or nested) instead of %s."

    const/4 v1, 0x1

    .line 268
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectMethodWithTypeParameters(Ljava/lang/reflect/Method;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "Injected method %s cannot declare type parameters of its own."

    const/4 v1, 0x1

    .line 295
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectNonVoidMethod(Ljava/lang/reflect/Method;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "Injected method %s must return void."

    const/4 v1, 0x1

    .line 291
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotInjectRawMembersInjector()Lcom/google/inject/internal/Errors;
    .locals 2

    const-string v0, "Cannot inject a MembersInjector that has no type parameter"

    const/4 v1, 0x0

    .line 420
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectRawProvider()Lcom/google/inject/internal/Errors;
    .locals 2

    const-string v0, "Cannot inject a Provider that has no type parameter"

    const/4 v1, 0x0

    .line 416
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectRawTypeLiteral()Lcom/google/inject/internal/Errors;
    .locals 2

    const-string v0, "Cannot inject a TypeLiteral that has no type parameter"

    const/4 v1, 0x0

    .line 428
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public cannotInjectTypeLiteralOf(Ljava/lang/reflect/Type;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "Cannot inject a TypeLiteral of %s"

    const/4 v1, 0x1

    .line 424
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public cannotSatisfyCircularDependency(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Tried proxying %s to support a circular dependency, but it is not an interface."

    const/4 v1, 0x1

    .line 432
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public checkForNull(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/inject/spi/Dependency;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/spi/Dependency<",
            "*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    if-nez p1, :cond_2

    .line 594
    invoke-virtual {p3}, Lcom/google/inject/spi/Dependency;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 598
    :cond_0
    invoke-virtual {p3}, Lcom/google/inject/spi/Dependency;->getParameterIndex()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const-string v0, "null returned by binding at %s%n but %s%s is not @Nullable"

    const/4 v1, 0x3

    .line 602
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    invoke-virtual {p3}, Lcom/google/inject/spi/Dependency;->getInjectionPoint()Lcom/google/inject/spi/InjectionPoint;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/inject/spi/InjectionPoint;->getMember()Ljava/lang/reflect/Member;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    .line 605
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_1
    return-object p1
.end method

.method public childBindingAlreadySet(Lcom/google/inject/Key;Ljava/util/Set;)Lcom/google/inject/internal/Errors;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 317
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "%n    (bound by a just-in-time binding)"

    .line 319
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_0
    const-string v4, "%n    bound at %s"

    .line 321
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_0

    :cond_1
    const-string p2, "Unable to create binding for %s. It was already configured on one or more child injectors or private modules%s%n  If it was in a PrivateModule, did you forget to expose the binding?"

    const/4 v1, 0x2

    .line 324
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {v0}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public circularProxiesDisabled(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Tried proxying %s to support a circular dependency, but circular proxies are disabled."

    const/4 v1, 0x1

    .line 438
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public constructorNotDefinedByType(Ljava/lang/reflect/Constructor;Lcom/google/inject/TypeLiteral;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lcom/google/inject/TypeLiteral<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "%s does not define %s"

    const/4 v1, 0x2

    .line 250
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public conversionError(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Error converting \'%s\' (bound at %s) to %s%n using %s.%n Reason: %s"

    const/4 v1, 0x5

    .line 167
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const/4 p1, 0x4

    aput-object p5, v1, p1

    invoke-virtual {p0, p5, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public conversionTypeError(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Type mismatch converting \'%s\' (bound at %s) to %s%n using %s.%n Converter returned %s."

    const/4 v1, 0x5

    .line 159
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    const/4 p1, 0x4

    aput-object p5, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public converterReturnedNull(Ljava/lang/String;Ljava/lang/Object;Lcom/google/inject/TypeLiteral;Lcom/google/inject/spi/TypeConverterBinding;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Lcom/google/inject/spi/TypeConverterBinding;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Received null converting \'%s\' (bound at %s) to %s%n using %s."

    const/4 v1, 0x4

    .line 152
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const/4 p1, 0x3

    aput-object p4, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public duplicateBindingAnnotations(Ljava/lang/reflect/Member;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "%s has more than one annotation annotated with @BindingAnnotation: %s and %s"

    const/4 v1, 0x3

    .line 274
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public duplicateScopeAnnotations(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "More than one scope annotation was found: %s and %s."

    const/4 v1, 0x2

    .line 300
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public duplicateScopes(Lcom/google/inject/spi/ScopeBinding;Ljava/lang/Class;Lcom/google/inject/Scope;)Lcom/google/inject/internal/Errors;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/ScopeBinding;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/google/inject/Scope;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Scope %s is already bound to %s at %s.%n Cannot bind %s."

    const/4 v1, 0x4

    .line 255
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getScope()Lcom/google/inject/Scope;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {p1}, Lcom/google/inject/spi/ScopeBinding;->getSource()Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    const/4 p1, 0x3

    aput-object p3, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorCheckingDuplicateBinding(Lcom/google/inject/Key;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "A binding to %s was already configured at %s and an error was thrown while checking duplicate bindings.  Error: %s"

    const/4 v1, 0x3

    .line 334
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorEnhancingClass(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Unable to method intercept: %s"

    const/4 v1, 0x1

    .line 382
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorInProvider(Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;
    .locals 3

    .line 357
    invoke-direct {p0, p1}, Lcom/google/inject/internal/Errors;->unwrap(Ljava/lang/RuntimeException;)Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "Error in custom provider, %s"

    const/4 v1, 0x1

    .line 358
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public varargs errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 2

    .line 398
    invoke-static {p1}, Lcom/google/inject/internal/Errors;->getMessagesFromThrowable(Ljava/lang/Throwable;)Ljava/util/Collection;

    move-result-object v0

    .line 400
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    invoke-virtual {p0, v0}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1

    .line 403
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorInUserInjector(Lcom/google/inject/MembersInjector;Lcom/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/MembersInjector<",
            "*>;",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Error injecting %s using %s.%n Reason: %s"

    const/4 v1, 0x3

    .line 363
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorInjectingConstructor(Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "Error injecting constructor, %s"

    const/4 v1, 0x1

    .line 353
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorInjectingMethod(Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "Error injecting method, %s"

    const/4 v1, 0x1

    .line 341
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorNotifyingInjectionListener(Lcom/google/inject/spi/InjectionListener;Lcom/google/inject/TypeLiteral;Ljava/lang/RuntimeException;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/InjectionListener<",
            "*>;",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/RuntimeException;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Error notifying InjectionListener %s of %s.%n Reason: %s"

    const/4 v1, 0x3

    .line 369
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public errorNotifyingTypeListener(Lcom/google/inject/spi/TypeListenerBinding;Lcom/google/inject/TypeLiteral;Ljava/lang/Throwable;)Lcom/google/inject/internal/Errors;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/spi/TypeListenerBinding;",
            "Lcom/google/inject/TypeLiteral<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Error notifying TypeListener %s (bound at %s) of %s.%n Reason: %s"

    const/4 v1, 0x4

    .line 346
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/inject/spi/TypeListenerBinding;->getListener()Lcom/google/inject/spi/TypeListener;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/google/inject/spi/TypeListenerBinding;->getSource()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p3, v1, p1

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/inject/internal/Errors;->errorInUserCode(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public exposedButNotBound(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Could not expose() %s, it must be explicitly bound."

    const/4 v1, 0x1

    .line 374
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public getMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/inject/spi/Message;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 543
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/ImmutableList;->of()Lorg/roboguice/shaded/goole/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    .line 546
    :cond_0
    new-instance v0, Lcom/google/inject/internal/Errors$1;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/Errors$1;-><init>(Lcom/google/inject/internal/Errors;)V

    iget-object v1, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v1, v1, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/inject/internal/Errors$1;->sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 491
    invoke-static {}, Lorg/roboguice/shaded/goole/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_1

    .line 493
    iget-object v2, v1, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    sget-object v3, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    .line 494
    iget-object v3, v1, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 492
    :cond_0
    iget-object v1, v1, Lcom/google/inject/internal/Errors;->parent:Lcom/google/inject/internal/Errors;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hasErrors()Z
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jitBindingAlreadySet(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/Key<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "A just-in-time binding to %s was already configured on a parent injector."

    const/4 v1, 0x1

    .line 312
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public jitDisabled(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "Explicit bindings are required and %s is not explicitly bound."

    const/4 v1, 0x1

    .line 140
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public keyNotFullySpecified(Lcom/google/inject/TypeLiteral;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/TypeLiteral<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "%s cannot be used as a key; It is not fully specified."

    const/4 v1, 0x1

    .line 378
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public merge(Lcom/google/inject/internal/Errors;)Lcom/google/inject/internal/Errors;
    .locals 2

    .line 482
    iget-object v0, p1, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    iget-object p1, p1, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object p1, p1, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;

    return-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public merge(Ljava/util/Collection;)Lcom/google/inject/internal/Errors;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/inject/spi/Message;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    .line 475
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/spi/Message;

    .line 476
    invoke-direct {p0, v0}, Lcom/google/inject/internal/Errors;->merge(Lcom/google/inject/spi/Message;)Lcom/google/inject/spi/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/internal/Errors;->addMessage(Lcom/google/inject/spi/Message;)Lcom/google/inject/internal/Errors;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public misplacedBindingAnnotation(Ljava/lang/reflect/Member;Ljava/lang/annotation/Annotation;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "%s is annotated with %s, but binding annotations should be applied to its parameters instead."

    const/4 v1, 0x2

    .line 231
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public missingConstantValues()Lcom/google/inject/internal/Errors;
    .locals 2

    const-string v0, "Missing constant value. Please call to(...)."

    const/4 v1, 0x0

    .line 264
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public missingConstructor(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Could not find a suitable constructor in %s. Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private."

    const/4 v1, 0x1

    .line 240
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public missingImplementation(Lcom/google/inject/Key;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "No implementation for %s was bound."

    const/4 v1, 0x1

    .line 136
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public missingRuntimeRetention(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Please annotate %s with @Retention(RUNTIME)."

    const/4 v1, 0x1

    .line 204
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/inject/internal/Errors;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public missingScopeAnnotation(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "Please annotate %s with @ScopeAnnotation."

    const/4 v1, 0x1

    .line 208
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/inject/internal/Errors;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public notASubtype(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "%s doesn\'t extend %s."

    const/4 v1, 0x2

    .line 192
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public optionalConstructor(Ljava/lang/reflect/Constructor;)Lcom/google/inject/internal/Errors;
    .locals 3

    const-string v0, "%s is annotated @Inject(optional=true), but constructors cannot be optional."

    const/4 v1, 0x1

    .line 212
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public recursiveBinding()Lcom/google/inject/internal/Errors;
    .locals 2

    const-string v0, "Binding points to itself."

    const/4 v1, 0x0

    .line 304
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public recursiveImplementationType()Lcom/google/inject/internal/Errors;
    .locals 2

    const-string v0, "@ImplementedBy points to the same class it annotates."

    const/4 v1, 0x0

    .line 196
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public recursiveProviderType()Lcom/google/inject/internal/Errors;
    .locals 2

    const-string v0, "@ProvidedBy points to the same class it annotates."

    const/4 v1, 0x0

    .line 200
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public scopeAnnotationOnAbstractType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "%s is annotated with %s, but scope annotations are not supported for abstract types.%n Bound at %s."

    const/4 v1, 0x3

    .line 226
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3}, Lcom/google/inject/internal/Errors;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public scopeNotFound(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "No scope is bound to %s."

    const/4 v1, 0x1

    .line 221
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->root:Lcom/google/inject/internal/Errors;

    iget-object v0, v0, Lcom/google/inject/internal/Errors;->errors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public staticInjectionOnInterface(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "%s is an interface, but interfaces have no static injection points."

    const/4 v1, 0x1

    .line 279
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public subtypeNotProvided(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/inject/Provider<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "%s doesn\'t provide instances of %s."

    const/4 v1, 0x2

    .line 188
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public throwConfigurationExceptionIfErrorsExist()V
    .locals 2

    .line 452
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 456
    :cond_0
    new-instance v0, Lcom/google/inject/ConfigurationException;

    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/ConfigurationException;-><init>(Ljava/lang/Iterable;)V

    throw v0
.end method

.method public throwCreationExceptionIfErrorsExist()V
    .locals 2

    .line 444
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 448
    :cond_0
    new-instance v0, Lcom/google/inject/CreationException;

    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/CreationException;-><init>(Ljava/util/Collection;)V

    throw v0
.end method

.method public throwIfNewErrors(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->toException()Lcom/google/inject/internal/ErrorsException;

    move-result-object p1

    throw p1
.end method

.method public throwProvisionExceptionIfErrorsExist()V
    .locals 2

    .line 460
    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->hasErrors()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 464
    :cond_0
    new-instance v0, Lcom/google/inject/ProvisionException;

    invoke-virtual {p0}, Lcom/google/inject/internal/Errors;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/inject/ProvisionException;-><init>(Ljava/lang/Iterable;)V

    throw v0
.end method

.method public toException()Lcom/google/inject/internal/ErrorsException;
    .locals 1

    .line 509
    new-instance v0, Lcom/google/inject/internal/ErrorsException;

    invoke-direct {v0, p0}, Lcom/google/inject/internal/ErrorsException;-><init>(Lcom/google/inject/internal/Errors;)V

    return-object v0
.end method

.method public tooManyConstructors(Ljava/lang/Class;)Lcom/google/inject/internal/Errors;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/google/inject/internal/Errors;"
        }
    .end annotation

    const-string v0, "%s has more than one constructor annotated with @Inject. Classes must have either one (and only one) constructor annotated with @Inject or a zero-argument constructor that is not private."

    const/4 v1, 0x1

    .line 245
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object p1

    return-object p1
.end method

.method public voidProviderMethod()Lcom/google/inject/internal/Errors;
    .locals 2

    const-string v0, "Provider methods must return a value. Do not return void."

    const/4 v1, 0x0

    .line 260
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/google/inject/internal/Errors;->addMessage(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/inject/internal/Errors;

    move-result-object v0

    return-object v0
.end method

.method public withSource(Ljava/lang/Object;)Lcom/google/inject/internal/Errors;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/google/inject/internal/Errors;->source:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/inject/internal/util/SourceProvider;->UNKNOWN_SOURCE:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/inject/internal/Errors;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/internal/Errors;-><init>(Lcom/google/inject/internal/Errors;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p0

    :goto_1
    return-object v0
.end method
