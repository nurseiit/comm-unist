.class public Lroboguice/util/LnImpl;
.super Ljava/lang/Object;
.source "LnImpl.java"

# interfaces
.implements Lroboguice/util/LnInterface;


# instance fields
.field protected minimumLogLevel:I

.field protected packageName:Ljava/lang/String;

.field protected tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lroboguice/util/LnImpl;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 3
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    const-string v1, ""

    .line 14
    iput-object v1, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    const-string v1, ""

    .line 15
    iput-object v1, p0, Lroboguice/util/LnImpl;->tag:Ljava/lang/String;

    .line 24
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 26
    :goto_0
    iput v0, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    .line 27
    iget-object p1, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lroboguice/util/LnImpl;->tag:Ljava/lang/String;

    const-string p1, "Configuring Logging, minimum log level is %s"

    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    invoke-static {v1}, Lroboguice/util/Ln;->logLevelToString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lroboguice/util/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 33
    :try_start_1
    iget-object v0, p0, Lroboguice/util/LnImpl;->packageName:Ljava/lang/String;

    const-string v1, "Error configuring logger"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_1
    return-void
.end method


# virtual methods
.method public varargs d(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 72
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 75
    :cond_0
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1, p2}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Throwable;)I
    .locals 2

    .line 67
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 82
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 85
    :cond_0
    invoke-static {p2}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p3}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public varargs e(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 157
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 160
    :cond_0
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1, p2}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/Throwable;)I
    .locals 2

    .line 142
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 147
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 150
    :cond_0
    invoke-static {p2}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p3}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected varargs formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 232
    array-length v0, p2

    if-nez v0, :cond_0

    return-object p1

    .line 235
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLoggingLevel()I
    .locals 1

    .line 199
    iget v0, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    return v0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 3

    .line 219
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lroboguice/util/LnImpl;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 224
    :cond_0
    iget-object v0, p0, Lroboguice/util/LnImpl;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public varargs i(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 107
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 110
    :cond_0
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1, p2}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Throwable;)I
    .locals 2

    .line 92
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 97
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 100
    :cond_0
    invoke-static {p2}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p3}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public isDebugEnabled()Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVerboseEnabled()Z
    .locals 2

    .line 172
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logLevelToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "UNKNOWN"

    return-object p1

    :pswitch_0
    const-string p1, "ASSERT"

    return-object p1

    :pswitch_1
    const-string p1, "ERROR"

    return-object p1

    :pswitch_2
    const-string p1, "WARN"

    return-object p1

    :pswitch_3
    const-string p1, "INFO"

    return-object p1

    :pswitch_4
    const-string p1, "DEBUG"

    return-object p1

    :pswitch_5
    const-string p1, "VERBOSE"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public println(ILjava/lang/String;)I
    .locals 1

    .line 208
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lroboguice/util/LnImpl;->processMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected processMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 212
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const-string v0, "%s %s"

    const/4 v1, 0x2

    .line 213
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public setLoggingLevel(I)V
    .locals 0

    .line 204
    iput p1, p0, Lroboguice/util/LnImpl;->minimumLogLevel:I

    return-void
.end method

.method public varargs v(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 47
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 50
    :cond_0
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p0, p1, p2}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public v(Ljava/lang/Throwable;)I
    .locals 2

    .line 42
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 57
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 60
    :cond_0
    invoke-static {p2}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p3}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public varargs w(Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 132
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    invoke-static {p1}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p0, p1, p2}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public w(Ljava/lang/Throwable;)I
    .locals 2

    .line 117
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 2

    .line 122
    invoke-virtual {p0}, Lroboguice/util/LnImpl;->getLoggingLevel()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_0
    invoke-static {p2}, Lroboguice/util/Strings;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p3}, Lroboguice/util/LnImpl;->formatArgs(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p0, v1, p1}, Lroboguice/util/LnImpl;->println(ILjava/lang/String;)I

    move-result p1

    return p1
.end method
