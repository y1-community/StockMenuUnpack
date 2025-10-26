.class final Lcom/ibm/icu/text/NFRule;
.super Ljava/lang/Object;
.source "NFRule.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DEFAULT_RULE:I = -0x4

.field static final IMPROPER_FRACTION_RULE:I = -0x2

.field static final INFINITY_RULE:I = -0x5

.field static final NAN_RULE:I = -0x6

.field static final NEGATIVE_NUMBER_RULE:I = -0x1

.field static final PROPER_FRACTION_RULE:I = -0x3

.field private static final RULE_PREFIXES:[Ljava/lang/String;

.field static final ZERO:Ljava/lang/Long;


# instance fields
.field private baseValue:J

.field private decimalPoint:C

.field private exponent:S

.field private final formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

.field private radix:I

.field private rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

.field private ruleText:Ljava/lang/String;

.field private sub1:Lcom/ibm/icu/text/NFSubstitution;

.field private sub2:Lcom/ibm/icu/text/NFSubstitution;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<<"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "<%"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "<#"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "<0"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, ">>"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ">%"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, ">#"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, ">0"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "=%"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "=#"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "=0"

    aput-object v2, v0, v1

    .line 577
    sput-object v0, Lcom/ibm/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 73
    iput v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    const/4 v0, 0x0

    .line 79
    iput-short v0, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    .line 84
    iput-char v0, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    .line 104
    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    .line 110
    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    .line 253
    iput-object p1, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    if-nez p2, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-direct {p0, p2}, Lcom/ibm/icu/text/NFRule;->parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    return-void
.end method

.method private allIgnorable(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1324
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getLenientScanner()Lcom/ibm/icu/text/RbnfLenientScanner;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1325
    invoke-interface {v1, p1}, Lcom/ibm/icu/text/RbnfLenientScanner;->allIgnorable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private expectedExponent()S
    .locals 7

    .line 562
    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    long-to-double v0, v0

    .line 569
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget v2, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    .line 570
    iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v1, v1

    add-int/lit8 v3, v0, 0x1

    int-to-short v3, v3

    invoke-static {v1, v2, v3}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v1

    iget-wide v4, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    cmp-long v6, v1, v4

    if-gtz v6, :cond_1

    return v3

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private extractSubstitution(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;)Lcom/ibm/icu/text/NFSubstitution;
    .locals 8

    .line 469
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-static {v0}, Lcom/ibm/icu/text/NFRule;->indexOfAnyRulePrefix(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 479
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v4, ">>>"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x2

    goto :goto_0

    .line 485
    :cond_1
    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 486
    iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/16 v5, 0x3c

    if-ne v3, v5, :cond_2

    if-eq v4, v2, :cond_2

    .line 488
    iget-object v5, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_2

    move v3, v6

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    if-ne v3, v2, :cond_3

    return-object v1

    .line 507
    :cond_3
    iget-object v5, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    .line 508
    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    .line 507
    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/text/NFSubstitution;->makeSubstitution(ILcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Lcom/ibm/icu/text/NFSubstitution;

    move-result-object p1

    .line 511
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    return-object p1
.end method

.method private extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;Lcom/ibm/icu/text/NFRule;)V
    .locals 2

    .line 417
    iput-object p2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 418
    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/text/NFRule;->extractSubstitution(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;)Lcom/ibm/icu/text/NFSubstitution;

    move-result-object p2

    iput-object p2, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 421
    iput-object p1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    goto :goto_0

    .line 424
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/ibm/icu/text/NFRule;->extractSubstitution(Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;)Lcom/ibm/icu/text/NFSubstitution;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    .line 426
    :goto_0
    iget-object p1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string p2, "$("

    .line 427
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_1

    const-string p3, ")$"

    .line 428
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p3

    goto :goto_1

    :cond_1
    const/4 p3, -0x1

    :goto_1
    if-ltz p3, :cond_5

    const/16 v0, 0x2c

    .line 430
    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_4

    .line 434
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {v1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v1, "cardinal"

    .line 436
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 437
    sget-object p2, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    goto :goto_2

    :cond_2
    const-string v1, "ordinal"

    .line 439
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    sget-object p2, Lcom/ibm/icu/text/PluralRules$PluralType;->ORDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    .line 445
    :goto_2
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    add-int/lit8 v0, v0, 0x1

    .line 446
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-virtual {v1, p2, p1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->createPluralFormat(Lcom/ibm/icu/text/PluralRules$PluralType;Ljava/lang/String;)Lcom/ibm/icu/text/PluralFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    goto :goto_3

    .line 443
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is an unknown type"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rule \""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" does not have a defined type"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_3
    return-void
.end method

.method private findText(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/PluralFormat;I)[I
    .locals 6

    .line 1275
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getLenientScanner()Lcom/ibm/icu/text/RbnfLenientScanner;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    .line 1277
    new-instance p2, Ljava/text/FieldPosition;

    invoke-direct {p2, v3}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1278
    invoke-virtual {p2, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1279
    invoke-virtual {p3, p1, v0, p2}, Lcom/ibm/icu/text/PluralFormat;->parseType(Ljava/lang/String;Lcom/ibm/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;

    .line 1280
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p3

    if-ltz p3, :cond_0

    .line 1282
    iget-object p4, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v0, "$("

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    .line 1283
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v4, ")$"

    invoke-virtual {v0, v4, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v2

    .line 1284
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p2

    sub-int/2addr p2, p3

    .line 1285
    iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v4, v3, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    .line 1286
    iget-object v4, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1287
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, p3, v4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, p4, v3, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int v4, p3, p2

    .line 1288
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v0, v3, v5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v2, [I

    .line 1290
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr p3, v2

    aput p3, p1, v3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    aput p2, p1, v1

    return-object p1

    :cond_0
    new-array p1, v2, [I

    .line 1293
    fill-array-data p1, :array_0

    return-object p1

    :cond_1
    if-eqz v0, :cond_3

    new-array p3, v2, [I

    .line 1298
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    aput v2, p3, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    aput v2, p3, v1

    aget v1, p3, v3

    if-ltz v1, :cond_2

    return-object p3

    .line 1303
    :cond_2
    invoke-interface {v0, p1, p2, p4}, Lcom/ibm/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object p1

    return-object p1

    :cond_3
    new-array p3, v2, [I

    .line 1308
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    aput p1, p3, v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    aput p1, p3, v1

    return-object p3

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
    .end array-data
.end method

.method private static indexOfAnyRulePrefix(Ljava/lang/String;)I
    .locals 6

    .line 592
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_3

    .line 594
    sget-object v0, Lcom/ibm/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 595
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v1, :cond_1

    if-eq v4, v1, :cond_0

    if-ge v5, v4, :cond_1

    :cond_0
    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, v4

    :cond_3
    return v1
.end method

.method public static makeRules(Ljava/lang/String;Lcom/ibm/icu/text/NFRuleSet;Lcom/ibm/icu/text/NFRule;Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/NFRuleSet;",
            "Lcom/ibm/icu/text/NFRule;",
            "Lcom/ibm/icu/text/RuleBasedNumberFormat;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/NFRule;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 140
    new-instance v4, Lcom/ibm/icu/text/NFRule;

    move-object/from16 v5, p0

    invoke-direct {v4, v2, v5}, Lcom/ibm/icu/text/NFRule;-><init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    .line 141
    iget-object v5, v4, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/16 v6, 0x5b

    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_0

    const/4 v7, -0x1

    goto :goto_0

    :cond_0
    const/16 v7, 0x5d

    .line 146
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    :goto_0
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_b

    if-gt v6, v7, :cond_b

    .line 152
    iget-wide v10, v4, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v12, -0x3

    cmp-long v14, v10, v12

    if-eqz v14, :cond_b

    const-wide/16 v14, -0x1

    cmp-long v16, v10, v14

    if-eqz v16, :cond_b

    const-wide/16 v14, -0x5

    cmp-long v16, v10, v14

    if-eqz v16, :cond_b

    const-wide/16 v14, -0x6

    cmp-long v16, v10, v14

    if-nez v16, :cond_1

    goto/16 :goto_4

    .line 164
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    iget-wide v14, v4, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v16, -0x4

    cmp-long v18, v14, v8

    if-lez v18, :cond_2

    iget v11, v4, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v12, v11

    iget-short v11, v4, Lcom/ibm/icu/text/NFRule;->exponent:S

    .line 170
    invoke-static {v12, v13, v11}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v11

    rem-long/2addr v14, v11

    cmp-long v11, v14, v8

    if-eqz v11, :cond_4

    :cond_2
    iget-wide v11, v4, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v13, -0x2

    cmp-long v15, v11, v13

    if-eqz v15, :cond_4

    cmp-long v13, v11, v16

    if-nez v13, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_3

    .line 180
    :cond_4
    :goto_1
    new-instance v11, Lcom/ibm/icu/text/NFRule;

    const/4 v12, 0x0

    invoke-direct {v11, v2, v12}, Lcom/ibm/icu/text/NFRule;-><init>(Lcom/ibm/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    .line 181
    iget-wide v12, v4, Lcom/ibm/icu/text/NFRule;->baseValue:J

    cmp-long v2, v12, v8

    if-ltz v2, :cond_5

    .line 182
    iput-wide v12, v11, Lcom/ibm/icu/text/NFRule;->baseValue:J

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/ibm/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v2

    if-nez v2, :cond_7

    .line 184
    iget-wide v12, v4, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    iput-wide v12, v4, Lcom/ibm/icu/text/NFRule;->baseValue:J

    goto :goto_2

    :cond_5
    const-wide/16 v14, -0x2

    cmp-long v2, v12, v14

    if-nez v2, :cond_6

    const-wide/16 v8, -0x3

    .line 191
    iput-wide v8, v11, Lcom/ibm/icu/text/NFRule;->baseValue:J

    goto :goto_2

    :cond_6
    cmp-long v2, v12, v16

    if-nez v2, :cond_7

    .line 197
    iput-wide v12, v11, Lcom/ibm/icu/text/NFRule;->baseValue:J

    .line 198
    iput-wide v14, v4, Lcom/ibm/icu/text/NFRule;->baseValue:J

    .line 203
    :cond_7
    :goto_2
    iget v2, v4, Lcom/ibm/icu/text/NFRule;->radix:I

    iput v2, v11, Lcom/ibm/icu/text/NFRule;->radix:I

    .line 204
    iget-short v2, v4, Lcom/ibm/icu/text/NFRule;->exponent:S

    iput-short v2, v11, Lcom/ibm/icu/text/NFRule;->exponent:S

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v7, 0x1

    .line 209
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_8

    .line 210
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v0, v2, v1}, Lcom/ibm/icu/text/NFRule;->extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;Lcom/ibm/icu/text/NFRule;)V

    const/4 v2, 0x0

    .line 218
    :goto_3
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 219
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    .line 220
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    .line 221
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v7, v2, :cond_9

    .line 222
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :cond_9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2, v1}, Lcom/ibm/icu/text/NFRule;->extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;Lcom/ibm/icu/text/NFRule;)V

    if-eqz v11, :cond_c

    .line 232
    iget-wide v1, v11, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_a

    .line 233
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 236
    :cond_a
    invoke-virtual {v0, v11}, Lcom/ibm/icu/text/NFRuleSet;->setNonNumericalRule(Lcom/ibm/icu/text/NFRule;)V

    goto :goto_5

    .line 158
    :cond_b
    :goto_4
    invoke-direct {v4, v0, v5, v1}, Lcom/ibm/icu/text/NFRule;->extractSubstitutions(Lcom/ibm/icu/text/NFRuleSet;Ljava/lang/String;Lcom/ibm/icu/text/NFRule;)V

    .line 240
    :cond_c
    :goto_5
    iget-wide v1, v4, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-ltz v7, :cond_d

    .line 241
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 244
    :cond_d
    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/NFRuleSet;->setNonNumericalRule(Lcom/ibm/icu/text/NFRule;)V

    :goto_6
    return-void
.end method

.method private matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Lcom/ibm/icu/text/PluralFormat;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NFSubstitution;DI)Ljava/lang/Number;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p5

    move-object/from16 v3, p6

    move-object/from16 v10, p7

    .line 1133
    invoke-direct {v0, v1}, Lcom/ibm/icu/text/NFRule;->allIgnorable(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 1134
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v5}, Ljava/text/ParsePosition;-><init>(I)V

    move/from16 v6, p2

    .line 1141
    invoke-direct {v0, v2, v1, v3, v6}, Lcom/ibm/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/PluralFormat;I)[I

    move-result-object v6

    .line 1142
    aget v7, v6, v5

    const/4 v8, 0x1

    .line 1143
    aget v6, v6, v8

    :goto_0
    if-ltz v7, :cond_1

    .line 1148
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1149
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 1150
    iget-object v9, v0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    .line 1151
    invoke-virtual {v9}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    move-result v18

    move-object/from16 v11, p8

    move-object v13, v4

    move-wide/from16 v14, p3

    move-wide/from16 v16, p9

    move/from16 v19, p11

    .line 1150
    invoke-virtual/range {v11 .. v19}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZI)Ljava/lang/Number;

    move-result-object v9

    .line 1159
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v11

    if-ne v11, v7, :cond_0

    add-int/2addr v7, v6

    .line 1160
    invoke-virtual {v10, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v9

    .line 1176
    :cond_0
    invoke-virtual {v4, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    add-int/2addr v7, v6

    .line 1177
    invoke-direct {v0, v2, v1, v3, v7}, Lcom/ibm/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Lcom/ibm/icu/text/PluralFormat;I)[I

    move-result-object v6

    .line 1178
    aget v7, v6, v5

    .line 1179
    aget v6, v6, v8

    goto :goto_0

    .line 1183
    :cond_1
    invoke-virtual {v10, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1184
    sget-object v1, Lcom/ibm/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    return-object v1

    :cond_2
    if-nez p8, :cond_3

    .line 1192
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 1195
    :cond_3
    new-instance v11, Ljava/text/ParsePosition;

    invoke-direct {v11, v5}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1196
    sget-object v12, Lcom/ibm/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 1198
    iget-object v1, v0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    .line 1199
    invoke-virtual {v1}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    move-result v8

    move-object/from16 v1, p8

    move-object/from16 v2, p1

    move-object v3, v11

    move-wide/from16 v4, p3

    move-wide/from16 v6, p9

    move/from16 v9, p11

    .line 1198
    invoke-virtual/range {v1 .. v9}, Lcom/ibm/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZI)Ljava/lang/Number;

    move-result-object v1

    .line 1200
    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1205
    invoke-virtual {v11}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz v1, :cond_4

    move-object v12, v1

    :cond_4
    return-object v12
.end method

.method private parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ":"

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v2, v5, :cond_14

    .line 280
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v2, v4

    .line 282
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 291
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v7, v2, -0x1

    .line 292
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x78

    const/16 v9, 0x30

    if-lt v6, v9, :cond_e

    const/16 v10, 0x39

    if-gt v6, v10, :cond_e

    if-eq v7, v8, :cond_e

    const/4 v8, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    :goto_1
    const-string v14, " in rule descriptor"

    const-string v15, "Illegal character "

    const/16 v6, 0x2e

    const/16 v7, 0x2c

    const-wide/16 v16, 0xa

    const/16 v3, 0x2f

    const/16 v4, 0x3e

    if-ge v8, v2, :cond_5

    .line 305
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v9, :cond_1

    if-gt v13, v10, :cond_1

    mul-long v11, v11, v16

    add-int/lit8 v3, v13, -0x30

    int-to-long v3, v3

    add-long/2addr v11, v3

    goto :goto_2

    :cond_1
    if-eq v13, v3, :cond_5

    if-ne v13, v4, :cond_2

    goto :goto_3

    .line 312
    :cond_2
    invoke-static {v13}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eq v13, v7, :cond_4

    if-ne v13, v6, :cond_3

    goto :goto_2

    .line 313
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_1

    .line 319
    :cond_5
    :goto_3
    invoke-virtual {v0, v11, v12}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    if-ne v13, v3, :cond_c

    add-int/lit8 v8, v8, 0x1

    const-wide/16 v11, 0x0

    :goto_4
    if-ge v8, v2, :cond_a

    .line 329
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v9, :cond_6

    if-gt v13, v10, :cond_6

    mul-long v11, v11, v16

    add-int/lit8 v3, v13, -0x30

    int-to-long v9, v3

    add-long/2addr v11, v9

    goto :goto_5

    :cond_6
    if-ne v13, v4, :cond_7

    goto :goto_6

    .line 336
    :cond_7
    invoke-static {v13}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-nez v3, :cond_9

    if-eq v13, v7, :cond_9

    if-ne v13, v6, :cond_8

    goto :goto_5

    .line 337
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x30

    const/16 v10, 0x39

    goto :goto_4

    :cond_a
    :goto_6
    long-to-int v3, v11

    .line 344
    iput v3, v0, Lcom/ibm/icu/text/NFRule;->radix:I

    if-eqz v3, :cond_b

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/NFRule;->expectedExponent()S

    move-result v3

    iput-short v3, v0, Lcom/ibm/icu/text/NFRule;->exponent:S

    goto :goto_7

    .line 346
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Rule can\'t have radix of 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_7
    if-ne v13, v4, :cond_14

    :goto_8
    if-ge v8, v2, :cond_14

    .line 358
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_d

    .line 359
    iget-short v3, v0, Lcom/ibm/icu/text/NFRule;->exponent:S

    if-lez v3, :cond_d

    add-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    .line 360
    iput-short v3, v0, Lcom/ibm/icu/text/NFRule;->exponent:S

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 362
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal character in rule descriptor"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const-string v3, "-x"

    .line 368
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-wide/16 v2, -0x1

    .line 369
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_9

    :cond_f
    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    const/16 v2, 0x30

    if-ne v6, v2, :cond_10

    if-ne v7, v8, :cond_10

    const-wide/16 v2, -0x3

    .line 373
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    const/4 v2, 0x1

    .line 374
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    goto :goto_9

    :cond_10
    const/4 v2, 0x1

    if-ne v6, v8, :cond_11

    if-ne v7, v8, :cond_11

    const-wide/16 v3, -0x2

    .line 377
    invoke-virtual {v0, v3, v4}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    .line 378
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    goto :goto_9

    :cond_11
    if-ne v6, v8, :cond_12

    const/16 v3, 0x30

    if-ne v7, v3, :cond_12

    const-wide/16 v3, -0x4

    .line 381
    invoke-virtual {v0, v3, v4}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    .line 382
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    goto :goto_9

    :cond_12
    const-string v2, "NaN"

    .line 384
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-wide/16 v2, -0x6

    .line 385
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_9

    :cond_13
    const-string v2, "Inf"

    .line 387
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const-wide/16 v2, -0x5

    .line 388
    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/text/NFRule;->setBaseValue(J)V

    .line 397
    :cond_14
    :goto_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_15

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_15

    const/4 v2, 0x1

    .line 398
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_15
    return-object v1
.end method

.method static power(JS)J
    .locals 4

    if-ltz p2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    const-wide/16 v0, 0x1

    :goto_0
    if-lez p2, :cond_1

    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    mul-long v0, v0, p0

    :cond_0
    mul-long p0, p0, p0

    shr-int/lit8 p2, p2, 0x1

    int-to-short p2, p2

    goto :goto_0

    :cond_1
    return-wide v0

    .line 841
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Base can not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 838
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Exponent can not be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1238
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->formatter:Lcom/ibm/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v0}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->getLenientScanner()Lcom/ibm/icu/text/RbnfLenientScanner;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1245
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    .line 1248
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/ibm/icu/text/RbnfLenientScanner;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1253
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1254
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method private stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 1

    .line 1079
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1086
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/NFRule;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 1090
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1091
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public doFormat(DLjava/lang/StringBuilder;II)V
    .locals 12

    move-object v0, p0

    move-object v7, p3

    move/from16 v8, p4

    .line 794
    iget-object v1, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 796
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    const/4 v9, 0x0

    if-nez v2, :cond_0

    .line 797
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v1

    const/4 v11, 0x0

    goto/16 :goto_1

    .line 800
    :cond_0
    iget-object v1, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v2, "$("

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 801
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v3, ")$"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 802
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 803
    iget-object v4, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 804
    iget-object v4, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-wide/16 v4, 0x0

    cmpg-double v2, v4, p1

    if-gtz v2, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p1, v4

    if-gez v2, :cond_2

    .line 810
    iget v2, v0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v4, v2

    iget-short v2, v0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-static {v4, v5, v2}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    goto :goto_0

    .line 813
    :cond_2
    iget v2, v0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v4, v2

    iget-short v2, v0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-static {v4, v5, v2}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double v4, p1, v4

    .line 815
    :goto_0
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    double-to-long v4, v4

    long-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/ibm/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_3

    .line 817
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    :cond_3
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v2, v4

    move v10, v1

    move v11, v2

    .line 821
    :goto_1
    iget-object v1, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_5

    .line 822
    invoke-virtual {v1}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    if-le v2, v10, :cond_4

    move v2, v11

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    sub-int v5, v8, v2

    move-wide v2, p1

    move-object v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    .line 824
    :cond_5
    iget-object v1, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_7

    .line 825
    invoke-virtual {v1}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    if-le v2, v10, :cond_6

    move v9, v11

    :cond_6
    sub-int v5, v8, v9

    move-wide v2, p1

    move-object v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    :cond_7
    return-void
.end method

.method public doFormat(JLjava/lang/StringBuilder;II)V
    .locals 12

    move-object v0, p0

    move-object v7, p3

    move/from16 v8, p4

    .line 752
    iget-object v1, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 754
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    const/4 v9, 0x0

    if-nez v2, :cond_0

    .line 755
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v1

    const/4 v11, 0x0

    goto :goto_0

    .line 758
    :cond_0
    iget-object v1, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v2, "$("

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 759
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v3, ")$"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 760
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 761
    iget-object v4, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    .line 762
    iget-object v4, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    :cond_1
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    iget v4, v0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v4, v4

    iget-short v6, v0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-static {v4, v5, v6}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v4

    div-long v4, p1, v4

    long-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/ibm/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v1, :cond_2

    .line 766
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v8, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    :cond_2
    iget-object v2, v0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v2, v4

    move v10, v1

    move v11, v2

    .line 770
    :goto_0
    iget-object v1, v0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_4

    .line 771
    invoke-virtual {v1}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    if-le v2, v10, :cond_3

    move v2, v11

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    sub-int v5, v8, v2

    move-wide v2, p1

    move-object v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    .line 773
    :cond_4
    iget-object v1, v0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_6

    .line 774
    invoke-virtual {v1}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    if-le v2, v10, :cond_5

    move v9, v11

    :cond_5
    sub-int v5, v8, v9

    move-wide v2, p1

    move-object v4, p3

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ibm/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    :cond_6
    return-void
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZDI)Ljava/lang/Number;
    .locals 27

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    .line 913
    new-instance v14, Ljava/text/ParsePosition;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/text/ParsePosition;-><init>(I)V

    .line 919
    iget-object v0, v12, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, v12, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    move v11, v0

    .line 920
    iget-object v0, v12, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, v12, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    move v9, v0

    .line 921
    iget-object v0, v12, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-direct {v12, v1, v0, v14}, Lcom/ibm/icu/text/NFRule;->stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v10

    .line 922
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v16, v0, v1

    .line 924
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz v11, :cond_2

    .line 927
    sget-object v0, Lcom/ibm/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    return-object v0

    .line 929
    :cond_2
    iget-wide v0, v12, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v2, -0x5

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 931
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 932
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_3
    const-wide/16 v2, -0x6

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    .line 936
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 937
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_4
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    .line 972
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-double v7, v0

    move-wide/from16 v17, v2

    const/4 v6, 0x0

    const/16 v19, 0x0

    .line 979
    :goto_2
    invoke-virtual {v14, v15}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 980
    iget-object v0, v12, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 981
    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v3, v12, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    iget-object v4, v12, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v19

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-wide v3, v7

    move/from16 v22, v6

    move-object/from16 v6, v20

    move-wide/from16 v23, v7

    move-object v7, v14

    move-object/from16 v8, v21

    move/from16 v25, v9

    move-object v15, v10

    move-wide/from16 v9, p4

    move v13, v11

    move/from16 v11, p6

    .line 980
    invoke-direct/range {v0 .. v11}, Lcom/ibm/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Lcom/ibm/icu/text/PluralFormat;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NFSubstitution;DI)Ljava/lang/Number;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 988
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v12, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v0, v19

    move/from16 v6, v22

    move/from16 v1, v25

    const/16 v20, 0x0

    goto/16 :goto_7

    .line 989
    :cond_6
    :goto_3
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v19

    .line 991
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 992
    new-instance v11, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v11, v9}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v2, 0x0

    .line 998
    iget-object v0, v12, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    move/from16 v10, v25

    .line 999
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v12, Lcom/ibm/icu/text/NFRule;->rulePatternFormat:Lcom/ibm/icu/text/PluralFormat;

    iget-object v8, v12, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    move-object/from16 v0, p0

    move-object v7, v11

    move/from16 v26, v10

    const/16 v20, 0x0

    move-wide/from16 v9, p4

    move-object/from16 v21, v11

    move/from16 v11, p6

    .line 998
    invoke-direct/range {v0 .. v11}, Lcom/ibm/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Lcom/ibm/icu/text/PluralFormat;Ljava/text/ParsePosition;Lcom/ibm/icu/text/NFSubstitution;DI)Ljava/lang/Number;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1005
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v12, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v3, v22

    goto :goto_5

    .line 1006
    :cond_8
    :goto_4
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int v2, v16, v2

    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/2addr v2, v3

    move/from16 v3, v22

    if-le v2, v3, :cond_9

    .line 1007
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int v2, v16, v2

    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int v6, v2, v3

    move-wide/from16 v17, v0

    goto :goto_6

    :cond_9
    :goto_5
    move v6, v3

    :goto_6
    move/from16 v0, v19

    move/from16 v1, v26

    :goto_7
    if-eq v13, v1, :cond_b

    .line 1030
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    .line 1031
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_b

    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-ne v2, v0, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v19, v0

    move v9, v1

    move v11, v13

    move-object v10, v15

    move-wide/from16 v7, v23

    const/4 v15, 0x0

    move-object/from16 v13, p2

    goto/16 :goto_2

    :cond_b
    :goto_8
    move-object/from16 v0, p2

    .line 1037
    invoke-virtual {v0, v6}, Ljava/text/ParsePosition;->setIndex(I)V

    if-eqz p3, :cond_c

    if-lez v6, :cond_c

    .line 1049
    iget-object v0, v12, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-nez v0, :cond_c

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double v17, v0, v17

    :cond_c
    move-wide/from16 v0, v17

    double-to-long v2, v0

    long-to-double v4, v2

    cmpl-double v6, v0, v4

    if-nez v6, :cond_d

    .line 1055
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1057
    :cond_d
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v0, v1}, Ljava/lang/Double;-><init>(D)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 615
    instance-of v0, p1, Lcom/ibm/icu/text/NFRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 616
    check-cast p1, Lcom/ibm/icu/text/NFRule;

    .line 618
    iget-wide v2, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    iget-wide v4, p1, Lcom/ibm/icu/text/NFRule;->baseValue:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    iget v2, p1, Lcom/ibm/icu/text/NFRule;->radix:I

    if-ne v0, v2, :cond_0

    iget-short v0, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    iget-short v2, p1, Lcom/ibm/icu/text/NFRule;->exponent:S

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    iget-object v2, p1, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    iget-object v2, p1, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    .line 622
    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    iget-object p1, p1, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    .line 623
    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getBaseValue()J
    .locals 2

    .line 721
    iget-wide v0, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    return-wide v0
.end method

.method public final getDecimalPoint()C
    .locals 1

    .line 713
    iget-char v0, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    return v0
.end method

.method public getDivisor()J
    .locals 3

    .line 730
    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v0, v0

    iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method final setBaseValue(J)V
    .locals 3

    .line 524
    iput-wide p1, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const/16 v0, 0xa

    .line 525
    iput v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 533
    invoke-direct {p0}, Lcom/ibm/icu/text/NFRule;->expectedExponent()S

    move-result p1

    iput-short p1, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    .line 539
    iget-object p2, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz p2, :cond_0

    .line 540
    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/text/NFSubstitution;->setDivisor(IS)V

    .line 542
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz p1, :cond_2

    .line 543
    iget p2, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    iget-short v0, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-virtual {p1, p2, v0}, Lcom/ibm/icu/text/NFSubstitution;->setDivisor(IS)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 549
    iput-short p1, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    :cond_2
    :goto_0
    return-void
.end method

.method public setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V
    .locals 1

    .line 1329
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v0, :cond_0

    .line 1330
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/NFSubstitution;->setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v0, :cond_1

    .line 1333
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/NFSubstitution;->setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    :cond_1
    return-void
.end method

.method public shouldRollBack(J)Z
    .locals 6

    .line 879
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFSubstitution;->isModulusSubstitution()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ibm/icu/text/NFSubstitution;->isModulusSubstitution()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 882
    :cond_1
    iget v0, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    int-to-long v2, v0

    iget-short v0, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    invoke-static {v2, v3, v0}, Lcom/ibm/icu/text/NFRule;->power(JS)J

    move-result-wide v2

    .line 883
    rem-long/2addr p1, v2

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    iget-wide p1, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    rem-long/2addr p1, v2

    cmp-long v0, p1, v4

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    iget-wide v1, p0, Lcom/ibm/icu/text/NFRule;->baseValue:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string v1, "-x: "

    .line 646
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_0
    const-wide/16 v3, -0x2

    const-string v5, "x: "

    const/16 v6, 0x78

    const/16 v7, 0x2e

    cmp-long v8, v1, v3

    if-nez v8, :cond_2

    .line 649
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v7, v1

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_2
    const-wide/16 v3, -0x3

    cmp-long v8, v1, v3

    if-nez v8, :cond_4

    const/16 v1, 0x30

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v7, v1

    :goto_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    const-wide/16 v3, -0x4

    cmp-long v5, v1, v3

    if-nez v5, :cond_6

    .line 655
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/ibm/icu/text/NFRule;->decimalPoint:C

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v7, v1

    :goto_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_6
    const-wide/16 v3, -0x5

    cmp-long v5, v1, v3

    if-nez v5, :cond_7

    const-string v1, "Inf: "

    .line 658
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const-wide/16 v3, -0x6

    cmp-long v5, v1, v3

    if-nez v5, :cond_8

    const-string v1, "NaN: "

    .line 661
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 670
    :cond_8
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_9

    const/16 v1, 0x2f

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/NFRule;->radix:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 674
    :cond_9
    invoke-direct {p0}, Lcom/ibm/icu/text/NFRule;->expectedExponent()S

    move-result v1

    iget-short v2, p0, Lcom/ibm/icu/text/NFRule;->exponent:S

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_a

    const/16 v3, 0x3e

    .line 676
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    const-string v1, ": "

    .line 677
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    :goto_4
    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/16 v1, 0x27

    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 689
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v2, :cond_d

    .line 691
    invoke-virtual {v2}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->sub2:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_d
    iget-object v2, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    if-eqz v2, :cond_e

    .line 694
    invoke-virtual {v2}, Lcom/ibm/icu/text/NFSubstitution;->getPos()I

    move-result v2

    iget-object v3, p0, Lcom/ibm/icu/text/NFRule;->sub1:Lcom/ibm/icu/text/NFSubstitution;

    invoke-virtual {v3}, Lcom/ibm/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    .line 700
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
