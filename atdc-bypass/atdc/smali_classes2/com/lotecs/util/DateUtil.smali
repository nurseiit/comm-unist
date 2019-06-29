.class public Lcom/lotecs/util/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareDate(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 161
    invoke-static {p0}, Lcom/lotecs/util/StringUtil;->toLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/lotecs/util/StringUtil;->toLong(Ljava/lang/Object;)J

    move-result-wide p0

    cmp-long v2, v0, p0

    if-gez v2, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 3

    const-string v0, "yyyyMMdd"

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 63
    invoke-static {v0, v1, v2}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(I)Ljava/lang/String;
    .locals 2

    const-string v0, "yyyyMMdd"

    const/4 v1, 0x5

    .line 54
    invoke-static {v0, p0, v1}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 44
    invoke-static {p0, v0, v1}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    .line 34
    invoke-static {p0, p1, v0}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->add(II)V

    .line 21
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultDate(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "-"

    const/4 v1, 0x0

    .line 149
    invoke-static {p0, v0, v1}, Lcom/lotecs/util/DateUtil;->getDefaultDate(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultDate(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-static {p0, p1, v0}, Lcom/lotecs/util/DateUtil;->getDefaultDate(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultDate(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 118
    invoke-static {p0}, Lcom/lotecs/util/StringUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "yyyy"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MM"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dd"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 122
    invoke-static {p0}, Lcom/lotecs/util/DateUtil;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x5

    .line 123
    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->add(II)V

    .line 124
    new-instance p2, Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dd"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDefaultDateTime(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 73
    invoke-static {p0}, Lcom/lotecs/util/StringUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MM/dd HH:mm:ss"

    .line 74
    invoke-static {p0}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/lotecs/util/DateUtil;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDefaultTime(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 95
    invoke-static {p0}, Lcom/lotecs/util/StringUtil;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HH"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mm"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ss"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 99
    invoke-static {p0}, Lcom/lotecs/util/DateUtil;->toTimeCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ss"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getDifference(Ljava/lang/String;)J
    .locals 2

    const-string v0, "yyyyMMdd"

    .line 208
    invoke-static {v0}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/lotecs/util/DateUtil;->getDifference(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDifference(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    const/4 v0, 0x1

    .line 228
    invoke-static {p0, p1, v0}, Lcom/lotecs/util/DateUtil;->getDifference(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getDifference(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 4

    .line 177
    invoke-static {p0}, Lcom/lotecs/util/DateUtil;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    .line 178
    invoke-static {p1}, Lcom/lotecs/util/DateUtil;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    sub-long v2, v0, p0

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    const-wide/32 p0, 0x5265c00

    .line 186
    div-long/2addr v2, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p2, p0, :cond_1

    const-wide/32 p0, 0x36ee80

    .line 189
    div-long/2addr v2, p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ne p2, p0, :cond_2

    const-wide/32 p0, 0xea60

    .line 192
    div-long/2addr v2, p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    if-ne p2, p0, :cond_3

    const-wide/16 p0, 0x3e8

    .line 195
    div-long/2addr v2, p0

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method

.method public static getDifferenceSecond(Ljava/lang/String;)J
    .locals 2

    const-string v0, "yyyyMMddHHmmss"

    .line 217
    invoke-static {v0}, Lcom/lotecs/util/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, p0, v1}, Lcom/lotecs/util/DateUtil;->getDifference(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFirstDayOfWeek()Ljava/lang/String;
    .locals 1

    const-string v0, "yyyyMMdd"

    .line 324
    invoke-static {v0}, Lcom/lotecs/util/DateUtil;->getFirstDayOfWeek(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFirstDayOfWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 335
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    .line 336
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    .line 338
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 340
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLastDay()Ljava/lang/String;
    .locals 1

    const-string v0, "yyyyMMdd"

    .line 351
    invoke-static {v0}, Lcom/lotecs/util/DateUtil;->getLastDay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastDay(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 361
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 363
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWeek(Ljava/lang/String;)I
    .locals 1

    .line 314
    invoke-static {p0}, Lcom/lotecs/util/DateUtil;->toCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x7

    .line 315
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    return p0
.end method

.method public static toCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 6

    .line 238
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 240
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    .line 241
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lotecs/util/StringUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 243
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-le v1, v5, :cond_1

    const/4 v1, 0x2

    .line 244
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lotecs/util/StringUtil;->toInt(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 246
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    const/16 v3, 0x8

    if-le v1, v2, :cond_2

    .line 247
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lotecs/util/StringUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 249
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    const/16 v4, 0xa

    const/16 v5, 0xb

    if-le v1, v2, :cond_3

    .line 250
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lotecs/util/StringUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 252
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v5, :cond_4

    .line 253
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lotecs/util/StringUtil;->toInt(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 255
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xd

    if-le v1, v3, :cond_5

    const/16 v1, 0xe

    .line 256
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lotecs/util/StringUtil;->toInt(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    :cond_5
    return-object v0
.end method

.method public static toDate(J)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyyMMddHHmmss"

    .line 290
    invoke-static {p0, p1, v0}, Lcom/lotecs/util/DateUtil;->toDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 301
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    .line 303
    invoke-virtual {p2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 304
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toTimeCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 5

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 270
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    const/16 v1, 0xb

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lotecs/util/StringUtil;->toInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 273
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-le v1, v3, :cond_1

    const/16 v1, 0xc

    .line 274
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lotecs/util/StringUtil;->toInt(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 276
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_2

    const/16 v1, 0xd

    const/4 v2, 0x6

    .line 277
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lotecs/util/StringUtil;->toInt(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    :cond_2
    return-object v0
.end method
