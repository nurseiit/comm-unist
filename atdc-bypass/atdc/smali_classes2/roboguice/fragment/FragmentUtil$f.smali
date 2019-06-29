.class public interface abstract Lroboguice/fragment/FragmentUtil$f;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lroboguice/fragment/FragmentUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<fragType:",
        "Ljava/lang/Object;",
        "fragManagerType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract findFragmentById(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TfragManagerType;I)TfragType;"
        }
    .end annotation
.end method

.method public abstract findFragmentByTag(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TfragManagerType;",
            "Ljava/lang/String;",
            ")TfragType;"
        }
    .end annotation
.end method

.method public abstract fragmentManagerProviderType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/inject/Provider<",
            "TfragManagerType;>;>;"
        }
    .end annotation
.end method

.method public abstract fragmentManagerType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TfragManagerType;>;"
        }
    .end annotation
.end method

.method public abstract fragmentType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TfragType;>;"
        }
    .end annotation
.end method

.method public abstract getView(Ljava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TfragType;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method
