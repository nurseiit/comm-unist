.class public Lroboguice/inject/ResourceListener$ResourceMembersInjector;
.super Ljava/lang/Object;
.source "ResourceListener.java"

# interfaces
.implements Lcom/google/inject/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/inject/ResourceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ResourceMembersInjector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/MembersInjector<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected annotation:Lroboguice/inject/InjectResource;

.field protected application:Landroid/app/Application;

.field protected field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Landroid/app/Application;Lroboguice/inject/InjectResource;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    .line 82
    iput-object p2, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->application:Landroid/app/Application;

    .line 83
    iput-object p3, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->annotation:Lroboguice/inject/InjectResource;

    return-void
.end method


# virtual methods
.method protected getId(Landroid/content/res/Resources;Lroboguice/inject/InjectResource;)I
    .locals 2

    .line 134
    invoke-interface {p2}, Lroboguice/inject/InjectResource;->value()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {p2}, Lroboguice/inject/InjectResource;->name()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    iget-object v1, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    :try_start_0
    iget-object v4, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->application:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 93
    iget-object v5, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->annotation:Lroboguice/inject/InjectResource;

    invoke-virtual {p0, v4, v5}, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->getId(Landroid/content/res/Resources;Lroboguice/inject/InjectResource;)I

    move-result v5

    .line 94
    iget-object v6, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    .line 96
    const-class v7, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 97
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v3, v4

    goto/16 :goto_4

    .line 98
    :cond_0
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_a

    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_3

    .line 100
    :cond_1
    const-class v7, Landroid/content/res/ColorStateList;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    goto :goto_0

    .line 102
    :cond_2
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_9

    const-class v7, Ljava/lang/Integer;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 104
    :cond_3
    const-class v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 105
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 106
    :cond_4
    const-class v7, [Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 107
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 108
    :cond_5
    const-class v7, [I

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_8

    const-class v7, [Ljava/lang/Integer;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    .line 110
    :cond_6
    const-class v7, Landroid/view/animation/Animation;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 111
    iget-object v4, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->application:Landroid/app/Application;

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    goto :goto_0

    .line 112
    :cond_7
    const-class v7, Landroid/graphics/Movie;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 113
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object v4

    goto :goto_0

    .line 109
    :cond_8
    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    goto :goto_0

    .line 103
    :cond_9
    :goto_2
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_0

    .line 99
    :cond_a
    :goto_3
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    :goto_4
    if-nez v3, :cond_c

    .line 116
    iget-object v4, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-static {v4}, Lroboguice/inject/Nullable;->notNullable(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 117
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v4, "Can\'t inject null value into %s.%s when field is not @Nullable"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v6, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 121
    :cond_c
    iget-object v4, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 122
    iget-object v4, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 128
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t assign %s value %s to %s field %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    goto :goto_5

    :cond_d
    const-string v6, "(null)"

    :goto_5
    aput-object v6, v5, v0

    aput-object v3, v5, v2

    iget-object v0, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x3

    iget-object v1, p0, Lroboguice/inject/ResourceListener$ResourceMembersInjector;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
