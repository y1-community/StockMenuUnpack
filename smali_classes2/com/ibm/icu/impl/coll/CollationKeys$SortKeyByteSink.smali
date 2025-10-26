.class public abstract Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;
.super Ljava/lang/Object;
.source "CollationKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/coll/CollationKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SortKeyByteSink"
.end annotation


# instance fields
.field private appended_:I

.field protected buffer_:[B


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    .line 30
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    return-void
.end method


# virtual methods
.method public Append(I)V
    .locals 3

    .line 86
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, v2, v0}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->Resize(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 89
    :cond_1
    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    return-void
.end method

.method public Append([BI)V
    .locals 4

    if-lez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    add-int v1, v0, p2

    .line 72
    iput v1, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    .line 74
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    const/4 v3, 0x0

    if-gt p2, v2, :cond_1

    .line 76
    invoke-static {p1, v3, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0, p1, v3, p2, v0}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->AppendBeyondCapacity([BIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract AppendBeyondCapacity([BIII)V
.end method

.method public GetRemainingCapacity()I
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v0, v0

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public NumberOfBytesAppended()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    return v0
.end method

.method public Overflowed()Z
    .locals 2

    .line 109
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract Resize(II)Z
.end method

.method public setBufferAndAppended([BI)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->buffer_:[B

    .line 41
    iput p2, p0, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;->appended_:I

    return-void
.end method
