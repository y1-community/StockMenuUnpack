.class public final Lcom/ibm/icu/impl/coll/UVector32;
.super Ljava/lang/Object;
.source "UVector32.java"


# instance fields
.field private buffer:[I

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 46
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->buffer:[I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->length:I

    return-void
.end method

.method private ensureAppendCapacity()V
    .locals 4

    .line 39
    iget v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->length:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/UVector32;->buffer:[I

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 40
    array-length v2, v1

    const v3, 0xffff

    if-gt v2, v3, :cond_0

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_0
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    .line 41
    :goto_0
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 42
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput-object v2, p0, Lcom/ibm/icu/impl/coll/UVector32;->buffer:[I

    :cond_1
    return-void
.end method


# virtual methods
.method public addElement(I)V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/UVector32;->ensureAppendCapacity()V

    .line 25
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->buffer:[I

    iget v1, p0, Lcom/ibm/icu/impl/coll/UVector32;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/coll/UVector32;->length:I

    aput p1, v0, v1

    return-void
.end method

.method public elementAti(I)I
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->buffer:[I

    aget p1, v0, p1

    return p1
.end method

.method public getBuffer()[I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->buffer:[I

    return-object v0
.end method

.method public insertElementAt(II)V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/UVector32;->ensureAppendCapacity()V

    .line 30
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->buffer:[I

    add-int/lit8 v1, p2, 0x1

    iget v2, p0, Lcom/ibm/icu/impl/coll/UVector32;->length:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->buffer:[I

    aput p1, v0, p2

    .line 32
    iget p1, p0, Lcom/ibm/icu/impl/coll/UVector32;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ibm/icu/impl/coll/UVector32;->length:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 19
    iget v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAllElements()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->length:I

    return-void
.end method

.method public setElementAt(II)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->buffer:[I

    aput p1, v0, p2

    return-void
.end method

.method public size()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/ibm/icu/impl/coll/UVector32;->length:I

    return v0
.end method
