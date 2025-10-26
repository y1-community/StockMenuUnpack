.class final Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;
.super Lcom/ibm/icu/util/CodePointMap$StringIterator;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointTrie$Small;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmallStringIterator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/util/CodePointTrie$Small;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/util/CodePointTrie$Small;Ljava/lang/CharSequence;I)V
    .locals 0

    .line 938
    iput-object p1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Small;

    .line 939
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/CodePointMap$StringIterator;-><init>(Lcom/ibm/icu/util/CodePointMap;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/CodePointTrie$Small;Ljava/lang/CharSequence;ILcom/ibm/icu/util/CodePointTrie$1;)V
    .locals 0

    .line 937
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;-><init>(Lcom/ibm/icu/util/CodePointTrie$Small;Ljava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public next()Z
    .locals 4

    .line 944
    iget v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 948
    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    .line 950
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 951
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Small;

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/CodePointTrie$Small;->cpIndex(I)I

    move-result v0

    goto :goto_0

    .line 954
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    iget-object v3, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    .line 955
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 956
    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    .line 957
    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    .line 958
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Small;

    sget-object v1, Lcom/ibm/icu/util/CodePointTrie$Type;->SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;

    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    invoke-virtual {v0, v1, v3}, Lcom/ibm/icu/util/CodePointTrie$Small;->smallIndex(Lcom/ibm/icu/util/CodePointTrie$Type;I)I

    move-result v0

    goto :goto_0

    .line 960
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Small;

    iget v0, v0, Lcom/ibm/icu/util/CodePointTrie$Small;->dataLength:I

    sub-int/2addr v0, v2

    .line 963
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Small;

    iget-object v1, v1, Lcom/ibm/icu/util/CodePointTrie$Small;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->value:I

    return v2
.end method

.method public previous()Z
    .locals 4

    .line 969
    iget v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 973
    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    .line 975
    invoke-static {v0}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 976
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Small;

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    invoke-virtual {v0, v1}, Lcom/ibm/icu/util/CodePointTrie$Small;->cpIndex(I)I

    move-result v0

    goto :goto_0

    .line 979
    :cond_1
    invoke-static {v0}, Lcom/ibm/icu/impl/Normalizer2Impl$UTF16Plus;->isSurrogateLead(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->s:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    sub-int/2addr v3, v2

    .line 980
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 981
    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->sIndex:I

    .line 982
    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    .line 983
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Small;

    sget-object v1, Lcom/ibm/icu/util/CodePointTrie$Type;->SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;

    iget v3, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->c:I

    invoke-virtual {v0, v1, v3}, Lcom/ibm/icu/util/CodePointTrie$Small;->smallIndex(Lcom/ibm/icu/util/CodePointTrie$Type;I)I

    move-result v0

    goto :goto_0

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Small;

    iget v0, v0, Lcom/ibm/icu/util/CodePointTrie$Small;->dataLength:I

    sub-int/2addr v0, v2

    .line 988
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->this$0:Lcom/ibm/icu/util/CodePointTrie$Small;

    iget-object v1, v1, Lcom/ibm/icu/util/CodePointTrie$Small;->data:Lcom/ibm/icu/util/CodePointTrie$Data;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/CodePointTrie$Data;->getFromIndex(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;->value:I

    return v2
.end method
