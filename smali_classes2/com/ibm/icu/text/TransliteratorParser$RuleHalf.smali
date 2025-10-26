.class Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TransliteratorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RuleHalf"
.end annotation


# instance fields
.field public anchorEnd:Z

.field public anchorStart:Z

.field public ante:I

.field public cursor:I

.field public cursorOffset:I

.field private cursorOffsetPos:I

.field private nextSegmentNumber:I

.field public post:I

.field public text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 375
    iput v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    .line 376
    iput v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->ante:I

    .line 377
    iput v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->post:I

    const/4 v0, 0x0

    .line 388
    iput v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    .line 392
    iput v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    .line 394
    iput-boolean v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    .line 395
    iput-boolean v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    const/4 v0, 0x1

    .line 401
    iput v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/TransliteratorParser$1;)V
    .locals 0

    .line 371
    invoke-direct {p0}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;-><init>()V

    return-void
.end method

.method private parseSection(Ljava/lang/String;IILcom/ibm/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Lcom/ibm/icu/text/UnicodeSet;Z)I
    .locals 33

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v0, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    const/4 v14, 0x1

    new-array v15, v14, [I

    .line 458
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    const/4 v7, -0x1

    const/4 v1, 0x0

    move-object/from16 v16, v1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    move v1, v0

    :goto_0
    if-ge v1, v11, :cond_34

    add-int/lit8 v3, v1, 0x1

    .line 464
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 465
    invoke-static {v1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const-string v2, "=><\u2190\u2192\u2194;"

    .line 469
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    if-eqz p7, :cond_16

    const-string v1, "Unclosed segment"

    .line 473
    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 478
    :cond_1
    iget-boolean v2, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    if-eqz v2, :cond_2

    const-string v2, "Malformed variable reference"

    .line 480
    invoke-static {v2, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    add-int/lit8 v2, v3, -0x1

    .line 482
    invoke-static {v10, v2}, Lcom/ibm/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v4

    const/4 v14, 0x0

    if-eqz v4, :cond_4

    if-nez v16, :cond_3

    .line 484
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v14}, Ljava/text/ParsePosition;-><init>(I)V

    goto :goto_1

    :cond_3
    move-object/from16 v1, v16

    .line 486
    :goto_1
    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 487
    invoke-static {v12, v10, v1}, Lcom/ibm/icu/text/TransliteratorParser;->access$500(Lcom/ibm/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/text/ParsePosition;)C

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 488
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    move-object/from16 v16, v1

    :goto_2
    move v1, v2

    :goto_3
    const/4 v14, 0x1

    goto :goto_0

    :cond_4
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_7

    if-ne v3, v11, :cond_5

    const-string v1, "Trailing backslash"

    .line 494
    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    aput v3, v15, v14

    .line 497
    invoke-static {v10, v15}, Lcom/ibm/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v1

    aget v2, v15, v14

    if-ne v1, v7, :cond_6

    const-string v3, "Malformed escape"

    .line 500
    invoke-static {v3, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 502
    :cond_6
    invoke-static {v12, v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$600(Lcom/ibm/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    .line 503
    invoke-static {v13, v1}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    const/16 v2, 0x27

    if-ne v1, v2, :cond_c

    .line 508
    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v3, :cond_8

    .line 510
    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x1

    goto :goto_3

    .line 519
    :cond_8
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    :goto_4
    if-gez v4, :cond_9

    const-string v1, "Unterminated quote"

    .line 522
    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 524
    :cond_9
    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v4, 0x1

    if-ge v3, v11, :cond_a

    .line 526
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_a

    add-int/lit8 v1, v3, 0x1

    .line 528
    invoke-virtual {v10, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_4

    .line 534
    :cond_a
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move/from16 v1, v17

    :goto_5
    if-ge v1, v6, :cond_b

    .line 537
    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v12, v2, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$600(Lcom/ibm/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    move v1, v3

    goto :goto_3

    .line 543
    :cond_c
    invoke-static {v12, v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$600(Lcom/ibm/icu/text/TransliteratorParser;ILjava/lang/String;I)V

    move-object/from16 v4, p6

    .line 545
    invoke-virtual {v4, v1}, Lcom/ibm/icu/text/UnicodeSet;->contains(I)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 546
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal character \'"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_d
    const/16 v2, 0x24

    if-eq v1, v2, :cond_2e

    const/16 v2, 0x26

    if-eq v1, v2, :cond_27

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_2a

    const/16 v2, 0x5e

    if-eq v1, v2, :cond_28

    const/16 v2, 0x2206

    if-eq v1, v2, :cond_27

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_15

    const/16 v7, 0x40

    if-eq v1, v7, :cond_17

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/16 v2, 0x21

    if-lt v1, v2, :cond_11

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_11

    const/16 v2, 0x30

    if-lt v1, v2, :cond_e

    const/16 v2, 0x39

    if-le v1, v2, :cond_11

    :cond_e
    const/16 v2, 0x41

    if-lt v1, v2, :cond_f

    const/16 v2, 0x5a

    if-le v1, v2, :cond_11

    :cond_f
    const/16 v2, 0x61

    if-lt v1, v2, :cond_10

    const/16 v2, 0x7a

    if-le v1, v2, :cond_11

    .line 808
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unquoted "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 810
    :cond_11
    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 763
    :pswitch_0
    iget v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-ltz v1, :cond_12

    const-string v1, "Multiple post contexts"

    .line 764
    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 766
    :cond_12
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iput v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->post:I

    goto :goto_6

    .line 769
    :pswitch_1
    iget v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-ltz v1, :cond_13

    const-string v1, "Multiple cursors"

    .line 770
    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 772
    :cond_13
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iput v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    goto :goto_6

    .line 757
    :pswitch_2
    iget v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->ante:I

    if-ltz v1, :cond_14

    const-string v1, "Multiple ante contexts"

    .line 758
    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 760
    :cond_14
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iput v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->ante:I

    :goto_6
    move/from16 v22, v5

    move/from16 v25, v8

    move-object v14, v15

    const/4 v1, 0x1

    const/16 v19, -0x1

    move v15, v6

    goto/16 :goto_13

    :cond_15
    :pswitch_3
    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v24, v15

    const/4 v11, -0x1

    goto/16 :goto_9

    :cond_16
    :goto_7
    :pswitch_4
    move v1, v3

    goto/16 :goto_17

    .line 566
    :pswitch_5
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    .line 571
    iget v7, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    add-int/lit8 v1, v7, 0x1

    iput v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->nextSegmentNumber:I

    .line 574
    invoke-static {}, Lcom/ibm/icu/text/TransliteratorParser;->access$700()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v22, v5

    move-object/from16 v5, p4

    move/from16 v23, v6

    move-object/from16 v6, p5

    move-object/from16 v24, v15

    const/4 v11, -0x1

    move v15, v7

    move-object/from16 v7, v20

    move/from16 v25, v8

    move/from16 v8, v21

    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILcom/ibm/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Lcom/ibm/icu/text/UnicodeSet;Z)I

    move-result v1

    .line 580
    new-instance v2, Lcom/ibm/icu/text/StringMatcher;

    .line 581
    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 582
    invoke-static/range {p4 .. p4}, Lcom/ibm/icu/text/TransliteratorParser;->access$100(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    move-result-object v4

    invoke-direct {v2, v3, v15, v4}, Lcom/ibm/icu/text/StringMatcher;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RuleBasedTransliterator$Data;)V

    .line 585
    invoke-virtual {v12, v15, v2}, Lcom/ibm/icu/text/TransliteratorParser;->setSegmentObject(ILcom/ibm/icu/text/StringMatcher;)V

    .line 586
    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 587
    invoke-virtual {v12, v15}, Lcom/ibm/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v11, p3

    move/from16 v5, v22

    move/from16 v15, v23

    move-object/from16 v14, v24

    const/4 v4, 0x1

    const/16 v19, -0x1

    goto/16 :goto_16

    :cond_17
    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v25, v8

    move-object/from16 v24, v15

    const/4 v11, -0x1

    .line 775
    iget v2, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    const-string v4, "Misplaced "

    if-gez v2, :cond_19

    .line 776
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_18

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 779
    :cond_18
    iget v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    :goto_8
    move/from16 v11, p3

    goto/16 :goto_a

    :cond_19
    if-lez v2, :cond_1c

    .line 781
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    iget v5, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    if-ne v2, v5, :cond_1a

    iget v2, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-ltz v2, :cond_1b

    .line 782
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 784
    :cond_1b
    iget v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    goto :goto_8

    .line 786
    :cond_1c
    iget v2, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-nez v2, :cond_1d

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_1d

    .line 787
    iput v11, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    goto :goto_8

    .line 788
    :cond_1d
    iget v2, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    if-gez v2, :cond_1e

    .line 789
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iput v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    const/4 v1, 0x1

    .line 790
    iput v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    move/from16 v11, p3

    move/from16 v15, v23

    move-object/from16 v14, v24

    goto :goto_c

    .line 792
    :cond_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_8

    :goto_9
    if-eqz p7, :cond_1f

    .line 691
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move/from16 v14, v25

    if-ne v4, v14, :cond_20

    const-string v1, "Misplaced quantifier"

    .line 693
    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    move/from16 v11, p3

    move/from16 v25, v14

    :goto_a
    move/from16 v15, v23

    :goto_b
    move-object/from16 v14, v24

    const/4 v1, 0x1

    :goto_c
    const/16 v19, -0x1

    goto/16 :goto_13

    :cond_1f
    move/from16 v14, v25

    .line 701
    :cond_20
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move/from16 v15, v23

    if-ne v4, v15, :cond_21

    move/from16 v28, v15

    move/from16 v4, v17

    move/from16 v8, v22

    goto :goto_d

    .line 705
    :cond_21
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move/from16 v8, v22

    if-ne v4, v8, :cond_22

    move/from16 v28, v8

    move/from16 v4, v18

    goto :goto_d

    .line 712
    :cond_22
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    add-int/lit8 v6, v4, 0x1

    move/from16 v28, v6

    .line 718
    :goto_d
    :try_start_0
    new-instance v5, Lcom/ibm/icu/text/StringMatcher;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v29, 0x0

    .line 719
    invoke-static/range {p4 .. p4}, Lcom/ibm/icu/text/TransliteratorParser;->access$100(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    move-result-object v30

    move-object/from16 v25, v5

    move/from16 v27, v4

    invoke-direct/range {v25 .. v30}, Lcom/ibm/icu/text/StringMatcher;-><init>(Ljava/lang/String;IIILcom/ibm/icu/text/RuleBasedTransliterator$Data;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const v6, 0x7fffffff

    const/16 v7, 0x2b

    if-eq v1, v7, :cond_24

    if-eq v1, v2, :cond_23

    const/4 v1, 0x0

    goto :goto_e

    :cond_23
    const/4 v1, 0x0

    const/4 v6, 0x1

    goto :goto_e

    :cond_24
    const/4 v1, 0x1

    .line 739
    :goto_e
    new-instance v2, Lcom/ibm/icu/text/Quantifier;

    invoke-direct {v2, v5, v1, v6}, Lcom/ibm/icu/text/Quantifier;-><init>(Lcom/ibm/icu/text/UnicodeMatcher;II)V

    .line 740
    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 741
    invoke-virtual {v12, v2}, Lcom/ibm/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v11, p3

    move/from16 v22, v8

    move/from16 v25, v14

    goto :goto_b

    :catch_0
    move-exception v0

    const-string v1, "..."

    const/16 v2, 0x32

    if-ge v3, v2, :cond_25

    const/4 v4, 0x0

    .line 721
    invoke-virtual {v10, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x32

    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_f
    move/from16 v11, p3

    sub-int v5, v11, v3

    if-gt v5, v2, :cond_26

    .line 722
    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v3, 0x32

    invoke-virtual {v10, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 723
    :goto_10
    new-instance v2, Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure in rule: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "$$$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    .line 724
    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/IllegalIcuArgumentException;->initCause(Ljava/lang/Throwable;)Lcom/ibm/icu/impl/IllegalIcuArgumentException;

    move-result-object v0

    throw v0

    :cond_27
    move v14, v8

    move-object/from16 v24, v15

    const/16 v19, -0x1

    move v8, v5

    move v15, v6

    const/4 v1, 0x0

    goto :goto_12

    :cond_28
    move v14, v8

    move-object/from16 v24, v15

    const/16 v19, -0x1

    move v8, v5

    move v15, v6

    .line 555
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_29

    iget-boolean v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    if-nez v1, :cond_29

    const/4 v1, 0x1

    .line 556
    iput-boolean v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    move/from16 v22, v8

    move/from16 v25, v14

    move-object/from16 v14, v24

    goto/16 :goto_13

    :cond_29
    const-string v1, "Misplaced anchor start"

    .line 558
    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_11

    :cond_2a
    move v14, v8

    move-object/from16 v24, v15

    const/16 v19, -0x1

    move v8, v5

    move v15, v6

    .line 677
    invoke-virtual/range {p4 .. p4}, Lcom/ibm/icu/text/TransliteratorParser;->getDotStandIn()C

    move-result v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_11
    move/from16 v22, v8

    move/from16 v25, v14

    move-object/from16 v14, v24

    const/4 v1, 0x1

    goto/16 :goto_13

    :goto_12
    aput v3, v24, v1

    move-object/from16 v7, v24

    .line 594
    invoke-static {v10, v7}, Lcom/ibm/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[I)Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v1

    if-eqz v1, :cond_2b

    const/16 v2, 0x28

    .line 597
    invoke-static {v10, v7, v2}, Lcom/ibm/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_2b
    const-string v2, "Invalid function"

    .line 598
    invoke-static {v2, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 601
    :cond_2c
    invoke-virtual {v1}, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->getInstance()Lcom/ibm/icu/text/Transliterator;

    move-result-object v6

    if-nez v6, :cond_2d

    const-string v1, "Invalid function ID"

    .line 603
    invoke-static {v1, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    .line 608
    :cond_2d
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    const/4 v1, 0x0

    aget v3, v7, v1

    .line 611
    invoke-static {}, Lcom/ibm/icu/text/TransliteratorParser;->access$800()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v31, v5

    move-object/from16 v5, p4

    move-object/from16 v32, v6

    move-object/from16 v6, p5

    move/from16 v25, v14

    move-object v14, v7

    move-object/from16 v7, v20

    move/from16 v22, v8

    move/from16 v8, v21

    invoke-direct/range {v1 .. v8}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILcom/ibm/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Lcom/ibm/icu/text/UnicodeSet;Z)I

    move-result v1

    .line 615
    new-instance v2, Lcom/ibm/icu/text/FunctionReplacer;

    new-instance v3, Lcom/ibm/icu/text/StringReplacer;

    move/from16 v4, v31

    .line 617
    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Lcom/ibm/icu/text/TransliteratorParser;->access$100(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/StringReplacer;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedTransliterator$Data;)V

    move-object/from16 v5, v32

    invoke-direct {v2, v5, v3}, Lcom/ibm/icu/text/FunctionReplacer;-><init>(Lcom/ibm/icu/text/Transliterator;Lcom/ibm/icu/text/UnicodeReplacer;)V

    .line 620
    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 621
    invoke-virtual {v12, v2}, Lcom/ibm/icu/text/TransliteratorParser;->generateStandInFor(Ljava/lang/Object;)C

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_14

    :cond_2e
    move/from16 v22, v5

    move/from16 v25, v8

    move-object v14, v15

    const/16 v19, -0x1

    move v15, v6

    if-ne v3, v11, :cond_2f

    const/4 v1, 0x1

    .line 634
    iput-boolean v1, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    :goto_13
    move v1, v3

    :goto_14
    move/from16 v5, v22

    const/4 v4, 0x1

    goto :goto_16

    :cond_2f
    const/4 v1, 0x1

    .line 638
    invoke-virtual {v10, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    .line 639
    invoke-static {v2, v4}, Lcom/ibm/icu/lang/UCharacter;->digit(II)I

    move-result v2

    if-lt v2, v1, :cond_31

    const/16 v1, 0x9

    if-gt v2, v1, :cond_31

    const/4 v1, 0x0

    aput v3, v14, v1

    .line 642
    invoke-static {v10, v14, v4}, Lcom/ibm/icu/impl/Utility;->parseNumber(Ljava/lang/String;[II)I

    move-result v2

    if-gez v2, :cond_30

    const-string v3, "Undefined segment reference"

    .line 644
    invoke-static {v3, v10, v0}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_30
    aget v1, v14, v1

    .line 648
    invoke-virtual {v12, v2}, Lcom/ibm/icu/text/TransliteratorParser;->getSegmentStandin(I)C

    move-result v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_14

    :cond_31
    const/4 v1, 0x0

    if-nez v16, :cond_32

    .line 651
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    goto :goto_15

    :cond_32
    move-object/from16 v2, v16

    .line 653
    :goto_15
    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 654
    invoke-static/range {p4 .. p4}, Lcom/ibm/icu/text/TransliteratorParser;->access$900(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/TransliteratorParser$ParseData;

    move-result-object v1

    .line 655
    invoke-virtual {v1, v10, v2, v11}, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    const/4 v4, 0x1

    .line 662
    iput-boolean v4, v9, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    move-object/from16 v16, v2

    move v1, v3

    move/from16 v5, v22

    goto :goto_16

    :cond_33
    const/4 v4, 0x1

    .line 665
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    .line 670
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    .line 671
    invoke-static {v12, v1, v13}, Lcom/ibm/icu/text/TransliteratorParser;->access$1000(Lcom/ibm/icu/text/TransliteratorParser;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 672
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move-object/from16 v16, v2

    move v1, v3

    :goto_16
    move v6, v15

    move/from16 v8, v25

    const/4 v7, -0x1

    move-object v15, v14

    goto/16 :goto_3

    :cond_34
    :goto_17
    return v1

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public isValidInput(Lcom/ibm/icu/text/TransliteratorParser;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 847
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 848
    iget-object v2, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 849
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 850
    invoke-static {p1}, Lcom/ibm/icu/text/TransliteratorParser;->access$900(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/TransliteratorParser$ParseData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->isMatcher(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public isValidOutput(Lcom/ibm/icu/text/TransliteratorParser;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 832
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 833
    iget-object v2, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/ibm/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v2

    .line 834
    invoke-static {v2}, Lcom/ibm/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 835
    invoke-static {p1}, Lcom/ibm/icu/text/TransliteratorParser;->access$900(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/TransliteratorParser$ParseData;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->isReplacer(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public parse(Ljava/lang/String;IILcom/ibm/icu/text/TransliteratorParser;)I
    .locals 9

    .line 412
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 413
    invoke-static {}, Lcom/ibm/icu/text/TransliteratorParser;->access$400()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v8

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->parseSection(Ljava/lang/String;IILcom/ibm/icu/text/TransliteratorParser;Ljava/lang/StringBuffer;Lcom/ibm/icu/text/UnicodeSet;Z)I

    move-result p3

    .line 414
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    .line 416
    iget p4, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffset:I

    if-lez p4, :cond_0

    iget p4, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursor:I

    iget v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->cursorOffsetPos:I

    if-eq p4, v0, :cond_0

    const-string p4, "Misplaced |"

    .line 417
    invoke-static {p4, p1, p2}, Lcom/ibm/icu/text/TransliteratorParser;->syntaxError(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return p3
.end method

.method removeContext()V
    .locals 4

    .line 821
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    iget v1, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->ante:I

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget v3, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->post:I

    if-gez v3, :cond_1

    .line 822
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 821
    :cond_1
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->text:Ljava/lang/String;

    const/4 v0, -0x1

    .line 823
    iput v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->post:I

    iput v0, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->ante:I

    .line 824
    iput-boolean v2, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorEnd:Z

    iput-boolean v2, p0, Lcom/ibm/icu/text/TransliteratorParser$RuleHalf;->anchorStart:Z

    return-void
.end method
