.class public Lcom/androidnetworking/common/ANRequest$PatchRequestBuilder;
.super Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;
.source "ANRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnetworking/common/ANRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PatchRequestBuilder"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 1135
    invoke-direct {p0, p1, v0}, Lcom/androidnetworking/common/ANRequest$PostRequestBuilder;-><init>(Ljava/lang/String;I)V

    return-void
.end method
