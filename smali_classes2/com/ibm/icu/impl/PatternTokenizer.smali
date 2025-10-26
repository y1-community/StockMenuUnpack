.class public Lcom/ibm/icu/impl/PatternTokenizer;
.super Ljava/lang/Object;
.source "PatternTokenizer.java"


# static fields
.field private static final AFTER_QUOTE:I = -0x1

.field public static final BACK_SLASH:C = '\\'

.field public static final BROKEN_ESCAPE:I = 0x4

.field public static final BROKEN_QUOTE:I = 0x3

.field public static final DONE:I = 0x0

.field private static final HEX:I = 0x4

.field private static IN_QUOTE:I = -0x2

.field public static final LITERAL:I = 0x2

.field private static final NONE:I = 0x0

.field private static final NORMAL_QUOTE:I = 0x2

.field private static NO_QUOTE:I = -0x1

.field public static final SINGLE_QUOTE:C = '\''

.field private static final SLASH_START:I = 0x3

.field private static final START_QUOTE:I = 0x1

.field public static final SYNTAX:I = 0x1

.field public static final UNKNOWN:I = 0x5


# instance fields
.field private escapeCharacters:Lcom/ibm/icu/text/UnicodeSet;

.field private extraQuotingCharacters:Lcom/ibm/icu/text/UnicodeSet;

.field private ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

.field private limit:I

.field private transient needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

.field private pattern:Ljava/lang/String;

.field private start:I

.field private syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

.field private usingQuote:Z

.field private usingSlash:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

    .line 27
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

    .line 28
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->extraQuotingCharacters:Lcom/ibm/icu/text/UnicodeSet;

    .line 29
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->escapeCharacters:Lcom/ibm/icu/text/UnicodeSet;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    .line 31
    iput-boolean v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method private appendEscaped(Ljava/lang/StringBuffer;I)V
    .locals 2

    const v0, 0xffff

    if-gt p2, v0, :cond_0

    const-string v0, "\\u"

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    int-to-long v0, p2

    const/4 p2, 0x4

    invoke-static {v0, v1, p2}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v0, "\\U"

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    int-to-long v0, p2

    const/16 p2, 0x8

    invoke-static {v0, v1, p2}, Lcom/ibm/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method


# virtual methods
.method public getEscapeCharacters()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->escapeCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method public getExtraQuotingCharacters()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->extraQuotingCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method public getIgnorableCharacters()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    return v0
.end method

.method public getSyntaxCharacters()Lcom/ibm/icu/text/UnicodeSet;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/UnicodeSet;

    return-object v0
.end method

.method public isUsingQuote()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    return v0
.end method

.method public isUsingSlash()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    return v0
.end method

