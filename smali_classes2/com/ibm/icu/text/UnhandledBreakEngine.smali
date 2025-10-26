.class final Lcom/ibm/icu/text/UnhandledBreakEngine;
.super Ljava/lang/Object;
.source "UnhandledBreakEngine.java"

# interfaces
.implements Lcom/ibm/icu/text/LanguageBreakEngine;


# instance fields
.field volatile fHandled:Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method public findBreaks(Ljava/text/CharacterIterator;IILcom/ibm/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 1

    .line 48
    iget-object p2, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Lcom/ibm/icu/text/UnicodeSet;

    .line 49
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p4

    .line 50
    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    if-ge v0, p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 51
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 52
    invoke-static {p1}, Lcom/ibm/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result p4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public handleChar(I)V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Lcom/ibm/icu/text/UnicodeSet;

    .line 65
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x100a

    .line 66
    invoke-static {p1, v1}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result p1

    .line 67
    new-instance v2, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 68
    invoke-virtual {v2, v1, p1}, Lcom/ibm/icu/text/UnicodeSet;->applyIntPropertyValue(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 69
    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    .line 70
    iput-object v2, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Lcom/ibm/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method

.method public handles(I)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ibm/icu/text/UnhandledBreakEngine;->fHandled:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result p1

    return p1
.end method
