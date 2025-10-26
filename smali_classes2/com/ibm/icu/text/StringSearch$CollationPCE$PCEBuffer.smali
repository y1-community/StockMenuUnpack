.class final Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/StringSearch$CollationPCE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PCEBuffer"
.end annotation


# instance fields
.field private bufferIndex_:I

.field private buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    .line 1854
    iput-object v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    const/4 v0, 0x0

    .line 1855
    iput v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/StringSearch$1;)V
    .locals 0

    .line 1853
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method empty()Z
    .locals 1

    .line 1862
    iget v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method get()Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;
    .locals 2

    .line 1881
    iget v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    if-lez v0, :cond_0

    .line 1882
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method put(JII)V
    .locals 4

    .line 1867
    iget v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1868
    array-length v0, v1

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    .line 1869
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1870
    iput-object v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    .line 1872
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    iget v1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    new-instance v2, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;-><init>(Lcom/ibm/icu/text/StringSearch$1;)V

    aput-object v2, v0, v1

    .line 1873
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    iget v1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    iput-wide p1, v0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;->ce_:J

    .line 1874
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    iget p2, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object p1, p1, p2

    iput p3, p1, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;->low_:I

    .line 1875
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;

    iget p2, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    aget-object p1, p1, p2

    iput p4, p1, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEI;->high_:I

    .line 1877
    iget p1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1858
    iput v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$PCEBuffer;->bufferIndex_:I

    return-void
.end method
