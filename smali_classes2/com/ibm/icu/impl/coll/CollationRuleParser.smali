.class public final Lcom/ibm/icu/impl/coll/CollationRuleParser;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/coll/CollationRuleParser$Importer;,
        Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;,
        Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BEFORE:Ljava/lang/String; = "[before"

.field private static final OFFSET_SHIFT:I = 0x8

.field static final POSITION_VALUES:[Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

.field static final POS_BASE:C = '\u2800'

.field static final POS_LEAD:C = '\ufffe'

.field private static final STARRED_FLAG:I = 0x10

.field private static final STRENGTH_MASK:I = 0xf

.field private static final UCOL_DEFAULT:I = -0x1

.field private static final UCOL_OFF:I = 0x0

.field private static final UCOL_ON:I = 0x1

.field private static final U_PARSE_CONTEXT_LEN:I = 0x10

.field private static final gSpecialReorderCodes:[Ljava/lang/String;

.field private static final positions:[Ljava/lang/String;


# instance fields
.field private final baseData:Lcom/ibm/icu/impl/coll/CollationData;

.field private importer:Lcom/ibm/icu/impl/coll/CollationRuleParser$Importer;

.field private nfc:Lcom/ibm/icu/text/Normalizer2;

.field private nfd:Lcom/ibm/icu/text/Normalizer2;

.field private final rawBuilder:Ljava/lang/StringBuilder;

.field private ruleIndex:I

.field private rules:Ljava/lang/String;

.field private settings:Lcom/ibm/icu/impl/coll/CollationSettings;

.field private sink:Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 47
    invoke-static {}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->values()[Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->POSITION_VALUES:[Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "first tertiary ignorable"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "last tertiary ignorable"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "first secondary ignorable"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "last secondary ignorable"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "first primary ignorable"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "last primary ignorable"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v8, "first variable"

    aput-object v8, v0, v1

    const/4 v1, 0x7

    const-string v8, "last variable"

    aput-object v8, v0, v1

    const/16 v1, 0x8

    const-string v8, "first regular"

    aput-object v8, v0, v1

    const/16 v1, 0x9

    const-string v8, "last regular"

    aput-object v8, v0, v1

    const/16 v1, 0xa

    const-string v8, "first implicit"

    aput-object v8, v0, v1

    const/16 v1, 0xb

    const-string v8, "last implicit"

    aput-object v8, v0, v1

    const/16 v1, 0xc

    const-string v8, "first trailing"

    aput-object v8, v0, v1

    const/16 v1, 0xd

    const-string v8, "last trailing"

    aput-object v8, v0, v1

    .line 475
    sput-object v0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "space"

    aput-object v1, v0, v2

    const-string v1, "punct"

    aput-object v1, v0, v3

    const-string v1, "symbol"

    aput-object v1, v0, v4

    const-string v1, "currency"

    aput-object v1, v0, v5

    const-string v1, "digit"

    aput-object v1, v0, v6

    .line 733
    sput-object v0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/coll/CollationData;)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    .line 905
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFDInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->nfd:Lcom/ibm/icu/text/Normalizer2;

    .line 906
    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFCInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->nfc:Lcom/ibm/icu/text/Normalizer2;

    .line 91
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    return-void
.end method

.method private appendErrorContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " at index "

    .line 862
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " near \""

    .line 865
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    const/16 v1, 0xf

    sub-int/2addr p1, v1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 870
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 873
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v0, v2, p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 p1, 0x21

    .line 875
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 877
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iget v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    sub-int/2addr p1, v2

    const/16 v3, 0x10

    if-lt p1, v3, :cond_2

    .line 880
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 v1, 0xe

    goto :goto_1

    :cond_2
    move v1, p1

    .line 884
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    .line 885
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getOnOffValue(Ljava/lang/String;)I
    .locals 1

    const-string v0, "on"

    .line 763
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "off"

    .line 765
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getReorderCode(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 743
    :goto_0
    sget-object v1, Lcom/ibm/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 744
    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit16 v0, v0, 0x1000

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x100a

    .line 749
    :try_start_0
    invoke-static {v0, p0}, Lcom/ibm/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v0
    :try_end_0
    .catch Lcom/ibm/icu/impl/IllegalIcuArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_2

    return v0

    :catch_0
    nop

    :cond_2
    const-string v0, "others"

    .line 756
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x67

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private static final isSurrogate(I)Z
    .locals 1

    and-int/lit16 p0, p0, -0x800

    const v0, 0xd800

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSyntaxChar(I)Z
    .locals 1

    const/16 v0, 0x21

    if-gt v0, p0, :cond_3

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_3

    const/16 v0, 0x2f

    if-le p0, v0, :cond_2

    const/16 v0, 0x3a

    if-gt v0, p0, :cond_0

    const/16 v0, 0x40

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x5b

    if-gt v0, p0, :cond_1

    const/16 v0, 0x60

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x7b

    if-gt v0, p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .locals 2

    .line 851
    new-instance v0, Ljava/text/ParseException;

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->appendErrorContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    const/4 p1, 0x0

    .line 132
    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 134
    :goto_0
    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 135
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 136
    invoke-static {p1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    if-eq p1, v0, :cond_5

    const/16 v0, 0x23

    if-eq p1, v0, :cond_4

    const/16 v0, 0x26

    if-eq p1, v0, :cond_3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_2

    const/16 v0, 0x5b

    if-eq p1, v0, :cond_1

    const-string p1, "expected a reset or setting or comment"

    .line 160
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseSetting()V

    goto :goto_0

    .line 151
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    const/16 v0, 0x800

    invoke-virtual {p1, v0, v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 152
    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    .line 142
    :cond_3
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseRuleChain()V

    goto :goto_0

    .line 148
    :cond_4
    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipComment(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    .line 157
    :cond_5
    iget p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :cond_6
    return-void
.end method

.method private parseRelationOperator()I
    .locals 6

    .line 244
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 245
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 247
    :cond_0
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 248
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2a

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    const/16 v4, 0xf

    .line 280
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x1f

    goto :goto_1

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 253
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 255
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x3

    const/4 v4, 0x3

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 267
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v3, v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    or-int/lit8 v4, v4, 0x10

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x1

    .line 288
    :cond_4
    :goto_1
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    sub-int/2addr v3, v0

    shl-int/lit8 v0, v3, 0x8

    or-int/2addr v0, v4

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseRelationStrings(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 298
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x7c

    const-string v3, ""

    if-ne v0, v2, :cond_2

    .line 300
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    .line 301
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 302
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v5, v2

    move-object v2, v0

    move v0, v5

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_3

    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p2, p2, 0x1

    .line 307
    invoke-direct {p0, p2, v3}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 310
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 312
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v1

    .line 313
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->nfc:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->nfc:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    const-string p1, "in \'prefix|str\', prefix and str must each start with an NFC boundary"

    .line 314
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 319
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->sink:Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v2, v1, v3}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    iput p2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :catch_0
    move-exception p1

    const-string p2, "adding relation failed"

    .line 321
    invoke-direct {p0, p2, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private parseReordering(Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 703
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    .line 705
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void

    .line 709
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 710
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 713
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 714
    :cond_1
    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 715
    invoke-static {v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->getReorderCode(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    const-string p1, "unknown script or reorder code"

    .line 717
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 720
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    .line 723
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 724
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->resetReordering()V

    goto :goto_3

    .line 726
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 728
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v1

    move v1, v3

    goto :goto_2

    .line 729
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setReordering(Lcom/ibm/icu/impl/coll/CollationData;[I)V

    :goto_3
    return-void
.end method

.method private parseResetAndPosition()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 208
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    .line 212
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    const-string v2, "[before"

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x7

    .line 213
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 214
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 215
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 216
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-gt v5, v4, :cond_0

    const/16 v6, 0x33

    if-gt v4, v6, :cond_0

    iget-object v6, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 217
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x5d

    if-ne v2, v6, :cond_0

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    add-int/lit8 v1, v1, 0x2

    .line 220
    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v4, 0xf

    .line 224
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1

    const-string v0, "reset without position"

    .line 225
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v2

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_2

    .line 229
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseSpecialPosition(ILjava/lang/StringBuilder;)I

    move-result v0

    goto :goto_1

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result v0

    .line 234
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->sink:Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;

    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v3}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;->addReset(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    iput v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return v4

    :catch_0
    move-exception v0

    const-string v1, "adding reset failed"

    .line 236
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return v2
.end method

.method private parseRuleChain()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseResetAndPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 170
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseRelationOperator()I

    move-result v3

    if-gez v3, :cond_2

    .line 172
    iget v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_0

    .line 174
    iget v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v3, v1

    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipComment(I)I

    move-result v3

    iput v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    const-string v0, "reset not followed by a relation"

    .line 178
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v4, v3, 0xf

    const/16 v5, 0xf

    if-ge v0, v5, :cond_4

    if-eqz v2, :cond_3

    if-eq v4, v0, :cond_4

    const-string v0, "reset-before strength differs from its first relation"

    .line 187
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_3
    if-ge v4, v0, :cond_4

    const-string v0, "reset-before strength followed by a stronger relation"

    .line 192
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 197
    :cond_4
    iget v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    shr-int/lit8 v5, v3, 0x8

    add-int/2addr v2, v5

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_5

    .line 199
    invoke-direct {p0, v4, v2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseRelationStrings(II)V

    goto :goto_1

    .line 201
    :cond_5
    invoke-direct {p0, v4, v2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseStarredCharacters(II)V

    :goto_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseSetting()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 523
    iget v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 524
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->readWords(ILjava/lang/StringBuilder;)I

    move-result v2

    if-le v2, v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "expected a setting/option at \'[\'"

    .line 526
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_20

    add-int/2addr v2, v1

    const-string v3, "reorder"

    .line 532
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_3

    .line 533
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x7

    if-eq v3, v5, :cond_2

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    .line 534
    :cond_2
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseReordering(Ljava/lang/CharSequence;)V

    .line 535
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_3
    const-string v3, "backwards 2"

    .line 538
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 539
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    const/16 v3, 0x800

    invoke-virtual {v0, v3, v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 540
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    .line 544
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, 0x0

    if-ltz v3, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 546
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 547
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v5, ""

    :goto_0
    const-string v3, "strength"

    .line 551
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, -0x1

    if-eqz v3, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v1, :cond_8

    .line 553
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-gt v1, v0, :cond_6

    const/16 v3, 0x34

    if-gt v0, v3, :cond_6

    sub-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_1

    :cond_6
    const/16 v1, 0x49

    if-ne v0, v1, :cond_7

    const/16 v0, 0xf

    goto :goto_1

    :cond_7
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v6, :cond_22

    .line 560
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/coll/CollationSettings;->setStrength(I)V

    .line 561
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_8
    const-string v3, "alternate"

    .line 564
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v0, "non-ignorable"

    .line 566
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    const-string v0, "shifted"

    .line 568
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, -0x1

    :goto_2
    if-eq v0, v6, :cond_22

    .line 572
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    if-lez v0, :cond_b

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    .line 573
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_c
    const-string v3, "maxVariable"

    .line 576
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x2

    if-eqz v3, :cond_11

    const-string v0, "space"

    .line 578
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    const-string v0, "punct"

    .line 580
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    const-string v0, "symbol"

    .line 582
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x2

    goto :goto_4

    :cond_f
    const-string v0, "currency"

    .line 584
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x3

    goto :goto_4

    :cond_10
    const/4 v1, -0x1

    :goto_4
    if-eq v1, v6, :cond_22

    .line 588
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0, v1, v4}, Lcom/ibm/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    .line 589
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->baseData:Lcom/ibm/icu/impl/coll/CollationData;

    add-int/lit16 v1, v1, 0x1000

    invoke-virtual {v3, v1}, Lcom/ibm/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/ibm/icu/impl/coll/CollationSettings;->variableTop:J

    .line 592
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_11
    const-string v3, "caseFirst"

    .line 595
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v0, "off"

    .line 597
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_5

    :cond_12
    const-string v0, "lower"

    .line 599
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v4, 0x200

    goto :goto_5

    :cond_13
    const-string v0, "upper"

    .line 601
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 v4, 0x300

    goto :goto_5

    :cond_14
    const/4 v4, -0x1

    :goto_5
    if-eq v4, v6, :cond_22

    .line 605
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    invoke-virtual {v0, v4}, Lcom/ibm/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 606
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_15
    const-string v3, "caseLevel"

    .line 609
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 610
    invoke-static {v5}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_22

    .line 612
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    const/16 v5, 0x400

    if-lez v0, :cond_16

    goto :goto_6

    :cond_16
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v3, v5, v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 613
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_17
    const-string v3, "normalization"

    .line 616
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 617
    invoke-static {v5}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_22

    .line 619
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    if-lez v0, :cond_18

    const/4 v4, 0x1

    :cond_18
    invoke-virtual {v3, v1, v4}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 620
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_19
    const-string v3, "numericOrdering"

    .line 623
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 624
    invoke-static {v5}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_22

    .line 626
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    if-lez v0, :cond_1a

    goto :goto_7

    :cond_1a
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v3, v7, v1}, Lcom/ibm/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 627
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_1b
    const-string v3, "hiraganaQ"

    .line 630
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 631
    invoke-static {v5}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_22

    if-ne v0, v1, :cond_1c

    const-string v0, "[hiraganaQ on] is not supported"

    .line 634
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 636
    :cond_1c
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_1d
    const-string v1, "import"

    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 643
    :try_start_0
    new-instance v0, Lcom/ibm/icu/util/ULocale$Builder;

    invoke-direct {v0}, Lcom/ibm/icu/util/ULocale$Builder;-><init>()V

    invoke-virtual {v0, v5}, Lcom/ibm/icu/util/ULocale$Builder;->setLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale$Builder;->build()Lcom/ibm/icu/util/ULocale;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 649
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "collation"

    .line 651
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->importer:Lcom/ibm/icu/impl/coll/CollationRuleParser$Importer;

    if-nez v3, :cond_1e

    const-string v0, "[import langTag] is not supported"

    .line 653
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    goto :goto_a

    :cond_1e
    if-eqz v0, :cond_1f

    goto :goto_8

    :cond_1f
    :try_start_1
    const-string v0, "standard"

    .line 658
    :goto_8
    invoke-interface {v3, v1, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Importer;->getRules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 664
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 665
    iget v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    .line 667
    :try_start_2
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 669
    iput v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    const-string v3, "parsing imported rules failed"

    .line 670
    invoke-direct {p0, v3, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 672
    :goto_9
    iput-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    .line 673
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    :goto_a
    return-void

    :catch_1
    move-exception v0

    const-string v1, "[import langTag] failed"

    .line 661
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_2
    move-exception v0

    const-string v1, "expected language tag in [import langTag]"

    .line 645
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 677
    :cond_20
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5b

    if-ne v1, v3, :cond_22

    .line 678
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 679
    invoke-direct {p0, v2, v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseUnicodeSet(ILcom/ibm/icu/text/UnicodeSet;)I

    move-result v2

    const-string v3, "optimize"

    .line 680
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 682
    :try_start_3
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->sink:Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;->optimize(Lcom/ibm/icu/text/UnicodeSet;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    const-string v1, "[optimize set] failed"

    .line 684
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 686
    :goto_b
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_21
    const-string v3, "suppressContractions"

    .line 688
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 690
    :try_start_4
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->sink:Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;->suppressContractions(Lcom/ibm/icu/text/UnicodeSet;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    const-string v1, "[suppressContractions set] failed"

    .line 692
    invoke-direct {p0, v1, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 694
    :goto_c
    iput v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_22
    const-string v0, "not a valid setting/option"

    .line 698
    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void
.end method

.method private parseSpecialPosition(ILjava/lang/StringBuilder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 498
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->readWords(ILjava/lang/StringBuilder;)I

    move-result v0

    if-le v0, p1, :cond_3

    .line 499
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 501
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 502
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 503
    :goto_0
    sget-object v3, Lcom/ibm/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    array-length v4, v3

    const v5, 0xfffe

    if-ge v2, v4, :cond_1

    .line 504
    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit16 v2, v2, 0x2800

    int-to-char p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "top"

    .line 509
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    move-result p1

    add-int/lit16 p1, p1, 0x2800

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_2
    const-string v2, "variable top"

    .line 513
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Position;->ordinal()I

    move-result p1

    add-int/lit16 p1, p1, 0x2800

    int-to-char p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_3
    const-string p2, "not a valid special reset position"

    .line 518
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1
.end method

.method private parseStarredCharacters(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 329
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p2

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v0}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 330
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "missing starred-relation string"

    .line 331
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    .line 337
    :goto_1
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v5, "adding relation failed"

    const-string v6, ""

    if-ge v2, v4, :cond_2

    .line 338
    iget-object v3, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v3

    .line 339
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/Normalizer2;->isInert(I)Z

    move-result v4

    if-nez v4, :cond_1

    const-string p1, "starred-relation string is not all NFD-inert"

    .line 340
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 344
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->sink:Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v6, v7, v6}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :catch_0
    move-exception p1

    .line 346
    invoke-direct {p0, v5, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 352
    :cond_2
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p2, v2, :cond_b

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_3

    goto :goto_3

    :cond_3
    if-gez v3, :cond_4

    const-string p1, "range without start in starred-relation string"

    .line 356
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 359
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p2

    .line 360
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_5

    const-string p1, "range without end in starred-relation string"

    .line 361
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 364
    :cond_5
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v2

    if-ge v2, v3, :cond_6

    const-string p1, "range start greater than end in starred-relation string"

    .line 366
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    if-gt v3, v2, :cond_a

    .line 371
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->nfd:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/Normalizer2;->isInert(I)Z

    move-result v4

    if-nez v4, :cond_7

    const-string p1, "starred-relation string range is not all NFD-inert"

    .line 372
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 375
    :cond_7
    invoke-static {v3}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->isSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string p1, "starred-relation string range contains a surrogate"

    .line 376
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_8
    const v4, 0xfffd

    if-gt v4, v3, :cond_9

    const v4, 0xffff

    if-gt v3, v4, :cond_9

    const-string p1, "starred-relation string range contains U+FFFD, U+FFFE or U+FFFF"

    .line 380
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    .line 384
    :cond_9
    :try_start_1
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->sink:Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;

    invoke-static {v3}, Lcom/ibm/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v6, v7, v6}, Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 386
    invoke-direct {p0, v5, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 391
    :cond_a
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    goto/16 :goto_0

    .line 393
    :cond_b
    :goto_3
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void
.end method

.method private parseString(ILjava/lang/StringBuilder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 405
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 406
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_9

    .line 407
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 408
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->isSyntaxChar(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x27

    if-ne p1, v1, :cond_4

    .line 410
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v2, p1, :cond_0

    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_0

    .line 412
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, v2, 0x1

    goto :goto_0

    .line 418
    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v2, p1, :cond_1

    const-string p1, "quoted literal text missing terminating apostrophe"

    .line 419
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v2

    .line 422
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v1, :cond_3

    .line 424
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    :goto_2
    move v2, v3

    .line 432
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v1, 0x5c

    if-ne p1, v1, :cond_7

    .line 435
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne v2, p1, :cond_5

    const-string p1, "backslash escape at the end of the rule string"

    .line 436
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v2

    .line 439
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    .line 440
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_3

    .line 447
    :cond_6
    invoke-static {p1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    add-int/lit8 p1, v2, -0x1

    goto :goto_4

    .line 452
    :cond_8
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    move p1, v2

    goto/16 :goto_0

    .line 455
    :cond_9
    :goto_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 456
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v1

    .line 457
    invoke-static {v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->isSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string p2, "string contains an unpaired surrogate"

    .line 458
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1

    :cond_a
    const v2, 0xfffd

    if-gt v2, v1, :cond_b

    const v2, 0xffff

    if-gt v1, v2, :cond_b

    const-string p2, "string contains U+FFFD, U+FFFE or U+FFFF"

    .line 462
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1

    .line 465
    :cond_b
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4

    :cond_c
    return p1
.end method

.method private parseTailoringString(ILjava/lang/StringBuilder;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 397
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p1

    .line 398
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "missing relation string"

    .line 399
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 401
    :cond_0
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    return p1
.end method

.method private parseUnicodeSet(ILcom/ibm/icu/text/UnicodeSet;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, p1

    .line 777
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    const-string p1, "unbalanced UnicodeSet pattern brackets"

    .line 778
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v1

    .line 781
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    const/16 v2, 0x5d

    if-ne v1, v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_4

    .line 789
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Lcom/ibm/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 791
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not a valid UnicodeSet pattern: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    .line 793
    :goto_1
    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    .line 794
    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-eq p1, p2, :cond_3

    iget-object p2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-eq p2, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    :goto_2
    const-string p2, "missing option-terminating \']\' after UnicodeSet pattern"

    .line 795
    invoke-direct {p0, p2}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1

    :cond_4
    :goto_3
    move v1, v3

    goto :goto_0
.end method

.method private readWords(ILjava/lang/StringBuilder;)I
    .locals 4

    const/4 v0, 0x0

    .line 802
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 803
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    .line 805
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_0

    return v0

    .line 806
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 807
    invoke-static {v1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->isSyntaxChar(I)Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_3

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_3

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_3

    .line 808
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    return p1

    .line 809
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 810
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 811
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return p1

    .line 815
    :cond_3
    invoke-static {v1}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 816
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    .line 817
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    goto :goto_0

    .line 819
    :cond_4
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private setParseError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 841
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->makeParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p1

    throw p1
.end method

.method private setParseError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->makeParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object p1

    .line 846
    invoke-virtual {p1, p2}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 847
    throw p1
.end method

.method private skipComment(I)I
    .locals 2

    .line 827
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x85

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2028

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2029

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    move p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    move p1, v1

    :cond_2
    return p1
.end method

.method private skipWhiteSpace(I)I
    .locals 1

    .line 899
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method


# virtual methods
.method parse(Ljava/lang/String;Lcom/ibm/icu/impl/coll/CollationSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 111
    iput-object p2, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->settings:Lcom/ibm/icu/impl/coll/CollationSettings;

    .line 112
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;)V

    return-void
.end method

.method setImporter(Lcom/ibm/icu/impl/coll/CollationRuleParser$Importer;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->importer:Lcom/ibm/icu/impl/coll/CollationRuleParser$Importer;

    return-void
.end method

.method setSink(Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationRuleParser;->sink:Lcom/ibm/icu/impl/coll/CollationRuleParser$Sink;

    return-void
.end method
