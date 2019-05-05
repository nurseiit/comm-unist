.class Lcom/gun0912/tedpermission/TedPermissionActivity$3;
.super Ljava/lang/Object;
.source "TedPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gun0912/tedpermission/TedPermissionActivity;->showPermissionDenyDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

.field final synthetic val$deniedPermissions:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/gun0912/tedpermission/TedPermissionActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$3;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    iput-object p2, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$3;->val$deniedPermissions:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 277
    iget-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$3;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    iget-object p2, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$3;->val$deniedPermissions:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/gun0912/tedpermission/TedPermissionActivity;->access$000(Lcom/gun0912/tedpermission/TedPermissionActivity;Ljava/util/ArrayList;)V

    return-void
.end method
