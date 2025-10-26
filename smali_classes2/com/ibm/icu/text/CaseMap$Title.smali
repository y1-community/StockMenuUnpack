.class public final Lcom/ibm/icu/text/CaseMap$Title;
.super Lcom/ibm/icu/text/CaseMap;
.source "CaseMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CaseMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Title"
.end annotation


# static fields
.field private static final DEFAULT:Lcom/ibm/icu/text/CaseMap$Title;

.field private static final OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Title;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 194
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Title;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Title;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/text/CaseMap$Title;->DEFAULT:Lcom/ibm/icu/text/CaseMap$Title;

    .line 195
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Title;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Title;-><init>(I)V

    sput-object v0, Lcom/ibm/icu/text/CaseMap$Title;->OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Title;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/CaseMap;-><init>(ILcom/ibm/icu/text/CaseMap$1;)V

    return-void
.end method

.method static synthetic access$200()Lcom/ibm/icu/text/CaseMap$Title;
    .locals 1

    .line 193
    sget-object v0, Lcom/ibm/icu/text/CaseMap$Title;->DEFAULT:Lcom/ibm/icu/text/CaseMap$Title;

    return-object v0
.end method


# virtual methods
.method public adjustToCased()Lcom/ibm/icu/text/CaseMap$Title;
    .locals 3

    .line 302
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Title;

    iget v1, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v2, 0x400

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/CaseMapImpl;->addTitleAdjustmentOption(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public apply(Ljava/util/Locale;Lcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(",
            "Ljava/util/Locale;",
            "Lcom/ibm/icu/text/BreakIterator;",
            "Ljava/lang/CharSequence;",
            "TA;",
            "Lcom/ibm/icu/text/Edits;",
            ")TA;"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 366
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 368
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/CaseMapImpl;->getTitleBreakIterator(Ljava/util/Locale;ILcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object v3

    .line 369
    invoke-virtual {v3, p3}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/lang/CharSequence;)V

    .line 371
    invoke-static {p1}, Lcom/ibm/icu/text/CaseMap;->access$500(Ljava/util/Locale;)I

    move-result v1

    iget v2, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 370
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/CaseMapImpl;->toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;Ljava/lang/Appendable;Lcom/ibm/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Locale;Lcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    .line 330
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    .line 332
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/CaseMapImpl;->getTitleBreakIterator(Ljava/util/Locale;ILcom/ibm/icu/text/BreakIterator;)Lcom/ibm/icu/text/BreakIterator;

    move-result-object p2

    .line 333
    invoke-virtual {p2, p3}, Lcom/ibm/icu/text/BreakIterator;->setText(Ljava/lang/CharSequence;)V

    .line 334
    invoke-static {p1}, Lcom/ibm/icu/text/CaseMap;->access$500(Ljava/util/Locale;)I

    move-result p1

    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    invoke-static {p1, v0, p2, p3}, Lcom/ibm/icu/impl/CaseMapImpl;->toTitle(IILcom/ibm/icu/text/BreakIterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public noBreakAdjustment()Lcom/ibm/icu/text/CaseMap$Title;
    .locals 3

    .line 278
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Title;

    iget v1, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v2, 0x200

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/CaseMapImpl;->addTitleAdjustmentOption(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public noLowercase()Lcom/ibm/icu/text/CaseMap$Title;
    .locals 2

    .line 259
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Title;

    iget v1, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    or-int/lit16 v1, v1, 0x100

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public omitUnchangedText()Lcom/ibm/icu/text/CaseMap$Title;
    .locals 3

    .line 238
    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Title;

    iget v2, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    or-int/2addr v1, v2

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0

    .line 239
    :cond_1
    :goto_0
    sget-object v0, Lcom/ibm/icu/text/CaseMap$Title;->OMIT_UNCHANGED:Lcom/ibm/icu/text/CaseMap$Title;

    return-object v0
.end method

.method public bridge synthetic omitUnchangedText()Lcom/ibm/icu/text/CaseMap;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/ibm/icu/text/CaseMap$Title;->omitUnchangedText()Lcom/ibm/icu/text/CaseMap$Title;

    move-result-object v0

    return-object v0
.end method

.method public sentences()Lcom/ibm/icu/text/CaseMap$Title;
    .locals 3

    .line 228
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Title;

    iget v1, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/CaseMapImpl;->addTitleIteratorOption(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method

.method public wholeString()Lcom/ibm/icu/text/CaseMap$Title;
    .locals 3

    .line 211
    new-instance v0, Lcom/ibm/icu/text/CaseMap$Title;

    iget v1, p0, Lcom/ibm/icu/text/CaseMap$Title;->internalOptions:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/ibm/icu/impl/CaseMapImpl;->addTitleIteratorOption(II)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/CaseMap$Title;-><init>(I)V

    return-object v0
.end method
