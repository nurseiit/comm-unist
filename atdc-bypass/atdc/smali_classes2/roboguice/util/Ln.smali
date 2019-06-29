.class public final Lroboguice/util/Ln;
.super Ljava/lang/Object;
.source "Ln.java"


# annotations
.annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
    value = {
        "ImplicitArrayToString"
    }
.end annotation


# static fields
.field protected static lnImpl:Lroboguice/util/LnInterface;
    .annotation runtime Lcom/google/inject/Inject;
        optional = true
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_FINAL"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lroboguice/util/LnImpl;

    invoke-direct {v0}, Lroboguice/util/LnImpl;-><init>()V

    sput-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 85
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1}, Lroboguice/util/LnInterface;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/Throwable;)I
    .locals 1

    .line 81
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->d(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 89
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1, p2}, Lroboguice/util/LnInterface;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 121
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1}, Lroboguice/util/LnInterface;->e(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/Throwable;)I
    .locals 1

    .line 117
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->e(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 125
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1, p2}, Lroboguice/util/LnInterface;->e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static getLoggingLevel()I
    .locals 1

    .line 137
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0}, Lroboguice/util/LnInterface;->getLoggingLevel()I

    move-result v0

    return v0
.end method

.method public static varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 97
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1}, Lroboguice/util/LnInterface;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/Throwable;)I
    .locals 1

    .line 93
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->i(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 101
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1, p2}, Lroboguice/util/LnInterface;->i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .line 129
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0}, Lroboguice/util/LnInterface;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public static isVerboseEnabled()Z
    .locals 1

    .line 133
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0}, Lroboguice/util/LnInterface;->isVerboseEnabled()Z

    move-result v0

    return v0
.end method

.method public static logLevelToString(I)Ljava/lang/String;
    .locals 1

    .line 145
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->logLevelToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setLoggingLevel(I)V
    .locals 1

    .line 141
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->setLoggingLevel(I)V

    return-void
.end method

.method public static varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 73
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1}, Lroboguice/util/LnInterface;->v(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static v(Ljava/lang/Throwable;)I
    .locals 1

    .line 69
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->v(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 77
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1, p2}, Lroboguice/util/LnInterface;->v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 109
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1}, Lroboguice/util/LnInterface;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static w(Ljava/lang/Throwable;)I
    .locals 1

    .line 105
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0}, Lroboguice/util/LnInterface;->w(Ljava/lang/Throwable;)I

    move-result p0

    return p0
.end method

.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 1

    .line 113
    sget-object v0, Lroboguice/util/Ln;->lnImpl:Lroboguice/util/LnInterface;

    invoke-interface {v0, p0, p1, p2}, Lroboguice/util/LnInterface;->w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
