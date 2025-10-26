.class final Lcom/ibm/icu/util/CodePointTrie$Data32;
.super Lcom/ibm/icu/util/CodePointTrie$Data;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Data32"
.end annotation


# instance fields
.field array:[I


# direct methods
.method constructor <init>([I)V
    .locals 1

    const/4 v0, 0x0

    .line 621
    invoke-direct {p0, v0}, Lcom/ibm/icu/util/CodePointTrie$Data;-><init>(Lcom/ibm/icu/util/CodePointTrie$1;)V

    iput-object p1, p0, Lcom/ibm/icu/util/CodePointTrie$Data32;->array:[I

    return-void
.end method


# virtual methods
.method getDataLength()I
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Data32;->array:[I

    array-length v0, v0

    return v0
.end method

.method getFromIndex(I)I
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Data32;->array:[I

    aget p1, v0, p1

    return p1
.end method

.method getValueWidth()Lcom/ibm/icu/util/CodePointTrie$ValueWidth;
    .locals 1

    .line 622
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_32:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    return-object v0
.end method

.method write(Ljava/io/DataOutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Data32;->array:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/util/CodePointTrie$Data32;->array:[I

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    return p1
.end method
