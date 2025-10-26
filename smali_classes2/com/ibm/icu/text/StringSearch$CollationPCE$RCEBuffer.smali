.class final Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/StringSearch$CollationPCE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RCEBuffer"
.end annotation


# instance fields
.field private bufferIndex_:I

.field private buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    .line 1896
    iput-object v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    const/4 v0, 0x0

    .line 1897
    iput v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/StringSearch$1;)V
    .locals 0

    .line 1895
    invoke-direct {p0}, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method empty()Z
    .locals 1

    .line 1900
    iget v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method get()Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;
    .locals 2

    .line 1918
    iget v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    if-lez v0, :cond_0

    .line 1919
    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method put(III)V
    .locals 4

    .line 1904
    iget v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    iget-object v1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 1905
    array-length v0, v1

    add-int/lit8 v0, v0, 0x8

    new-array v0, v0, [Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    .line 1906
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1907
    iput-object v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    .line 1909
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    iget v1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    new-instance v2, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;-><init>(Lcom/ibm/icu/text/StringSearch$1;)V

    aput-object v2, v0, v1

    .line 1910
    iget-object v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    iget v1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    aget-object v0, v0, v1

    iput p1, v0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;->ce_:I

    .line 1911
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    iget v0, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    aget-object p1, p1, v0

    iput p2, p1, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;->low_:I

    .line 1912
    iget-object p1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->buffer_:[Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;

    iget p2, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    aget-object p1, p1, p2

    iput p3, p1, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEI;->high_:I

    .line 1914
    iget p1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/ibm/icu/text/StringSearch$CollationPCE$RCEBuffer;->bufferIndex_:I

    return-void
.end method
