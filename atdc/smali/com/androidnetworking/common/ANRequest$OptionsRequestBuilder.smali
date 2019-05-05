.class public Lcom/androidnetworking/common/ANRequest$OptionsRequestBuilder;
.super Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;
.source "ANRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnetworking/common/ANRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionsRequestBuilder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 906
    invoke-direct {p0, p1, v0}, Lcom/androidnetworking/common/ANRequest$GetRequestBuilder;-><init>(Ljava/lang/String;I)V

    return-void
.end method
