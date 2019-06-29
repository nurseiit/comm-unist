.class public Lroboguice/activity/event/OnSaveInstanceStateEvent;
.super Ljava/lang/Object;
.source "OnSaveInstanceStateEvent.java"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected savedInstanceState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lroboguice/activity/event/OnSaveInstanceStateEvent;->activity:Landroid/app/Activity;

    .line 13
    iput-object p2, p0, Lroboguice/activity/event/OnSaveInstanceStateEvent;->savedInstanceState:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 21
    iget-object v0, p0, Lroboguice/activity/event/OnSaveInstanceStateEvent;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getSavedInstanceState()Landroid/os/Bundle;
    .locals 1

    .line 17
    iget-object v0, p0, Lroboguice/activity/event/OnSaveInstanceStateEvent;->savedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method
