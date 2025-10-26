.class public final Lcom/ibm/icu/impl/coll/UVector64;
.super Ljava/lang/Object;
.source "UVector64.java"


# instance fields
.field private buffer:[J

.field private length:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [J

    .line 46
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->buffer:[J

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->length:I

    return-void
.end method

.method private ensureAppendCapacity()V
    .locals 4

    .line 39
    iget v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->length:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/UVector64;->buffer:[J

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
    new-array v2, v2, [J

    const/4 v3, 0x0

    .line 42
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    iput-object v2, p0, Lcom/ibm/icu/impl/coll/UVector64;->buffer:[J

    :cond_1
    return-void
.end method


# virtual methods
.method public addElement(J)V
    .locals 3

    .line 24
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/UVector64;->ensureAppendCapacity()V

    .line 25
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->buffer:[J

    iget v1, p0, Lcom/ibm/icu/impl/coll/UVector64;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/impl/coll/UVector64;->length:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public elementAti(I)J
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->buffer:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getBuffer()[J
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->buffer:[J

    return-object v0
.end method

.method public insertElementAt(JI)V
    .locals 3

    .line 29
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/UVector64;->ensureAppendCapacity()V

    .line 30
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->buffer:[J

    add-int/lit8 v1, p3, 0x1

    iget v2, p0, Lcom/ibm/icu/impl/coll/UVector64;->length:I

    sub-int/2addr v2, p3

    invoke-static {v0, p3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->buffer:[J

    aput-wide p1, v0, p3

    .line 32
    iget p1, p0, Lcom/ibm/icu/impl/coll/UVector64;->length:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ibm/icu/impl/coll/UVector64;->length:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 19
    iget v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->length:I

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
    iput v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->length:I

    return-void
.end method

.method public setElementAt(JI)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->buffer:[J

    aput-wide p1, v0, p3

    return-void
.end method

.method public size()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/ibm/icu/impl/coll/UVector64;->length:I

    return v0
.end method
