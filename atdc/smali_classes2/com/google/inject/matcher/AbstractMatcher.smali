.class public abstract Lcom/google/inject/matcher/AbstractMatcher;
.super Ljava/lang/Object;
.source "AbstractMatcher.java"

# interfaces
.implements Lcom/google/inject/matcher/Matcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;,
        Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/matcher/Matcher<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public and(Lcom/google/inject/matcher/Matcher;)Lcom/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher<",
            "-TT;>;)",
            "Lcom/google/inject/matcher/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/matcher/AbstractMatcher$AndMatcher;-><init>(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/matcher/Matcher;)V

    return-object v0
.end method

.method public or(Lcom/google/inject/matcher/Matcher;)Lcom/google/inject/matcher/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/inject/matcher/Matcher<",
            "-TT;>;)",
            "Lcom/google/inject/matcher/Matcher<",
            "TT;>;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;

    invoke-direct {v0, p0, p1}, Lcom/google/inject/matcher/AbstractMatcher$OrMatcher;-><init>(Lcom/google/inject/matcher/Matcher;Lcom/google/inject/matcher/Matcher;)V

    return-object v0
.end method
