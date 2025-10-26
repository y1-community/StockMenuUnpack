.class Lcom/ibm/icu/text/StringReplacer;
.super Ljava/lang/Object;
.source "StringReplacer.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeReplacer;


# instance fields
.field private cursorPos:I

.field private final data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

.field private hasCursor:Z

.field private isComplex:Z

.field private output:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/ibm/icu/text/RuleBasedTransliterator$Data;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    .line 73
    iput p2, p0, Lcom/ibm/icu/text/StringReplacer;->cursorPos:I

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/ibm/icu/text/StringReplacer;->hasCursor:Z

    .line 75
    iput-object p3, p0, Lcom/ibm/icu/text/StringReplacer;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    .line 76
    iput-boolean p1, p0, Lcom/ibm/icu/text/StringReplacer;->isComplex:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedTransliterator$Data;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/ibm/icu/text/StringReplacer;->cursorPos:I

    .line 92
    iput-boolean p1, p0, Lcom/ibm/icu/text/StringReplacer;->hasCursor:Z

    .line 93
    iput-object p2, p0, Lcom/ibm/icu/text/StringReplacer;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    const/4 p1, 0x1

    .line 94
    iput-boolean p1, p0, Lcom/ibm/icu/text/StringReplacer;->isComplex:Z

    return-void
.end method


