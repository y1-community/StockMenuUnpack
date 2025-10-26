.class public Lcom/ibm/icu/impl/IntTrie;
.super Lcom/ibm/icu/impl/Trie;
.source "IntTrie.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private m_data_:[I

.field private m_initialValue_:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IILcom/ibm/icu/impl/Trie$DataManipulate;)V
    .locals 4

    const/16 v0, 0x820

    new-array v0, v0, [C

    const/16 v1, 0x200

    .line 66
    invoke-direct {p0, v0, v1, p3}, Lcom/ibm/icu/impl/Trie;-><init>([CILcom/ibm/icu/impl/Trie$DataManipulate;)V

    const/16 p3, 0x120

    const/16 v0, 0x100

    if-eq p2, p1, :cond_0

    const/16 v1, 0x120

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    .line 78
    :goto_0
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    .line 79
    iput v1, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataLength_:I

    .line 81
    iput p1, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 89
    iget-object v2, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-eq p2, p1, :cond_3

    const/16 p1, 0x40

    int-to-char p1, p1

    const/16 v1, 0x6c0

    const/16 v2, 0x6e0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 98
    iget-object v3, p0, Lcom/ibm/icu/impl/IntTrie;->m_index_:[C

    aput-char p1, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v0, p3, :cond_3

    .line 104
    iget-object p1, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/Trie$DataManipulate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/Trie;-><init>(Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    .line 44
    invoke-virtual {p0}, Lcom/ibm/icu/impl/IntTrie;->isIntTrie()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Data given does not belong to a int trie."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>([C[IIILcom/ibm/icu/impl/Trie$DataManipulate;)V
    .locals 0

    .line 325
    invoke-direct {p0, p1, p4, p5}, Lcom/ibm/icu/impl/Trie;-><init>([CILcom/ibm/icu/impl/Trie$DataManipulate;)V

    .line 326
    iput-object p2, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    .line 327
    array-length p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataLength_:I

    .line 328
    iput p3, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 228
    invoke-super {p0, p1}, Lcom/ibm/icu/impl/Trie;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 229
    instance-of v0, p1, Lcom/ibm/icu/impl/IntTrie;

    if-eqz v0, :cond_1

    .line 230
    check-cast p1, Lcom/ibm/icu/impl/IntTrie;

    .line 231
    iget v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    iget v2, p1, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    iget-object p1, p1, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    .line 232
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public final getBMPValue(C)I
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/IntTrie;->getBMPOffset(C)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method public final getCodePointValue(I)I
    .locals 2

    if-ltz p1, :cond_0

    const v0, 0xd800

    if-ge p1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_index_:[C

    shr-int/lit8 v1, p1, 0x5

    aget-char v0, v0, v1

    shl-int/lit8 v0, v0, 0x2

    and-int/lit8 p1, p1, 0x1f

    add-int/2addr v0, p1

    .line 127
    iget-object p1, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aget p1, p1, v0

    return p1

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/IntTrie;->getCodePointOffset(I)I

    move-result p1

    if-ltz p1, :cond_1

    .line 132
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aget p1, v0, p1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    :goto_0
    return p1
.end method

.method protected final getInitialValue()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    return v0
.end method

.method public final getLatin1LinearValue(C)I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    add-int/lit8 p1, p1, 0x20

    aget p1, v0, p1

    return p1
.end method

.method public final getLeadValue(C)I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/IntTrie;->getLeadOffset(C)I

    move-result p1

    aget p1, v0, p1

    return p1
.end method

.method protected final getSurrogateOffset(CC)I
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/IntTrie;->getLeadValue(C)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result p1

    if-lez p1, :cond_0

    and-int/lit16 p2, p2, 0x3ff

    int-to-char p2, p2

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/IntTrie;->getRawOffset(IC)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 273
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The field DataManipulate in this Trie is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getSurrogateValue(CC)I
    .locals 1

    .line 168
    invoke-static {p1}, Lcom/ibm/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/ibm/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/IntTrie;->getSurrogateOffset(CC)I

    move-result p1

    if-lez p1, :cond_0

    .line 177
    iget-object p2, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aget p1, p2, p1

    return p1

    .line 181
    :cond_0
    iget p1, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    return p1

    .line 169
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument characters do not form a supplementary character"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getTrailValue(IC)I
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataManipulate_:Lcom/ibm/icu/impl/Trie$DataManipulate;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    and-int/lit16 p2, p2, 0x3ff

    int-to-char p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/IntTrie;->getRawOffset(IC)I

    move-result p1

    aget p1, v0, p1

    return p1

    .line 203
    :cond_0
    iget p1, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    return p1

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The field DataManipulate in this Trie is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final getValue(I)I
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    aget p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method protected final unserialize(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 257
    invoke-super {p0, p1}, Lcom/ibm/icu/impl/Trie;->unserialize(Ljava/nio/ByteBuffer;)V

    .line 259
    iget v0, p0, Lcom/ibm/icu/impl/IntTrie;->m_dataLength_:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/IntTrie;->m_data_:[I

    .line 260
    aget p1, p1, v1

    iput p1, p0, Lcom/ibm/icu/impl/IntTrie;->m_initialValue_:I

    return-void
.end method
