.class Lcom/androidnetworking/gsonparserfactory/GsonParserFactory$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "GsonParserFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;->getStringMap(Ljava/lang/Object;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;


# direct methods
.method constructor <init>(Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/androidnetworking/gsonparserfactory/GsonParserFactory$1;->this$0:Lcom/androidnetworking/gsonparserfactory/GsonParserFactory;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
