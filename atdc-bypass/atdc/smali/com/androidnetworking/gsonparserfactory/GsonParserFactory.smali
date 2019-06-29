.class public final Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;
.super Lcom/androidnetworking/interfaces/Parser$Factory;
.source "GsonParserFactory.java"


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/androidnetworking/interfaces/Parser$Factory;-><init>()V

    .line 41
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/androidnetworking/interfaces/Parser$Factory;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public getObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    :try_start_0
    new-instance v0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory$1;

    invoke-direct {v0, p0}, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory$1;-><init>(Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;)V

    .line 84
    invoke-virtual {v0}, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->gson:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public requestBodyParser(Ljava/lang/reflect/Type;)Lcom/androidnetworking/interfaces/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/androidnetworking/interfaces/Parser<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->gson:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    .line 57
    new-instance v0, Lcom/androidnetworking/gsonparserfactory/GsonRequestBodyParser;

    iget-object v1, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {v0, v1, p1}, Lcom/androidnetworking/gsonparserfactory/GsonRequestBodyParser;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public responseBodyParser(Ljava/lang/reflect/Type;)Lcom/androidnetworking/interfaces/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/androidnetworking/interfaces/Parser<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->gson:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/androidnetworking/gsonparserfactory/GsonResponseBodyParser;

    iget-object v1, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {v0, v1, p1}, Lcom/androidnetworking/gsonparserfactory/GsonResponseBodyParser;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object v0
.end method
