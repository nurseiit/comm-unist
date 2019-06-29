.class public Lroboguice/config/RoboGuiceHierarchyTraversalFilter;
.super Lcom/google/inject/HierarchyTraversalFilter;
.source "RoboGuiceHierarchyTraversalFilter.java"


# static fields
.field private static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field protected static final ROBOGUICE_PACKAGE:Ljava/lang/String;


# instance fields
.field private isInRoboGuicePackage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lroboguice/RoboGuice;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->ROBOGUICE_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/google/inject/HierarchyTraversalFilter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->isInRoboGuicePackage:Z

    return-void
.end method


# virtual methods
.method public isWorthScanning(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 33
    const-class v1, Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android"

    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 39
    :cond_1
    sget-object v1, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->ROBOGUICE_PACKAGE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 40
    iput-boolean v1, p0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->isInRoboGuicePackage:Z

    goto :goto_0

    .line 41
    :cond_2
    iget-boolean p1, p0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->isInRoboGuicePackage:Z

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method public reset()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->isInRoboGuicePackage:Z

    return-void
.end method
