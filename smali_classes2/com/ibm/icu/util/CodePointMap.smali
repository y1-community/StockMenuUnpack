.class public abstract Lcom/ibm/icu/util/CodePointMap;
.super Ljava/lang/Object;
.source "CodePointMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/CodePointMap$StringIterator;,
        Lcom/ibm/icu/util/CodePointMap$RangeIterator;,
        Lcom/ibm/icu/util/CodePointMap$Range;,
        Lcom/ibm/icu/util/CodePointMap$ValueFilter;,
        Lcom/ibm/icu/util/CodePointMap$RangeOption;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ibm/icu/util/CodePointMap$Range;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(I)I
.end method

.method public getRange(ILcom/ibm/icu/util/CodePointMap$RangeOption;ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z
    .locals 4

    .line 380
    invoke-virtual {p0, p1, p4, p5}, Lcom/ibm/icu/util/CodePointMap;->getRange(ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 383
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/CodePointMap$RangeOption;->NORMAL:Lcom/ibm/icu/util/CodePointMap$RangeOption;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    return v1

    .line 386
    :cond_1
    sget-object v0, Lcom/ibm/icu/util/CodePointMap$RangeOption;->FIXED_ALL_SURROGATES:Lcom/ibm/icu/util/CodePointMap$RangeOption;

    if-ne p2, v0, :cond_2

    const p2, 0xdfff

    goto :goto_0

    :cond_2
    const p2, 0xdbff

    .line 387
    :goto_0
    invoke-static {p5}, Lcom/ibm/icu/util/CodePointMap$Range;->access$000(Lcom/ibm/icu/util/CodePointMap$Range;)I

    move-result v0

    const v2, 0xd7ff

    if-lt v0, v2, :cond_8

    if-le p1, p2, :cond_3

    goto :goto_1

    .line 392
    :cond_3
    invoke-static {p5}, Lcom/ibm/icu/util/CodePointMap$Range;->access$100(Lcom/ibm/icu/util/CodePointMap$Range;)I

    move-result v3

    if-ne v3, p3, :cond_4

    if-lt v0, p2, :cond_6

    return v1

    :cond_4
    if-gt p1, v2, :cond_5

    .line 400
    invoke-static {p5, v2}, Lcom/ibm/icu/util/CodePointMap$Range;->access$002(Lcom/ibm/icu/util/CodePointMap$Range;I)I

    return v1

    .line 405
    :cond_5
    invoke-static {p5, p3}, Lcom/ibm/icu/util/CodePointMap$Range;->access$102(Lcom/ibm/icu/util/CodePointMap$Range;I)I

    if-le v0, p2, :cond_6

    .line 407
    invoke-static {p5, p2}, Lcom/ibm/icu/util/CodePointMap$Range;->access$002(Lcom/ibm/icu/util/CodePointMap$Range;I)I

    return v1

    :cond_6
    add-int/lit8 v0, p2, 0x1

    .line 413
    invoke-virtual {p0, v0, p4, p5}, Lcom/ibm/icu/util/CodePointMap;->getRange(ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-static {p5}, Lcom/ibm/icu/util/CodePointMap$Range;->access$100(Lcom/ibm/icu/util/CodePointMap$Range;)I

    move-result p4

    if-ne p4, p3, :cond_7

    .line 414
    invoke-static {p5, p1}, Lcom/ibm/icu/util/CodePointMap$Range;->access$202(Lcom/ibm/icu/util/CodePointMap$Range;I)I

    return v1

    .line 417
    :cond_7
    invoke-static {p5, p1}, Lcom/ibm/icu/util/CodePointMap$Range;->access$202(Lcom/ibm/icu/util/CodePointMap$Range;I)I

    .line 418
    invoke-static {p5, p2}, Lcom/ibm/icu/util/CodePointMap$Range;->access$002(Lcom/ibm/icu/util/CodePointMap$Range;I)I

    .line 419
    invoke-static {p5, p3}, Lcom/ibm/icu/util/CodePointMap$Range;->access$102(Lcom/ibm/icu/util/CodePointMap$Range;I)I

    :cond_8
    :goto_1
    return v1
.end method

.method public abstract getRange(ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/util/CodePointMap$Range;",
            ">;"
        }
    .end annotation

    .line 436
    new-instance v0, Lcom/ibm/icu/util/CodePointMap$RangeIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/CodePointMap$RangeIterator;-><init>(Lcom/ibm/icu/util/CodePointMap;Lcom/ibm/icu/util/CodePointMap$1;)V

    return-object v0
.end method

.method public stringIterator(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CodePointMap$StringIterator;
    .locals 1

    .line 449
    new-instance v0, Lcom/ibm/icu/util/CodePointMap$StringIterator;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/util/CodePointMap$StringIterator;-><init>(Lcom/ibm/icu/util/CodePointMap;Ljava/lang/CharSequence;I)V

    return-object v0
.end method
