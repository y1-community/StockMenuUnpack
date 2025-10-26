.class Lcom/ibm/icu/text/EscapeTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "EscapeTransliterator.java"


# instance fields
.field private grokSupplementals:Z

.field private minDigits:I

.field private prefix:Ljava/lang/String;

.field private radix:I

.field private suffix:Ljava/lang/String;

.field private supplementalHandler:Lcom/ibm/icu/text/EscapeTransliterator;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/ibm/icu/text/EscapeTransliterator;)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    .line 166
    iput-object p2, p0, Lcom/ibm/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/ibm/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    .line 168
    iput p4, p0, Lcom/ibm/icu/text/EscapeTransliterator;->radix:I

    .line 169
    iput p5, p0, Lcom/ibm/icu/text/EscapeTransliterator;->minDigits:I

    .line 170
    iput-boolean p6, p0, Lcom/ibm/icu/text/EscapeTransliterator;->grokSupplementals:Z

    .line 171
    iput-object p7, p0, Lcom/ibm/icu/text/EscapeTransliterator;->supplementalHandler:Lcom/ibm/icu/text/EscapeTransliterator;

    return-void
.end method

.method static register()V
    .locals 2

    .line 84
    new-instance v0, Lcom/ibm/icu/text/EscapeTransliterator$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/EscapeTransliterator$1;-><init>()V

    const-string v1, "Any-Hex/Unicode"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 93
    new-instance v0, Lcom/ibm/icu/text/EscapeTransliterator$2;

    invoke-direct {v0}, Lcom/ibm/icu/text/EscapeTransliterator$2;-><init>()V

    const-string v1, "Any-Hex/Java"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 102
    new-instance v0, Lcom/ibm/icu/text/EscapeTransliterator$3;

    invoke-direct {v0}, Lcom/ibm/icu/text/EscapeTransliterator$3;-><init>()V

    const-string v1, "Any-Hex/C"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 112
    new-instance v0, Lcom/ibm/icu/text/EscapeTransliterator$4;

    invoke-direct {v0}, Lcom/ibm/icu/text/EscapeTransliterator$4;-><init>()V

    const-string v1, "Any-Hex/XML"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 121
    new-instance v0, Lcom/ibm/icu/text/EscapeTransliterator$5;

    invoke-direct {v0}, Lcom/ibm/icu/text/EscapeTransliterator$5;-><init>()V

    const-string v1, "Any-Hex/XML10"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 130
    new-instance v0, Lcom/ibm/icu/text/EscapeTransliterator$6;

    invoke-direct {v0}, Lcom/ibm/icu/text/EscapeTransliterator$6;-><init>()V

    const-string v1, "Any-Hex/Perl"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 139
    new-instance v0, Lcom/ibm/icu/text/EscapeTransliterator$7;

    invoke-direct {v0}, Lcom/ibm/icu/text/EscapeTransliterator$7;-><init>()V

    const-string v1, "Any-Hex/Plain"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    .line 148
    new-instance v0, Lcom/ibm/icu/text/EscapeTransliterator$8;

    invoke-direct {v0}, Lcom/ibm/icu/text/EscapeTransliterator$8;-><init>()V

    const-string v1, "Any-Hex"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->registerFactory(Ljava/lang/String;Lcom/ibm/icu/text/Transliterator$Factory;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 4

    .line 225
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/EscapeTransliterator;->getFilterAsUnicodeSet(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-object p2, p0

    :goto_0
    if-eqz p2, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p2, Lcom/ibm/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 229
    iget-object v0, p2, Lcom/ibm/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 231
    :goto_1
    iget v2, p2, Lcom/ibm/icu/text/EscapeTransliterator;->radix:I

    if-ge v1, v2, :cond_0

    .line 232
    iget v3, p2, Lcom/ibm/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 234
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 226
    :cond_1
    iget-object p2, p2, Lcom/ibm/icu/text/EscapeTransliterator;->supplementalHandler:Lcom/ibm/icu/text/EscapeTransliterator;

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 9

    .line 180
    iget p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    .line 181
    iget v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/ibm/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge p3, v0, :cond_4

    .line 188
    iget-boolean v5, p0, Lcom/ibm/icu/text/EscapeTransliterator;->grokSupplementals:Z

    if-eqz v5, :cond_0

    invoke-interface {p1, p3}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-interface {p1, p3}, Lcom/ibm/icu/text/Replaceable;->charAt(I)C

    move-result v5

    .line 189
    :goto_1
    iget-boolean v6, p0, Lcom/ibm/icu/text/EscapeTransliterator;->grokSupplementals:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v6

    goto :goto_2

    :cond_1
    const/4 v6, 0x1

    :goto_2
    const/high16 v8, -0x10000

    and-int/2addr v8, v5

    if-eqz v8, :cond_2

    .line 191
    iget-object v8, p0, Lcom/ibm/icu/text/EscapeTransliterator;->supplementalHandler:Lcom/ibm/icu/text/EscapeTransliterator;

    if-eqz v8, :cond_2

    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 193
    iget-object v4, p0, Lcom/ibm/icu/text/EscapeTransliterator;->supplementalHandler:Lcom/ibm/icu/text/EscapeTransliterator;

    iget-object v4, v4, Lcom/ibm/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v4, p0, Lcom/ibm/icu/text/EscapeTransliterator;->supplementalHandler:Lcom/ibm/icu/text/EscapeTransliterator;

    iget v8, v4, Lcom/ibm/icu/text/EscapeTransliterator;->radix:I

    iget v4, v4, Lcom/ibm/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v1, v5, v8, v4}, Lcom/ibm/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    .line 196
    iget-object v4, p0, Lcom/ibm/icu/text/EscapeTransliterator;->supplementalHandler:Lcom/ibm/icu/text/EscapeTransliterator;

    iget-object v4, v4, Lcom/ibm/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    goto :goto_4

    :cond_2
    if-eqz v4, :cond_3

    .line 200
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 201
    iget-object v4, p0, Lcom/ibm/icu/text/EscapeTransliterator;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_3

    .line 204
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 206
    :goto_3
    iget v7, p0, Lcom/ibm/icu/text/EscapeTransliterator;->radix:I

    iget v8, p0, Lcom/ibm/icu/text/EscapeTransliterator;->minDigits:I

    invoke-static {v1, v5, v7, v8}, Lcom/ibm/icu/impl/Utility;->appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;

    .line 207
    iget-object v5, p0, Lcom/ibm/icu/text/EscapeTransliterator;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int v5, p3, v6

    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, p3, v5, v7}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr p3, v5

    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    goto :goto_0

    .line 215
    :cond_4
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    iget v1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    sub-int v1, v0, v1

    add-int/2addr p1, v1

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    .line 216
    iput v0, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    .line 217
    iput p3, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    return-void
.end method
