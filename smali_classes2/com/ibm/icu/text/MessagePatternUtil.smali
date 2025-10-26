.class public final Lcom/ibm/icu/text/MessagePatternUtil;
.super Ljava/lang/Object;
.source "MessagePatternUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;,
        Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;,
        Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;,
        Lcom/ibm/icu/text/MessagePatternUtil$TextNode;,
        Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;,
        Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;,
        Lcom/ibm/icu/text/MessagePatternUtil$Node;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildArgNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;
    .locals 6

    .line 490
    invoke-static {}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$800()Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;

    move-result-object v0

    .line 491
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 492
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$902(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Lcom/ibm/icu/text/MessagePattern$ArgType;)Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 493
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 494
    invoke-virtual {p0, v3}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1002(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    .line 495
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_0

    .line 496
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v3

    invoke-static {v0, v3}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1102(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;I)I

    :cond_0
    add-int/2addr p1, v2

    .line 499
    sget-object v3, Lcom/ibm/icu/text/MessagePatternUtil$1;->$SwitchMap$com$ibm$icu$text$MessagePattern$ArgType:[I

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$ArgType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v2, :cond_5

    const/4 v2, 0x2

    if-eq v3, v2, :cond_4

    const/4 v2, 0x3

    if-eq v3, v2, :cond_3

    const/4 v2, 0x4

    if-eq v3, v2, :cond_2

    const/4 v2, 0x5

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "selectordinal"

    .line 521
    invoke-static {v0, v2}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1202(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    invoke-static {p0, p1, p2, v1}, Lcom/ibm/icu/text/MessagePatternUtil;->buildPluralStyleNode(Lcom/ibm/icu/text/MessagePattern;IILcom/ibm/icu/text/MessagePattern$ArgType;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1402(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :cond_2
    const-string v1, "select"

    .line 517
    invoke-static {v0, v1}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1202(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/MessagePatternUtil;->buildSelectStyleNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1402(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :cond_3
    const-string v2, "plural"

    .line 513
    invoke-static {v0, v2}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1202(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    .line 514
    invoke-static {p0, p1, p2, v1}, Lcom/ibm/icu/text/MessagePatternUtil;->buildPluralStyleNode(Lcom/ibm/icu/text/MessagePattern;IILcom/ibm/icu/text/MessagePattern$ArgType;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1402(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :cond_4
    const-string v1, "choice"

    .line 509
    invoke-static {v0, v1}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1202(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/text/MessagePatternUtil;->buildChoiceStyleNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1402(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    goto :goto_0

    :cond_5
    add-int/lit8 v1, p1, 0x1

    .line 502
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1202(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    if-ge v1, p2, :cond_6

    .line 505
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;->access$1302(Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    :goto_0
    return-object v0
.end method

.method private static buildChoiceStyleNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 7

    .line 533
    new-instance v0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Lcom/ibm/icu/text/MessagePattern$ArgType;Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    :goto_0
    if-ge p1, p2, :cond_0

    .line 536
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 537
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v3

    add-int/lit8 v1, p1, 0x2

    .line 539
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v5

    .line 540
    new-instance v6, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v6, v2}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    add-int/lit8 p1, p1, 0x1

    .line 541
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;->access$1702(Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    invoke-static {v6, v3, v4}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;->access$1802(Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;D)D

    .line 543
    invoke-static {p0, v1, v5}, Lcom/ibm/icu/text/MessagePatternUtil;->buildMessageNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;->access$1902(Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    .line 544
    invoke-static {v0, v6}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2000(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;)V

    add-int/lit8 p1, v5, 0x1

    goto :goto_0

    .line 547
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2100(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    return-object p0
.end method

.method public static buildMessageNode(Lcom/ibm/icu/text/MessagePattern;)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;
    .locals 4

    .line 57
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v2, v3, :cond_0

    .line 64
    invoke-static {p0, v1, v0}, Lcom/ibm/icu/text/MessagePatternUtil;->buildMessageNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p0

    return-object p0

    .line 61
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The MessagePattern does not represent a MessageFormat pattern"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The MessagePattern is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static buildMessageNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;
    .locals 7

    .line 461
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v0

    .line 462
    new-instance v1, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 464
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 465
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 467
    new-instance v5, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;

    .line 468
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v2}, Lcom/ibm/icu/text/MessagePatternUtil$TextNode;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    .line 467
    invoke-static {v1, v5}, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->access$500(Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;)V

    :cond_0
    if-ne p1, p2, :cond_1

    .line 486
    invoke-static {v1}, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->access$700(Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p0

    return-object p0

    .line 474
    :cond_1
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 475
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v4, :cond_2

    .line 476
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    .line 477
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/text/MessagePatternUtil;->buildArgNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$ArgNode;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->access$500(Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;)V

    .line 479
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    move p1, v0

    goto :goto_1

    .line 480
    :cond_2
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v4, :cond_3

    .line 481
    invoke-static {}, Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;->access$600()Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;->access$500(Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;Lcom/ibm/icu/text/MessagePatternUtil$MessageContentsNode;)V

    .line 484
    :cond_3
    :goto_1
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v0

    goto :goto_0
.end method

.method public static buildMessageNode(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;
    .locals 1

    .line 45
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ibm/icu/text/MessagePatternUtil;->buildMessageNode(Lcom/ibm/icu/text/MessagePattern;)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p0

    return-object p0
.end method

.method private static buildPluralStyleNode(Lcom/ibm/icu/text/MessagePattern;IILcom/ibm/icu/text/MessagePattern$ArgType;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 7

    .line 553
    new-instance v0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Lcom/ibm/icu/text/MessagePattern$ArgType;Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    .line 554
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p3

    .line 555
    invoke-virtual {p3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 556
    invoke-static {v0, v3}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2202(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;Z)Z

    .line 557
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2302(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;D)D

    add-int/lit8 p1, p1, 0x1

    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    add-int/lit8 p3, p1, 0x1

    .line 561
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p1

    const-wide v4, -0x3e6290cbac000000L    # -1.23456789E8

    .line 563
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    .line 564
    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 565
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    add-int/lit8 p3, p3, 0x1

    .line 568
    :cond_1
    invoke-virtual {p0, p3}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v2

    .line 569
    new-instance v6, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v6, v1}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    .line 570
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;->access$1702(Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    .line 571
    invoke-static {v6, v4, v5}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;->access$1802(Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;D)D

    .line 572
    invoke-static {p0, p3, v2}, Lcom/ibm/icu/text/MessagePatternUtil;->buildMessageNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;->access$1902(Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    .line 573
    invoke-static {v0, v6}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2000(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;)V

    add-int/lit8 p1, v2, 0x1

    goto :goto_0

    .line 576
    :cond_2
    invoke-static {v0}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2100(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    return-object p0
.end method

.method private static buildSelectStyleNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;
    .locals 5

    .line 581
    new-instance v0, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;-><init>(Lcom/ibm/icu/text/MessagePattern$ArgType;Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 583
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 584
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v3

    .line 585
    new-instance v4, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;

    invoke-direct {v4, v2}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;-><init>(Lcom/ibm/icu/text/MessagePatternUtil$1;)V

    .line 586
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;->access$1702(Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    invoke-static {p0, v1, v3}, Lcom/ibm/icu/text/MessagePatternUtil;->buildMessageNode(Lcom/ibm/icu/text/MessagePattern;II)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;->access$1902(Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;)Lcom/ibm/icu/text/MessagePatternUtil$MessageNode;

    .line 588
    invoke-static {v0, v4}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2000(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;Lcom/ibm/icu/text/MessagePatternUtil$VariantNode;)V

    add-int/lit8 p1, v3, 0x1

    goto :goto_0

    .line 591
    :cond_0
    invoke-static {v0}, Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;->access$2100(Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;)Lcom/ibm/icu/text/MessagePatternUtil$ComplexArgStyleNode;

    move-result-object p0

    return-object p0
.end method
