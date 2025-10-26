.class final Lcom/ibm/icu/impl/Normalizer2Impl$1;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"

# interfaces
.implements Lcom/ibm/icu/util/CodePointMap$ValueFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(I)I
    .locals 1

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    return p1
.end method
