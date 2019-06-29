.class public Lroboguice/inject/NullProvider;
.super Ljava/lang/Object;
.source "NullProvider.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider<",
        "TT;>;"
    }
.end annotation


# static fields
.field static instance:Lroboguice/inject/NullProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lroboguice/inject/NullProvider<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lroboguice/inject/NullProvider;

    invoke-direct {v0}, Lroboguice/inject/NullProvider;-><init>()V

    sput-object v0, Lroboguice/inject/NullProvider;->instance:Lroboguice/inject/NullProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lroboguice/inject/NullProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lroboguice/inject/NullProvider<",
            "TT;>;"
        }
    .end annotation

    .line 18
    sget-object v0, Lroboguice/inject/NullProvider;->instance:Lroboguice/inject/NullProvider;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