.method public next(Ljava/lang/StringBuffer;)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 258
    iget v2, v0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    iget v3, v0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x0

    .line 266
    :goto_0
    iget v10, v0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    const/16 v11, 0x5c

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x4

    if-ge v2, v10, :cond_12

    .line 267
    iget-object v10, v0, Lcom/ibm/icu/impl/PatternTokenizer;->pattern:Ljava/lang/String;

    invoke-static {v10, v2}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v10

    const/4 v4, -0x1

    if-eq v5, v4, :cond_a

    if-eq v5, v13, :cond_8

    if-eq v5, v14, :cond_6

    if-eq v5, v12, :cond_2

    if-eq v5, v15, :cond_1

    goto :goto_5

    :cond_1
    shl-int/lit8 v4, v7, 0x4

    add-int/2addr v4, v10

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    packed-switch v10, :pswitch_data_2

    .line 304
    iput v2, v0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    return v15

    :pswitch_0
    add-int/lit8 v4, v4, -0x57

    goto :goto_1

    :pswitch_1
    add-int/lit8 v4, v4, -0x37

    goto :goto_1

    :pswitch_2
    add-int/lit8 v4, v4, -0x30

    :goto_1
    move v7, v4

    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_11

    .line 310
    invoke-static {v1, v7}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const/16 v4, 0x55

    if-eq v10, v4, :cond_5

    const/16 v4, 0x75

    if-eq v10, v4, :cond_4

    .line 283
    iget-boolean v4, v0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v4, :cond_3

    .line 284
    invoke-static {v1, v10}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 288
    :cond_3
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    const/4 v5, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x4

    goto :goto_7

    :cond_5
    const/16 v9, 0x8

    const/4 v5, 0x4

    const/4 v7, 0x0

    goto :goto_7

    :cond_6
    if-ne v10, v6, :cond_7

    const/4 v5, -0x1

    goto :goto_7

    .line 339
    :cond_7
    invoke-static {v1, v10}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_8
    if-ne v10, v6, :cond_9

    .line 326
    invoke-static {v1, v10}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    :goto_2
    const/4 v5, 0x0

    goto :goto_7

    .line 331
    :cond_9
    invoke-static {v1, v10}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_a
    if-ne v10, v6, :cond_b

    .line 317
    invoke-static {v1, v10}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    :goto_3
    const/4 v5, 0x2

    goto :goto_7

    :cond_b
    :goto_4
    const/4 v5, 0x0

    .line 343
    :goto_5
    iget-object v4, v0, Lcom/ibm/icu/impl/PatternTokenizer;->ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v10}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_7

    .line 347
    :cond_c
    iget-object v4, v0, Lcom/ibm/icu/impl/PatternTokenizer;->syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v4, v10}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_e

    if-ne v8, v3, :cond_d

    .line 349
    invoke-static {v1, v10}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 350
    invoke-static {v10}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    add-int/2addr v2, v1

    iput v2, v0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    return v13

    .line 353
    :cond_d
    iput v2, v0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    return v8

    :cond_e
    if-ne v10, v11, :cond_f

    const/4 v5, 0x3

    :goto_6
    const/4 v8, 0x2

    goto :goto_7

    .line 362
    :cond_f
    iget-boolean v4, v0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v4, :cond_10

    const/16 v4, 0x27

    if-ne v10, v4, :cond_10

    move v6, v10

    const/4 v5, 0x1

    goto :goto_6

    .line 368
    :cond_10
    invoke-static {v1, v10}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 266
    :cond_11
    :goto_7
    invoke-static {v10}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 371
    :cond_12
    iput v10, v0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    if-eq v5, v13, :cond_16

    if-eq v5, v14, :cond_16

    if-eq v5, v12, :cond_14

    if-eq v5, v15, :cond_13

    goto :goto_9

    :cond_13
    :goto_8
    const/4 v8, 0x4

    goto :goto_9

    .line 377
    :cond_14
    iget-boolean v2, v0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v2, :cond_15

    goto :goto_8

    .line 380
    :cond_15
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_16
    const/4 v8, 0x3

    :goto_9
    return v8

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public normalize()Ljava/lang/String;
    .locals 5

    .line 235
    iget v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    .line 236
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    const/4 v3, 0x0

    .line 239
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 240
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/PatternTokenizer;->next(Ljava/lang/StringBuffer;)I

    move-result v3

    if-nez v3, :cond_0

    .line 242
    iput v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 246
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public quoteLiteral(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 151
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/PatternTokenizer;->quoteLiteral(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public quoteLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    const/16 v1, 0x5c

    const/16 v2, 0x27

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    iget-object v3, p0, Lcom/ibm/icu/impl/PatternTokenizer;->syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iget-object v3, p0, Lcom/ibm/icu/impl/PatternTokenizer;->ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iget-object v3, p0, Lcom/ibm/icu/impl/PatternTokenizer;->extraQuotingCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    .line 162
    iget-boolean v3, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 163
    :cond_0
    iget-boolean v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, v2}, Lcom/ibm/icu/text/UnicodeSet;->add(I)Lcom/ibm/icu/text/UnicodeSet;

    .line 165
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 166
    sget v3, Lcom/ibm/icu/impl/PatternTokenizer;->NO_QUOTE:I

    const/4 v4, 0x0

    .line 168
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 169
    invoke-static {p1, v4}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v5

    .line 170
    iget-object v6, p0, Lcom/ibm/icu/impl/PatternTokenizer;->escapeCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v6, v5}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 172
    sget v6, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v3, v6, :cond_2

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 174
    sget v3, Lcom/ibm/icu/impl/PatternTokenizer;->NO_QUOTE:I

    .line 176
    :cond_2
    invoke-direct {p0, v0, v5}, Lcom/ibm/icu/impl/PatternTokenizer;->appendEscaped(Ljava/lang/StringBuffer;I)V

    goto :goto_1

    .line 180
    :cond_3
    iget-object v6, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v6, v5}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 182
    sget v6, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v3, v6, :cond_4

    .line 183
    invoke-static {v0, v5}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 184
    iget-boolean v6, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v6, :cond_a

    if-ne v5, v2, :cond_a

    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 190
    :cond_4
    iget-boolean v6, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    if-eqz v6, :cond_5

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    invoke-static {v0, v5}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 195
    :cond_5
    iget-boolean v6, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    if-eqz v6, :cond_7

    if-ne v5, v2, :cond_6

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 201
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 202
    invoke-static {v0, v5}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 203
    sget v3, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    goto :goto_1

    .line 207
    :cond_7
    invoke-direct {p0, v0, v5}, Lcom/ibm/icu/impl/PatternTokenizer;->appendEscaped(Ljava/lang/StringBuffer;I)V

    goto :goto_1

    .line 212
    :cond_8
    sget v6, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v3, v6, :cond_9

    .line 213
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 214
    sget v3, Lcom/ibm/icu/impl/PatternTokenizer;->NO_QUOTE:I

    .line 216
    :cond_9
    invoke-static {v0, v5}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    .line 168
    :cond_a
    :goto_1
    invoke-static {v5}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    .line 220
    :cond_b
    sget p1, Lcom/ibm/icu/impl/PatternTokenizer;->IN_QUOTE:I

    if-ne v3, p1, :cond_c

    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 223
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setEscapeCharacters(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/impl/PatternTokenizer;
    .locals 0

    .line 90
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/UnicodeSet;

    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->escapeCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setExtraQuotingCharacters(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/impl/PatternTokenizer;
    .locals 0

    .line 76
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/UnicodeSet;

    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->extraQuotingCharacters:Lcom/ibm/icu/text/UnicodeSet;

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setIgnorableCharacters(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/impl/PatternTokenizer;
    .locals 0

    .line 50
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/UnicodeSet;

    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->ignorableCharacters:Lcom/ibm/icu/text/UnicodeSet;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setLimit(I)Lcom/ibm/icu/impl/PatternTokenizer;
    .locals 0

    .line 121
    iput p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    return-object p0
.end method

.method public setPattern(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/PatternTokenizer;
    .locals 0

    .line 133
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/PatternTokenizer;->setPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/PatternTokenizer;

    move-result-object p1

    return-object p1
.end method

.method public setPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/PatternTokenizer;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/PatternTokenizer;->limit:I

    .line 142
    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->pattern:Ljava/lang/String;

    return-object p0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Inconsistent arguments"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStart(I)Lcom/ibm/icu/impl/PatternTokenizer;
    .locals 0

    .line 128
    iput p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->start:I

    return-object p0
.end method

.method public setSyntaxCharacters(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/impl/PatternTokenizer;
    .locals 0

    .line 66
    invoke-virtual {p1}, Lcom/ibm/icu/text/UnicodeSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/UnicodeSet;

    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->syntaxCharacters:Lcom/ibm/icu/text/UnicodeSet;

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setUsingQuote(Z)Lcom/ibm/icu/impl/PatternTokenizer;
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingQuote:Z

    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method

.method public setUsingSlash(Z)Lcom/ibm/icu/impl/PatternTokenizer;
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->usingSlash:Z

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/ibm/icu/impl/PatternTokenizer;->needingQuoteCharacters:Lcom/ibm/icu/text/UnicodeSet;

    return-object p0
.end method
