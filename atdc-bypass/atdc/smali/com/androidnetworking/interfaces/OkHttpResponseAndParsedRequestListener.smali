.class public interface abstract Lcom/androidnetworking/interfaces/OkHttpResponseAndParsedRequestListener;
.super Ljava/lang/Object;
.source "OkHttpResponseAndParsedRequestListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/androidnetworking/error/ANError;)V
.end method

.method public abstract onResponse(Lokhttp3/Response;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            "TT;)V"
        }
    .end annotation
.end method
