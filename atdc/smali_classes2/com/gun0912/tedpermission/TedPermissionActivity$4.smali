.class Lcom/gun0912/tedpermission/TedPermissionActivity$4;
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


# direct methods
.method constructor <init>(Lcom/gun0912/tedpermission/TedPermissionActivity;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$4;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 290
    iget-object p1, p0, Lcom/gun0912/tedpermission/TedPermissionActivity$4;->this$0:Lcom/gun0912/tedpermission/TedPermissionActivity;

    invoke-static {p1}, Lcom/gun0912/tedpermission/TedPermissionBase;->startSettingActivityForResult(Landroid/app/Activity;)V

    return-void
.end method
