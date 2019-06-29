.class Lcom/gun0912/tedpermission/TedPermissionActivity$6;
.super Ljava/lang/Object;
.source "TedPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gun0912/tedpermission/TedPermissionActivity;->showWindowPermissionDenyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;


# direct methods
.method constructor <init>(Lcom/gun0912/tedpermission/TedPermissionActivity;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$6;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string p1, "package"

    .line 336
    iget-object p2, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$6;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    iget-object p2, p2, Lcom/gun0912/tedpermission/TedPermissionActivity;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 337
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 338
    iget-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$6;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    const/16 v0, 0x1f

    invoke-virtual {p1, p2, v0}, Lcom/gun0912/tedpermission/TedPermissionActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
