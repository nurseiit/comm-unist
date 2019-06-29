.class public Lroboguice/activity/event/OnActivityResultEvent;
.super Ljava/lang/Object;
.source "OnActivityResultEvent.java"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected data:Landroid/content/Intent;

.field protected requestCode:I

.field protected resultCode:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lroboguice/activity/event/OnActivityResultEvent;->activity:Landroid/app/Activity;

    .line 21
    iput p2, p0, Lroboguice/activity/event/OnActivityResultEvent;->requestCode:I

    .line 22
    iput p3, p0, Lroboguice/activity/event/OnActivityResultEvent;->resultCode:I

    .line 23
    iput-object p4, p0, Lroboguice/activity/event/OnActivityResultEvent;->data:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 39
    iget-object v0, p0, Lroboguice/activity/event/OnActivityResultEvent;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getData()Landroid/content/Intent;
    .locals 1

    .line 35
    iget-object v0, p0, Lroboguice/activity/event/OnActivityResultEvent;->data:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 27
    iget v0, p0, Lroboguice/activity/event/OnActivityResultEvent;->requestCode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .line 31
    iget v0, p0, Lroboguice/activity/event/OnActivityResultEvent;->resultCode:I

    return v0
.end method
