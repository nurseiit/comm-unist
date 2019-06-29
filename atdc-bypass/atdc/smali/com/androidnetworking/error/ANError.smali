.class public Lcom/androidnetworking/error/ANError;
.super Ljava/lang/Exception;
.source "ANError.java"


# instance fields
.field private errorBody:Ljava/lang/String;

.field private errorCode:I

.field private errorDetail:Ljava/lang/String;

.field private response:Lokhttp3/Response;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/androidnetworking/error/ANError;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/androidnetworking/error/ANError;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/androidnetworking/error/ANError;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/androidnetworking/error/ANError;->errorCode:I

    .line 52
    iput-object p2, p0, Lcom/androidnetworking/error/ANError;->response:Lokhttp3/Response;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/Response;Ljava/lang/Throwable;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/androidnetworking/error/ANError;->errorCode:I

    .line 61
    iput-object p2, p0, Lcom/androidnetworking/error/ANError;->response:Lokhttp3/Response;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/androidnetworking/error/ANError;->errorCode:I

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/androidnetworking/error/ANError;->errorCode:I

    .line 43
    iput-object p1, p0, Lcom/androidnetworking/error/ANError;->response:Lokhttp3/Response;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Response;Ljava/lang/Throwable;)V
    .locals 0

    .line 65
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/androidnetworking/error/ANError;->errorCode:I

    .line 66
    iput-object p1, p0, Lcom/androidnetworking/error/ANError;->response:Lokhttp3/Response;

    return-void
.end method


# virtual methods
.method public getErrorAsObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 108
    :try_start_0
    invoke-static {}, Lcom/androidnetworking/utils/ParseUtil;->getParserFactory()Lcom/androidnetworking/interfaces/Parser$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/androidnetworking/error/ANError;->errorBody:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v1, p1}, Lcom/androidnetworking/interfaces/Parser$Factory;->getObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getErrorBody()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/androidnetworking/error/ANError;->errorBody:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/androidnetworking/error/ANError;->errorCode:I

    return v0
.end method

.method public getErrorDetail()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/androidnetworking/error/ANError;->errorDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Lokhttp3/Response;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/androidnetworking/error/ANError;->response:Lokhttp3/Response;

    return-object v0
.end method

.method public setCancellationMessageInError()V
    .locals 1

    const-string v0, "requestCancelledError"

    .line 94
    iput-object v0, p0, Lcom/androidnetworking/error/ANError;->errorDetail:Ljava/lang/String;

    return-void
.end method

.method public setErrorBody(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/androidnetworking/error/ANError;->errorBody:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/androidnetworking/error/ANError;->errorCode:I

    return-void
.end method

.method public setErrorDetail(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/androidnetworking/error/ANError;->errorDetail:Ljava/lang/String;

    return-void
.end method
