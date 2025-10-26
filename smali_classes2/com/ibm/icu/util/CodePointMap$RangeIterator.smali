.class final Lcom/ibm/icu/util/CodePointMap$RangeIterator;
.super Ljava/lang/Object;
.source "CodePointMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RangeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/ibm/icu/util/CodePointMap$Range;",
        ">;"
    }
.end annotation


# instance fields
.field private range:Lcom/ibm/icu/util/CodePointMap$Range;

.field final synthetic this$0:Lcom/ibm/icu/util/CodePointMap;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/util/CodePointMap;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/ibm/icu/util/CodePointMap$RangeIterator;->this$0:Lcom/ibm/icu/util/CodePointMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance p1, Lcom/ibm/icu/util/CodePointMap$Range;

    invoke-direct {p1}, Lcom/ibm/icu/util/CodePointMap$Range;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/util/CodePointMap$RangeIterator;->range:Lcom/ibm/icu/util/CodePointMap$Range;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/CodePointMap;Lcom/ibm/icu/util/CodePointMap$1;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/CodePointMap$RangeIterator;-><init>(Lcom/ibm/icu/util/CodePointMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointMap$RangeIterator;->range:Lcom/ibm/icu/util/CodePointMap$Range;

    invoke-static {v0}, Lcom/ibm/icu/util/CodePointMap$Range;->access$000(Lcom/ibm/icu/util/CodePointMap$Range;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/util/CodePointMap$RangeIterator;->range:Lcom/ibm/icu/util/CodePointMap$Range;

    invoke-static {v0}, Lcom/ibm/icu/util/CodePointMap$Range;->access$000(Lcom/ibm/icu/util/CodePointMap$Range;)I

    move-result v0

    const v1, 0x10ffff

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/ibm/icu/util/CodePointMap$Range;
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointMap$RangeIterator;->this$0:Lcom/ibm/icu/util/CodePointMap;

    iget-object v1, p0, Lcom/ibm/icu/util/CodePointMap$RangeIterator;->range:Lcom/ibm/icu/util/CodePointMap$Range;

    invoke-static {v1}, Lcom/ibm/icu/util/CodePointMap$Range;->access$000(Lcom/ibm/icu/util/CodePointMap$Range;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ibm/icu/util/CodePointMap$RangeIterator;->range:Lcom/ibm/icu/util/CodePointMap$Range;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/ibm/icu/util/CodePointMap;->getRange(ILcom/ibm/icu/util/CodePointMap$ValueFilter;Lcom/ibm/icu/util/CodePointMap$Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointMap$RangeIterator;->range:Lcom/ibm/icu/util/CodePointMap$Range;

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/ibm/icu/util/CodePointMap$RangeIterator;->next()Lcom/ibm/icu/util/CodePointMap$Range;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
