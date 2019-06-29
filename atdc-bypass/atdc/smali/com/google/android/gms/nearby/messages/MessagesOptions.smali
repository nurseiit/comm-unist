.class public Lcom/google/android/gms/nearby/messages/MessagesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;
    }
.end annotation


# instance fields
.field public final zzbye:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final zzbyf:Z

.field public final zzbyg:I

.field public final zzbyh:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzbye:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzbyf:Z

    invoke-static {p1}, Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;->zza(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzbyg:I

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzbyh:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;Lcom/google/android/gms/nearby/messages/zze;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/nearby/messages/MessagesOptions;-><init>(Lcom/google/android/gms/nearby/messages/MessagesOptions$Builder;)V

    return-void
.end method
