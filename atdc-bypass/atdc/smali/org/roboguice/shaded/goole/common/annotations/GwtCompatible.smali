.class public interface abstract annotation Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.super Ljava/lang/Object;
.source "GwtCompatible.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
        emulated = false
        serializable = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# virtual methods
.method public abstract emulated()Z
.end method

.method public abstract serializable()Z
.end method
