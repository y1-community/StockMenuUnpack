.class Lcom/ibm/icu/text/ReplaceableContextIterator;
.super Ljava/lang/Object;
.source "ReplaceableContextIterator.java"

# interfaces
.implements Lcom/ibm/icu/impl/UCaseProps$ContextIterator;


# instance fields
.field protected contextLimit:I

.field protected contextStart:I

.field protected cpLimit:I

.field protected cpStart:I

.field protected dir:I

.field protected index:I

.field protected limit:I

.field protected reachedLimit:Z

.field protected rep:Lcom/ibm/icu/text/Replaceable;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextLimit:I

    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextStart:I

    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpStart:I

    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->limit:I

    .line 39
    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->dir:I

    .line 40
    iput-boolean v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method


# virtual methods
.method public didReachLimit()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return v0
.end method

.method public getCaseMapCPStart()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpStart:I

    return v0
.end method

.method public next()I
    .locals 3

    .line 176
    iget v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->dir:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 177
    iget v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    iget v2, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextLimit:I

    if-ge v0, v2, :cond_0

    .line 178
    iget-object v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v1, v0}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v0

    .line 179
    iget v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    return v0

    .line 183
    :cond_0
    iput-boolean v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    .line 185
    iget v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    iget v2, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextStart:I

    if-le v0, v2, :cond_2

    .line 186
    iget-object v2, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    sub-int/2addr v0, v1

    invoke-interface {v2, v0}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v0

    .line 187
    iget v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    return v0

    :cond_2
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public nextCaseMapCP()I
    .locals 3

    .line 121
    iget v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpLimit:I

    iget v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->limit:I

    if-ge v0, v1, :cond_0

    .line 122
    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpStart:I

    .line 123
    iget-object v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v1, v0}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v0

    .line 124
    iget v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpLimit:I

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpLimit:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public replace(Ljava/lang/String;)I
    .locals 4

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpLimit:I

    iget v2, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpStart:I

    sub-int v3, v1, v2

    sub-int/2addr v0, v3

    .line 140
    iget-object v3, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v3, v2, v1, p1}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 141
    iget p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpLimit:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpLimit:I

    .line 142
    iget p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->limit:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->limit:I

    .line 143
    iget p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextLimit:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextLimit:I

    return v0
.end method

.method public reset(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 159
    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->dir:I

    .line 160
    iget p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    .line 163
    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->dir:I

    .line 164
    iget p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpStart:I

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    goto :goto_0

    .line 167
    :cond_1
    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->dir:I

    .line 168
    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    .line 170
    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method

.method public setContextLimits(II)V
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    .line 97
    iput v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextStart:I

    goto :goto_0

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 99
    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextStart:I

    goto :goto_0

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextStart:I

    .line 103
    :goto_0
    iget p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextStart:I

    if-ge p2, p1, :cond_2

    .line 104
    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextLimit:I

    goto :goto_1

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result p1

    if-gt p2, p1, :cond_3

    .line 106
    iput p2, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextLimit:I

    goto :goto_1

    .line 108
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextLimit:I

    .line 110
    :goto_1
    iput-boolean v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpStart:I

    const/4 p1, 0x0

    .line 61
    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    .line 62
    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->dir:I

    .line 63
    iput-boolean p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method

.method public setLimit(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {v0}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 83
    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->limit:I

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->limit:I

    :goto_0
    const/4 p1, 0x0

    .line 87
    iput-boolean p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method

.method public setText(Lcom/ibm/icu/text/Replaceable;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->rep:Lcom/ibm/icu/text/Replaceable;

    .line 49
    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextLimit:I

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->limit:I

    const/4 p1, 0x0

    .line 50
    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->contextStart:I

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->index:I

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpLimit:I

    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->cpStart:I

    .line 51
    iput p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->dir:I

    .line 52
    iput-boolean p1, p0, Lcom/ibm/icu/text/ReplaceableContextIterator;->reachedLimit:Z

    return-void
.end method
