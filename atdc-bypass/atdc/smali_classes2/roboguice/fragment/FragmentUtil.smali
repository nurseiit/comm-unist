.class public final Lroboguice/fragment/FragmentUtil;
.super Ljava/lang/Object;
.source "FragmentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lroboguice/fragment/FragmentUtil$f;
    }
.end annotation


# static fields
.field public static final NATIVE_PACKAGE:Ljava/lang/String; = "android.app."

.field public static final SUPPORT_PACKAGE:Ljava/lang/String; = "android.support.v4.app."

.field public static hasNative:Z = false
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"
        }
    .end annotation
.end field

.field public static hasSupport:Z = false
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"
        }
    .end annotation
.end field

.field public static nativeFrag:Lroboguice/fragment/FragmentUtil$f;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"
        }
    .end annotation
.end field

.field public static supportActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"
        }
    .end annotation
.end field

.field public static supportFrag:Lroboguice/fragment/FragmentUtil$f;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "MS_SHOULD_BE_REFACTORED_TO_BE_FINAL"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "roboguice.fragment.provided.NativeFragmentUtil"

    .line 46
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lroboguice/fragment/FragmentUtil$f;

    sput-object v2, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    .line 47
    sget-object v2, Lroboguice/fragment/FragmentUtil;->nativeFrag:Lroboguice/fragment/FragmentUtil$f;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lroboguice/fragment/FragmentUtil;->hasNative:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v2, "roboguice.fragment.support.SupportFragmentUtil"

    .line 51
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lroboguice/fragment/FragmentUtil$f;

    sput-object v2, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    const-string v2, "android.support.v4.app.FragmentActivity"

    .line 52
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lroboguice/fragment/FragmentUtil;->supportActivity:Ljava/lang/Class;

    .line 53
    sget-object v2, Lroboguice/fragment/FragmentUtil;->supportFrag:Lroboguice/fragment/FragmentUtil$f;

    if-eqz v2, :cond_1

    sget-object v2, Lroboguice/fragment/FragmentUtil;->supportActivity:Ljava/lang/Class;

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lroboguice/fragment/FragmentUtil;->hasSupport:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
