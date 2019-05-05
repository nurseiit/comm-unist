.class public Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;
.super Ljava/lang/Object;
.source "EventListenerThreadingDecorator.java"


# instance fields
.field protected handlerProvider:Lcom/google/inject/Provider;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decorate(Lroboguice/event/EventThread;Lroboguice/event/EventListener;)Lroboguice/event/EventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lroboguice/event/EventThread;",
            "Lroboguice/event/EventListener<",
            "TT;>;)",
            "Lroboguice/event/EventListener<",
            "TT;>;"
        }
    .end annotation

    .line 21
    sget-object v0, Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator$1;->$SwitchMap$roboguice$event$EventThread:[I

    invoke-virtual {p1}, Lroboguice/event/EventThread;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    return-object p2

    .line 25
    :pswitch_0
    new-instance p1, Lroboguice/event/eventListener/AsynchronousEventListenerDecorator;

    invoke-direct {p1, p2}, Lroboguice/event/eventListener/AsynchronousEventListenerDecorator;-><init>(Lroboguice/event/EventListener;)V

    return-object p1

    .line 23
    :pswitch_1
    new-instance p1, Lroboguice/event/eventListener/UIThreadEventListenerDecorator;

    iget-object v0, p0, Lroboguice/event/eventListener/factory/EventListenerThreadingDecorator;->handlerProvider:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {p1, p2, v0}, Lroboguice/event/eventListener/UIThreadEventListenerDecorator;-><init>(Lroboguice/event/EventListener;Landroid/os/Handler;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