# virtual methods
.method public addReplacementSetTo(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 326
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 327
    iget-object v1, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    .line 328
    iget-object v2, p0, Lcom/ibm/icu/text/StringReplacer;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Lcom/ibm/icu/text/UnicodeReplacer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 330
    invoke-virtual {p1, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    goto :goto_1

    .line 332
    :cond_0
    invoke-interface {v2, p1}, Lcom/ibm/icu/text/UnicodeReplacer;->addReplacementSetTo(Lcom/ibm/icu/text/UnicodeSet;)V

    .line 326
    :goto_1
    invoke-static {v1}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public replace(Lcom/ibm/icu/text/Replaceable;II[I)I
    .locals 10

    .line 126
    iget-boolean v0, p0, Lcom/ibm/icu/text/StringReplacer;->isComplex:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-interface {p1, p2, p3, v0}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 128
    iget-object p3, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    .line 131
    iget v0, p0, Lcom/ibm/icu/text/StringReplacer;->cursorPos:I

    goto/16 :goto_3

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    iput-boolean v1, p0, Lcom/ibm/icu/text/StringReplacer;->isComplex:Z

    .line 155
    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v2

    if-lez p2, :cond_1

    add-int/lit8 v3, p2, -0x1

    .line 158
    invoke-interface {p1, v3}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v3

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    sub-int v4, p2, v3

    .line 159
    invoke-interface {p1, v4, p2, v2}, Lcom/ibm/icu/text/Replaceable;->copy(III)V

    add-int/2addr v3, v2

    goto :goto_0

    :cond_1
    const-string v3, "\uffff"

    .line 162
    invoke-interface {p1, v2, v2, v3}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    :goto_0
    move v5, v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 168
    :goto_1
    iget-object v8, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_6

    .line 169
    iget v8, p0, Lcom/ibm/icu/text/StringReplacer;->cursorPos:I

    if-ne v4, v8, :cond_2

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v3

    .line 178
    :cond_2
    iget-object v8, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-static {v8, v4}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v8

    .line 184
    invoke-static {v8}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v9

    add-int/2addr v4, v9

    .line 185
    iget-object v9, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v4, v9, :cond_3

    .line 186
    invoke-interface {p1, p3}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v7

    invoke-static {v7}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v7

    add-int v9, p3, v7

    .line 187
    invoke-interface {p1, p3, v9, v5}, Lcom/ibm/icu/text/Replaceable;->copy(III)V

    .line 190
    :cond_3
    iget-object v9, p0, Lcom/ibm/icu/text/StringReplacer;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v9, v8}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Lcom/ibm/icu/text/UnicodeReplacer;

    move-result-object v9

    if-nez v9, :cond_4

    .line 193
    invoke-static {v0, v8}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const/4 v8, 0x1

    .line 195
    iput-boolean v8, p0, Lcom/ibm/icu/text/StringReplacer;->isComplex:Z

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_5

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v5, v8}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/2addr v5, v8

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 205
    :cond_5
    invoke-interface {v9, p1, v5, v5, p4}, Lcom/ibm/icu/text/UnicodeReplacer;->replace(Lcom/ibm/icu/text/Replaceable;II[I)I

    move-result v8

    add-int/2addr v5, v8

    goto :goto_1

    .line 211
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v5, v5, v8}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/2addr v5, v0

    .line 215
    :cond_7
    iget v0, p0, Lcom/ibm/icu/text/StringReplacer;->cursorPos:I

    if-ne v4, v0, :cond_8

    sub-int v0, v5, v3

    goto :goto_2

    :cond_8
    move v0, v6

    :goto_2
    sub-int v4, v5, v3

    .line 223
    invoke-interface {p1, v3, v5, p2}, Lcom/ibm/icu/text/Replaceable;->copy(III)V

    add-int/2addr v2, v4

    add-int/2addr v5, v7

    add-int/2addr v5, v4

    const-string v3, ""

    .line 224
    invoke-interface {p1, v2, v5, v3}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    add-int v2, p2, v4

    add-int/2addr p3, v4

    .line 227
    invoke-interface {p1, v2, p3, v3}, Lcom/ibm/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    move p3, v4

    .line 230
    :goto_3
    iget-boolean v2, p0, Lcom/ibm/icu/text/StringReplacer;->hasCursor:Z

    if-eqz v2, :cond_d

    .line 235
    iget v2, p0, Lcom/ibm/icu/text/StringReplacer;->cursorPos:I

    if-gez v2, :cond_a

    :goto_4
    if-gez v2, :cond_9

    if-lez p2, :cond_9

    add-int/lit8 v0, p2, -0x1

    .line 240
    invoke-interface {p1, v0}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v0

    sub-int/2addr p2, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    add-int/2addr p2, v2

    goto :goto_6

    .line 244
    :cond_a
    iget-object v3, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_c

    add-int/2addr p2, p3

    .line 246
    iget v0, p0, Lcom/ibm/icu/text/StringReplacer;->cursorPos:I

    iget-object v2, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    :goto_5
    if-lez v0, :cond_b

    .line 248
    invoke-interface {p1}, Lcom/ibm/icu/text/Replaceable;->length()I

    move-result v2

    if-ge p2, v2, :cond_b

    .line 249
    invoke-interface {p1, p2}, Lcom/ibm/icu/text/Replaceable;->char32At(I)I

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_b
    add-int/2addr p2, v0

    goto :goto_6

    :cond_c
    add-int/2addr p2, v0

    .line 259
    :goto_6
    aput p2, p4, v1

    :cond_d
    return p3
.end method

.method public toReplacerPattern(Z)Ljava/lang/String;
    .locals 10

    .line 270
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 273
    iget v2, p0, Lcom/ibm/icu/text/StringReplacer;->cursorPos:I

    .line 276
    iget-boolean v3, p0, Lcom/ibm/icu/text/StringReplacer;->hasCursor:Z

    const/16 v4, 0x40

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-gez v2, :cond_1

    :goto_0
    add-int/lit8 v3, v2, 0x1

    if-gez v2, :cond_0

    .line 278
    invoke-static {v0, v4, v5, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v3

    :cond_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 283
    :goto_1
    iget-object v7, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x7c

    if-ge v6, v7, :cond_4

    .line 284
    iget-boolean v7, p0, Lcom/ibm/icu/text/StringReplacer;->hasCursor:Z

    if-eqz v7, :cond_2

    if-ne v6, v2, :cond_2

    .line 285
    invoke-static {v0, v8, v5, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 287
    :cond_2
    iget-object v7, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 289
    iget-object v8, p0, Lcom/ibm/icu/text/StringReplacer;->data:Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    invoke-virtual {v8, v7}, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->lookupReplacer(I)Lcom/ibm/icu/text/UnicodeReplacer;

    move-result-object v8

    if-nez v8, :cond_3

    .line 291
    invoke-static {v0, v7, v3, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    goto :goto_2

    .line 293
    :cond_3
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v9, " "

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-interface {v8, p1}, Lcom/ibm/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v8, 0x20

    .line 295
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 296
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v5, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 304
    :cond_4
    iget-boolean v3, p0, Lcom/ibm/icu/text/StringReplacer;->hasCursor:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_6

    .line 305
    iget-object v3, p0, Lcom/ibm/icu/text/StringReplacer;->output:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    :goto_3
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_5

    .line 307
    invoke-static {v0, v4, v5, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    move v2, v3

    goto :goto_3

    .line 309
    :cond_5
    invoke-static {v0, v8, v5, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    :cond_6
    const/4 v2, -0x1

    .line 312
    invoke-static {v0, v2, v5, p1, v1}, Lcom/ibm/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    .line 315
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
