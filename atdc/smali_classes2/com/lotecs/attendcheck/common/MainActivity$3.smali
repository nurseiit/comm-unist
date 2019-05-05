.class Lcom/lotecs/attendcheck/common/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/gun0912/tedpermission/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lotecs/attendcheck/common/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lotecs/attendcheck/common/MainActivity;


# direct methods
.method constructor <init>(Lcom/lotecs/attendcheck/common/MainActivity;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity$3;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionDenied(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-object p1, p0, Lcom/lotecs/attendcheck/common/MainActivity$3;->this$0:Lcom/lotecs/attendcheck/common/MainActivity;

    invoke-static {p1}, Lcom/lotecs/attendcheck/common/MainActivity;->access$000(Lcom/lotecs/attendcheck/common/MainActivity;)V

    return-void
.end method

.method public onPermissionGranted()V
    .locals 0

    return-void
.end method
