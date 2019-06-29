.class public Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;,
        Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private volatile level:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

.field private final logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 49
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 124
    sget-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->DEFAULT:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    invoke-direct {p0, v0}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;-><init>(Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;)V

    return-void
.end method

.method public constructor <init>(Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->NONE:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->level:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    .line 128
    iput-object p1, p0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    return-void
.end method

.method private bodyEncoded(Lokhttp3/Headers;)Z
    .locals 1

    const-string v0, "Content-Encoding"

    .line 299
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "identity"

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static isPlaintext(Lokio/Buffer;)Z
    .locals 8

    const/4 v0, 0x0

    .line 280
    :try_start_0
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    .line 281
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    .line 282
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    const/4 p0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3

    .line 284
    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 287
    :cond_1
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v1

    .line 288
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public getLevel()Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->level:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 150
    iget-object v3, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->level:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    .line 152
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    .line 153
    sget-object v5, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->NONE:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    if-ne v3, v5, :cond_0

    .line 154
    invoke-interface {v2, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    return-object v2

    .line 157
    :cond_0
    sget-object v5, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->BODY:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_3

    .line 158
    sget-object v8, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;->HEADERS:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    if-ne v3, v8, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 160
    :goto_2
    invoke-virtual {v4}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v8

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    .line 163
    :goto_3
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 164
    invoke-interface {v9}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v9

    goto :goto_4

    :cond_5
    sget-object v9, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 165
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v3, :cond_6

    if-eqz v7, :cond_6

    .line 167
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-byte body)"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 169
    :cond_6
    iget-object v10, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    invoke-interface {v10, v9}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    const-wide/16 v9, -0x1

    if-eqz v3, :cond_10

    if-eqz v7, :cond_8

    .line 175
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 176
    iget-object v12, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 178
    :cond_7
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v12

    cmp-long v14, v12, v9

    if-eqz v14, :cond_8

    .line 179
    iget-object v12, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Content-Length: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 183
    :cond_8
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v12

    .line 184
    invoke-virtual {v12}, Lokhttp3/Headers;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_a

    .line 185
    invoke-virtual {v12, v14}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v15

    const-string v6, "Content-Type"

    .line 187
    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "Content-Length"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 188
    iget-object v6, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0x20

    goto :goto_5

    :cond_a
    if-eqz v5, :cond_f

    if-nez v7, :cond_b

    goto/16 :goto_6

    .line 194
    :cond_b
    invoke-virtual {v4}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 195
    iget-object v6, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--> END "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (encoded body omitted)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 197
    :cond_c
    new-instance v6, Lokio/Buffer;

    invoke-direct {v6}, Lokio/Buffer;-><init>()V

    .line 198
    invoke-virtual {v8, v6}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 200
    sget-object v7, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 201
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v11

    if-eqz v11, :cond_d

    .line 203
    sget-object v7, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v7}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v7

    .line 206
    :cond_d
    iget-object v11, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    const-string v12, ""

    invoke-interface {v11, v12}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 207
    invoke-static {v6}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 208
    iget-object v11, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    invoke-virtual {v6, v7}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v6}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 209
    iget-object v6, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--> END "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-byte body)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-interface {v6, v7}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 212
    :cond_e
    iget-object v6, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "--> END "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " (binary "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v8}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-byte body omitted)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 212
    invoke-interface {v6, v7}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 193
    :cond_f
    :goto_6
    iget-object v6, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--> END "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 218
    :cond_10
    :goto_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 221
    :try_start_0
    invoke-interface {v2, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v13, v11, v6

    invoke-virtual {v4, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 228
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    .line 229
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_11

    .line 230
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-byte"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_11
    const-string v8, "unknown-length"

    .line 231
    :goto_8
    iget-object v9, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<-- "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v13

    invoke-virtual {v13}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " body"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_12
    const-string v6, ""

    :goto_9
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 231
    invoke-interface {v9, v6}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_1a

    .line 236
    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Lokhttp3/Headers;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_13

    .line 238
    iget-object v8, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_13
    if-eqz v5, :cond_19

    .line 241
    invoke-static {v2}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_b

    .line 243
    :cond_14
    invoke-virtual {v2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 244
    iget-object v3, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    const-string v4, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v3, v4}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 246
    :cond_15
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    const-wide v5, 0x7fffffffffffffffL

    .line 247
    invoke-interface {v3, v5, v6}, Lokio/BufferedSource;->request(J)Z

    .line 248
    invoke-interface {v3}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v3

    .line 250
    sget-object v5, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 251
    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 253
    sget-object v5, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v5

    .line 256
    :cond_16
    invoke-static {v3}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 257
    iget-object v4, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    const-string v5, ""

    invoke-interface {v4, v5}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 258
    iget-object v4, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- END HTTP (binary "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-byte body omitted)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    return-object v2

    :cond_17
    const-wide/16 v6, 0x0

    cmp-long v4, v11, v6

    if-eqz v4, :cond_18

    .line 263
    iget-object v4, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    const-string v6, ""

    invoke-interface {v4, v6}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 264
    iget-object v4, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    invoke-virtual {v3}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 267
    :cond_18
    iget-object v4, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<-- END HTTP ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-byte body)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto :goto_c

    .line 242
    :cond_19
    :goto_b
    iget-object v3, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    const-string v4, "<-- END HTTP"

    invoke-interface {v3, v4}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    :cond_1a
    :goto_c
    return-object v2

    :catch_0
    move-exception v0

    .line 223
    iget-object v2, v1, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->logger:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<-- HTTP FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 224
    throw v0
.end method

.method public setLevel(Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;)Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;
    .locals 1

    if-nez p1, :cond_0

    .line 139
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "level == null. Use Level.NONE instead."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/androidnetworking/interceptors/HttpLoggingInterceptor;->level:Lcom/androidnetworking/interceptors/HttpLoggingInterceptor$Level;

    return-object p0
.end method
