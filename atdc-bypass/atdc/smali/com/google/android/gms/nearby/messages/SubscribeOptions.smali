.class public final Lcom/google/android/gms/nearby/messages/SubscribeOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/google/android/gms/nearby/messages/SubscribeOptions;


# instance fields
.field public final zzbyA:Z

.field public final zzbyB:I

.field private final zzbyj:Lcom/google/android/gms/nearby/messages/Strategy;

.field private final zzbyy:Lcom/google/android/gms/nearby/messages/MessageFilter;

.field private final zzbyz:Lcom/google/android/gms/nearby/messages/SubscribeCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/nearby/messages/SubscribeOptions$Builder;->build()Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->DEFAULT:Lcom/google/android/gms/nearby/messages/SubscribeOptions;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;Lcom/google/android/gms/nearby/messages/SubscribeCallback;ZI)V
    .locals 0
    .param p3    # Lcom/google/android/gms/nearby/messages/SubscribeCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyj:Lcom/google/android/gms/nearby/messages/Strategy;

    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyy:Lcom/google/android/gms/nearby/messages/MessageFilter;

    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyz:Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    iput-boolean p4, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyA:Z

    iput p5, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyB:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;Lcom/google/android/gms/nearby/messages/SubscribeCallback;ZILcom/google/android/gms/nearby/messages/zzh;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;-><init>(Lcom/google/android/gms/nearby/messages/Strategy;Lcom/google/android/gms/nearby/messages/MessageFilter;Lcom/google/android/gms/nearby/messages/SubscribeCallback;ZI)V

    return-void
.end method


# virtual methods
.method public final getCallback()Lcom/google/android/gms/nearby/messages/SubscribeCallback;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyz:Lcom/google/android/gms/nearby/messages/SubscribeCallback;

    return-object v0
.end method

.method public final getFilter()Lcom/google/android/gms/nearby/messages/MessageFilter;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyy:Lcom/google/android/gms/nearby/messages/MessageFilter;

    return-object v0
.end method

.method public final getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzbyj:Lcom/google/android/gms/nearby/messages/Strategy;

    return-object v0
.end method
