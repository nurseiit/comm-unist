.class public Lorg/altbeacon/beacon/service/MonitorState;
.super Ljava/lang/Object;
.source "MonitorState.java"


# static fields
.field public static INSIDE_EXPIRATION_MILLIS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "MonitorState"


# instance fields
.field private callback:Lorg/altbeacon/beacon/service/Callback;

.field private inside:Z

.field private lastSeenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/altbeacon/beacon/service/Callback;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    .line 38
    iput-object p1, p0, Lorg/altbeacon/beacon/service/MonitorState;->callback:Lorg/altbeacon/beacon/service/Callback;

    return-void
.end method


# virtual methods
.method public getCallback()Lorg/altbeacon/beacon/service/Callback;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->callback:Lorg/altbeacon/beacon/service/Callback;

    return-object v0
.end method

.method public isInside()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/altbeacon/beacon/service/MonitorState;->isNewlyOutside()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNewlyOutside()Z
    .locals 10

    .line 55
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    iget-wide v2, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    sub-long v8, v2, v6

    sget-wide v2, Lorg/altbeacon/beacon/service/MonitorState;->INSIDE_EXPIRATION_MILLIS:J

    cmp-long v0, v8, v2

    if-lez v0, :cond_0

    .line 57
    iput-boolean v1, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    const-string v0, "MonitorState"

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We are newly outside the region because the lastSeenTime of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v6, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    sub-long v8, v2, v6

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " seconds ago, and that is over the expiration duration of  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lorg/altbeacon/beacon/service/MonitorState;->INSIDE_EXPIRATION_MILLIS:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iput-wide v4, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public markInside()Z
    .locals 2

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->lastSeenTime:J

    .line 48
    iget-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lorg/altbeacon/beacon/service/MonitorState;->inside:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
