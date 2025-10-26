.class Lcom/ibm/icu/text/RemoveTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "RemoveTransliterator.java"


# static fields
.field private static final _ID:Ljava/lang/String; = "Any-Remove"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Any-Remove"

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    return-void
.end method

.method static register()V
    .locals 3

    .line 27
    new-instance v0, Lcom/ibm/icu/text/RemoveTransliterator$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/RemoveTransliterator$1;-><init>()V

    const-string v1, "Any-Remove"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    const-string v0, "Remove"

    const-string v1, "Null"

    const/4 v2, 0x0

    .line 33
    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RemoveTransliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 64
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method protected handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 2

    .line 51
    iget p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    const-string v1, ""

    invoke-interface {p1, p3, v0, v1}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 52
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iget p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    sub-int/2addr p1, p3

    .line 53
    iget p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    sub-int/2addr p3, p1

    iput p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    .line 54
    iget p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int/2addr p3, p1

    iput p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    return-void
.end method
