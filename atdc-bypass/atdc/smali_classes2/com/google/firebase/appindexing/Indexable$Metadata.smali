.class public interface abstract Lcom/google/firebase/appindexing/Indexable$Metadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/appindexing/Indexable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Metadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;
    }
.end annotation


# static fields
.field public static final zzbVD:Lcom/google/firebase/appindexing/internal/Thing$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;

    invoke-direct {v0}, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/firebase/appindexing/Indexable$Metadata$Builder;->zzEA()Lcom/google/firebase/appindexing/internal/Thing$zza;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/appindexing/Indexable$Metadata;->zzbVD:Lcom/google/firebase/appindexing/internal/Thing$zza;

    return-void
.end method
