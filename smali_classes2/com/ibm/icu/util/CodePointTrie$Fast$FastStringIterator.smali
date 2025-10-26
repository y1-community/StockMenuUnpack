.class final Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;
.super Lcom/ibm/icu/util/CodePointMap$StringIterator;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointTrie$Fast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FastStringIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/util/CodePointTrie$Fast;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/util/CodePointTrie$Fast;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Fast;

    .line 822
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/CodePointMap$StringIterator;-><init>(Lcom/ibm/icu/util/CodePointMap;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/CodePointTrie$Fast;Ljava/lang/CharSequence;ILcom/ibm/icu/util/CodePointTrie$1;)V
    .locals 0

    .line 820
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;-><init>(Lcom/ibm/icu/util/CodePointTrie$Fast;Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public next()Z
    .locals 4

    .line 827
    iget v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 831
    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    .line 833
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 834
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Fast;

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/CodePointTrie$Fast;->fastIndex(I)I

    move-result v0

    goto :goto_0

    .line 837
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    iget-object v3, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    .line 838
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 839
    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    .line 840
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    .line 841
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Fast;

    sget-object v1, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    invoke-virtual {v0, v1, v3}, Lcom/ibm/icu/util/CodePointTrie$Fast;->smallIndex(Lcom/ibm/icu/util/CodePointTrie$Type;I)I

    move-result v0

    goto :goto_0

    .line 843
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Fast;

    iget v0, v0, Lcom/ibm/icu/util/CodePointTrie$Fast;->dataLength:I

    sub-int/2addr v0, v2

    .line 846
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Fast;

    iget-object v1, v1, Lcom/ibm/icu/util/CodePointTrie$Fast;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->value:I

    return v2
.end method

.method public previous()Z
    .locals 4

    .line 852
    iget v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 855
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 856
    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    .line 858
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 859
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Fast;

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/CodePointTrie$Fast;->fastIndex(I)I

    move-result v0

    goto :goto_0

    .line 862
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->s:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    sub-int/2addr v3, v2

    .line 863
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 864
    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->sIndex:I

    .line 865
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    .line 866
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Fast;

    sget-object v1, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->c:I

    invoke-virtual {v0, v1, v3}, Lcom/ibm/icu/util/CodePointTrie$Fast;->smallIndex(Lcom/ibm/icu/util/CodePointTrie$Type;I)I

    move-result v0

    goto :goto_0

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Fast;

    iget v0, v0, Lcom/ibm/icu/util/CodePointTrie$Fast;->dataLength:I

    sub-int/2addr v0, v2

    .line 871
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Fast;

    iget-object v1, v1, Lcom/ibm/icu/util/CodePointTrie$Fast;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast$FastStringIterator;->value:I

    return v2
.end method
