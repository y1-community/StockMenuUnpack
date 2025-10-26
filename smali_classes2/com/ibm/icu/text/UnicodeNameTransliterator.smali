.class Lcom/ibm/icu/text/UnicodeNameTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "UnicodeNameTransliterator.java"


# static fields
.field static final CLOSE_DELIM:C = '}'

.field static final OPEN_DELIM:Ljava/lang/String; = "\\N{"

.field static final OPEN_DELIM_LEN:I = 0x3

.field static final _ID:Ljava/lang/String; = "Any-Name"


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/UnicodeFilter;)V
    .locals 1

    const-string v0, "Any-Name"

    .line 39
    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    return-void
.end method

.method static register()V
    .locals 2

    .line 27
    new-instance v0, Lcom/ibm/icu/text/UnicodeNameTransliterator$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeNameTransliterator$1;-><init>()V

    const-string v1, "Any-Name"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 83
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/UnicodeNameTransliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    const/16 p1, 0x30

    const/16 p2, 0x39

    .line 86
    invoke-virtual {p3, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->addAll(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const/16 p2, 0x41

    const/16 p3, 0x5a

    .line 87
    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/text/UnicodeSet;->addAll(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const/16 p2, 0x2d

    .line 88
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const/16 p2, 0x20

    .line 89
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const-string p2, "\\N{"

    .line 90
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const/16 p2, 0x7d

    .line 91
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const/16 p2, 0x61

    const/16 p3, 0x7a

    .line 92
    invoke-virtual {p1, p2, p3}, Lcom/ibm/icu/text/UnicodeSet;->addAll(II)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const/16 p2, 0x3c

    .line 93
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const/16 p2, 0x28

    .line 94
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    const/16 p2, 0x29

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method

.method protected handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 5

    .line 48
    iget p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    .line 49
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\N{"

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-ge p3, v0, :cond_1

    .line 57
    invoke-interface {p1, p3}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v2

    .line 58
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->getExtendedName(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x3

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int v3, p3, v2

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p3, v3, v4}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/2addr p3, v3

    sub-int/2addr v3, v2

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 73
    :cond_1
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int v1, v0, v1

    add-int/2addr p1, v1

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    .line 74
    iput v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 75
    iput p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    return-void
.end method
