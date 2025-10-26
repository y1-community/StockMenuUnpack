.class public final Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;
.super Ljava/lang/Object;
.source "CaseMapImpl.java"

# interfaces
.implements Lcom/ibm/icu/impl/UCaseProps$ContextIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CaseMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringContextIterator"
.end annotation


# instance fields
.field protected cpLimit:I

.field protected cpStart:I

.field protected dir:I

.field protected index:I

.field protected limit:I

.field protected s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 30
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    .line 43
    iput p2, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 44
    iput p3, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    .line 45
    iput v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    return-void
.end method


# virtual methods
.method public getCPLength()I
    .locals 2

    .line 117
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCPLimit()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    return v0
.end method

.method public getCPStart()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    return v0
.end method

.method public moveToLimit()V
    .locals 1

    .line 70
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    iput v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    return-void
.end method

.method public next()I
    .locals 3

    .line 143
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    iget-object v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 145
    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    return v0

    .line 147
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    if-lez v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 149
    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public nextCaseMapCP()I
    .locals 3

    .line 85
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 86
    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 88
    iget v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public reset(I)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 126
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 127
    iget p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, -0x1

    .line 130
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 131
    iget p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    .line 135
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->index:I

    :goto_0
    return-void
.end method

.method public setCPStartAndLimit(II)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpStart:I

    .line 97
    iput p2, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->cpLimit:I

    const/4 p1, 0x0

    .line 98
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->dir:I

    return-void
.end method

.method public setLimit(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 60
    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    goto :goto_0

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->s:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$StringContextIterator;->limit:I

    :goto_0
    return-void
.end method
