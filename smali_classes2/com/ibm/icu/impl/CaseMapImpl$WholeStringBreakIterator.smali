.class final Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;
.super Lcom/ibm/icu/text/BreakIterator;
.source "CaseMapImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/CaseMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WholeStringBreakIterator"
.end annotation


# instance fields
.field private length:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/ibm/icu/text/BreakIterator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/CaseMapImpl$1;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;-><init>()V

    return-void
.end method

.method private static notImplemented()V
    .locals 2

    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "should not occur"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public current()I
    .locals 1

    .line 326
    invoke-static {}, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 v0, 0x0

    return v0
.end method

.method public first()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public following(I)I
    .locals 0

    .line 320
    invoke-static {}, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 p1, 0x0

    return p1
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    .line 332
    invoke-static {}, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public last()I
    .locals 1

    .line 297
    invoke-static {}, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 1

    .line 309
    iget v0, p0, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    return v0
.end method

.method public next(I)I
    .locals 0

    .line 303
    invoke-static {}, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 p1, 0x0

    return p1
.end method

.method public previous()I
    .locals 1

    .line 314
    invoke-static {}, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;->notImplemented()V

    const/4 v0, 0x0

    return v0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 343
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 348
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 0

    .line 338
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/CaseMapImpl$WholeStringBreakIterator;->length:I

    return-void
.end method
