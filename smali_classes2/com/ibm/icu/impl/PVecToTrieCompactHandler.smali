.class public Lcom/ibm/icu/impl/PVecToTrieCompactHandler;
.super Ljava/lang/Object;
.source "PVecToTrieCompactHandler.java"

# interfaces
.implements Lcom/ibm/icu/impl/PropsVectors$CompactHandler;


# instance fields
.field public builder:Lcom/ibm/icu/impl/IntTrieBuilder;

.field public initialValue:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRowIndexForErrorValue(I)V
    .locals 0

    return-void
.end method

.method public setRowIndexForInitialValue(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/ibm/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    return-void
.end method

.method public setRowIndexForRange(III)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/ibm/icu/impl/PVecToTrieCompactHandler;->builder:Lcom/ibm/icu/impl/IntTrieBuilder;

    const/4 v1, 0x1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ibm/icu/impl/IntTrieBuilder;->setRange(IIIZ)Z

    return-void
.end method

.method public startRealValues(I)V
    .locals 7

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 42
    new-instance p1, Lcom/ibm/icu/impl/IntTrieBuilder;

    const/4 v2, 0x0

    const v3, 0x186a0

    iget v5, p0, Lcom/ibm/icu/impl/PVecToTrieCompactHandler;->initialValue:I

    const/4 v6, 0x0

    move-object v1, p1

    move v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/impl/IntTrieBuilder;-><init>([IIIIZ)V

    iput-object p1, p0, Lcom/ibm/icu/impl/PVecToTrieCompactHandler;->builder:Lcom/ibm/icu/impl/IntTrieBuilder;

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
