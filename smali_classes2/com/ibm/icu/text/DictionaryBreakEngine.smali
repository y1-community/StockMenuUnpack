.class abstract Lcom/ibm/icu/text/DictionaryBreakEngine;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"

# interfaces
.implements Lcom/ibm/icu/text/LanguageBreakEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;,
        Lcom/ibm/icu/text/DictionaryBreakEngine$PossibleWord;
    }
.end annotation


# instance fields
.field fSet:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method abstract divideUpDictionaryRange(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
.end method

.method public findBreaks(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 3

    .line 192
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result p2

    .line 196
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    .line 197
    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-ge v1, p3, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 199
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/ibm/icu/text/DictionaryBreakEngine;->divideUpDictionaryRange(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I

    move-result p2

    .line 205
    invoke-interface {p1, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    return p2
.end method

.method public handles(I)Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method setCharacters(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 211
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Lcom/ibm/icu/text/UnicodeSet;)V

    iput-object v0, p0, Lcom/ibm/icu/text/DictionaryBreakEngine;->fSet:Lcom/ibm/icu/text/UnicodeSet;

    .line 212
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->compact()Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method
