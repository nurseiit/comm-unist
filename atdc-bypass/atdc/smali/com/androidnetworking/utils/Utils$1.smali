.class final Lcom/androidnetworking/utils/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/utils/Utils;->sendAnalytics(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$analyticsListener:Lcom/androidnetworking/interfaces/AnalyticsListener;

.field final synthetic val$bytesReceived:J

.field final synthetic val$bytesSent:J

.field final synthetic val$isFromCache:Z

.field final synthetic val$timeTakenInMillis:J


# direct methods
.method constructor <init>(Lcom/androidnetworking/interfaces/AnalyticsListener;JJJZ)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/androidnetworking/utils/Utils$1;->val$analyticsListener:Lcom/androidnetworking/interfaces/AnalyticsListener;

    iput-wide p2, p0, Lcom/androidnetworking/utils/Utils$1;->val$timeTakenInMillis:J

    iput-wide p4, p0, Lcom/androidnetworking/utils/Utils$1;->val$bytesSent:J

    iput-wide p6, p0, Lcom/androidnetworking/utils/Utils$1;->val$bytesReceived:J

    iput-boolean p8, p0, Lcom/androidnetworking/utils/Utils$1;->val$isFromCache:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 210
    iget-object v0, p0, Lcom/androidnetworking/utils/Utils$1;->val$analyticsListener:Lcom/androidnetworking/interfaces/AnalyticsListener;

    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/androidnetworking/utils/Utils$1;->val$analyticsListener:Lcom/androidnetworking/interfaces/AnalyticsListener;

    iget-wide v2, p0, Lcom/androidnetworking/utils/Utils$1;->val$timeTakenInMillis:J

    iget-wide v4, p0, Lcom/androidnetworking/utils/Utils$1;->val$bytesSent:J

    iget-wide v6, p0, Lcom/androidnetworking/utils/Utils$1;->val$bytesReceived:J

    iget-boolean v8, p0, Lcom/androidnetworking/utils/Utils$1;->val$isFromCache:Z

    invoke-interface/range {v1 .. v8}, Lcom/androidnetworking/interfaces/AnalyticsListener;->onReceived(JJJZ)V

    :cond_0
    return-void
.end method
