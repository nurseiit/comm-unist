.class public Lcom/androidnetworking/common/ANResponse;
.super Ljava/lang/Object;
.source "ANResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mANError:Lcom/androidnetworking/error/ANError;

.field private final mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private response:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lcom/androidnetworking/error/ANError;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/androidnetworking/common/ANResponse;->mResult:Ljava/lang/Object;

    .line 50
    iput-object p1, p0, Lcom/androidnetworking/common/ANResponse;->mANError:Lcom/androidnetworking/error/ANError;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/androidnetworking/common/ANResponse;->mResult:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lcom/androidnetworking/common/ANResponse;->mANError:Lcom/androidnetworking/error/ANError;

    return-void
.end method

.method public static failed(Lcom/androidnetworking/error/ANError;)Lcom/androidnetworking/common/ANResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/androidnetworking/error/ANError;",
            ")",
            "Lcom/androidnetworking/common/ANResponse<",
            "TT;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/androidnetworking/common/ANResponse;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANResponse;-><init>(Lcom/androidnetworking/error/ANError;)V

    return-object v0
.end method

.method public static success(Ljava/lang/Object;)Lcom/androidnetworking/common/ANResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/androidnetworking/common/ANResponse<",
            "TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/androidnetworking/common/ANResponse;

    invoke-direct {v0, p0}, Lcom/androidnetworking/common/ANResponse;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getError()Lcom/androidnetworking/error/ANError;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/androidnetworking/common/ANResponse;->mANError:Lcom/androidnetworking/error/ANError;

    return-object v0
.end method

.method public getOkHttpResponse()Lokhttp3/Response;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/androidnetworking/common/ANResponse;->response:Lokhttp3/Response;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/androidnetworking/common/ANResponse;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/androidnetworking/common/ANResponse;->mANError:Lcom/androidnetworking/error/ANError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setOkHttpResponse(Lokhttp3/Response;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/androidnetworking/common/ANResponse;->response:Lokhttp3/Response;

    return-void
.end method
