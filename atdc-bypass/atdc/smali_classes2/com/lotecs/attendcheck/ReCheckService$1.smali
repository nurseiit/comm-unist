.class Lcom/lotecs/attendcheck/ReCheckService$1;
.super Ljava/lang/Object;
.source "ReCheckService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lotecs/attendcheck/ReCheckService;->filterBeacons(Ljava/util/Collection;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/altbeacon/beacon/Beacon;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/ReCheckService;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/ReCheckService;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/lotecs/attendcheck/ReCheckService$1;->this$0:Lcom/lotecs/attendcheck/ReCheckService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 117
    check-cast p1, Lorg/altbeacon/beacon/Beacon;

    check-cast p2, Lorg/altbeacon/beacon/Beacon;

    invoke-virtual {p0, p1, p2}, Lcom/lotecs/attendcheck/ReCheckService$1;->compare(Lorg/altbeacon/beacon/Beacon;Lorg/altbeacon/beacon/Beacon;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/altbeacon/beacon/Beacon;Lorg/altbeacon/beacon/Beacon;)I
    .locals 2

    .line 120
    invoke-virtual {p1}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/altbeacon/beacon/Beacon;->getDistance()D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method
