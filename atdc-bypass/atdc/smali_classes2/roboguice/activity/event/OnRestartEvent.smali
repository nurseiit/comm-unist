.class public Lroboguice/activity/event/OnRestartEvent;
.super Ljava/lang/Object;
.source "OnRestartEvent.java"


# instance fields
.field protected activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lroboguice/activity/event/OnRestartEvent;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 19
    iget-object v0, p0, Lroboguice/activity/event/OnRestartEvent;->activity:Landroid/app/Activity;

    return-object v0
.end method
