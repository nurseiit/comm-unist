.class public interface abstract Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Logger"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    new-instance v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger$1;

    invoke-direct {v0}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger$1;-><init>()V

    sput-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->DEFAULT:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    return-void
.end method


# virtual methods
.method public abstract log(Ljava/lang/String;)V
.end method
