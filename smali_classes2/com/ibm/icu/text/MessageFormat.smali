.class public Lcom/ibm/icu/text/MessageFormat;
.super Lcom/ibm/icu/text/UFormat;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;,
        Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;,
        Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;,
        Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;,
        Lcom/ibm/icu/text/MessageFormat$Field;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CURLY_BRACE_LEFT:C = '{'

.field private static final CURLY_BRACE_RIGHT:C = '}'

.field private static final DATE_MODIFIER_EMPTY:I = 0x0

.field private static final DATE_MODIFIER_FULL:I = 0x4

.field private static final DATE_MODIFIER_LONG:I = 0x3

.field private static final DATE_MODIFIER_MEDIUM:I = 0x2

.field private static final DATE_MODIFIER_SHORT:I = 0x1

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_EMPTY:I = 0x0

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final SINGLE_QUOTE:C = '\''

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_IN_QUOTE:I = 0x2

.field private static final STATE_MSG_ELEMENT:I = 0x3

.field private static final STATE_SINGLE_QUOTE:I = 0x1

.field private static final TYPE_DATE:I = 0x1

.field private static final TYPE_DURATION:I = 0x5

.field private static final TYPE_NUMBER:I = 0x0

.field private static final TYPE_ORDINAL:I = 0x4

.field private static final TYPE_SPELLOUT:I = 0x3

.field private static final TYPE_TIME:I = 0x2

.field private static final dateModifierList:[Ljava/lang/String;

.field private static final modifierList:[Ljava/lang/String;

.field private static final rootLocale:Ljava/util/Locale;

.field static final serialVersionUID:J = 0x6308eb804ceb42dcL

.field private static final typeList:[Ljava/lang/String;


# instance fields
.field private transient cachedFormatters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private transient customFormatArgStarts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient msgPattern:Lcom/ibm/icu/text/MessagePattern;

.field private transient ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

.field private transient stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

.field private transient ulocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "date"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "time"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "spellout"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "ordinal"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "duration"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    .line 2187
    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v8, "currency"

    aput-object v8, v0, v3

    const-string v8, "percent"

    aput-object v8, v0, v4

    const-string v8, "integer"

    aput-object v8, v0, v5

    .line 2197
    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v2, "short"

    aput-object v2, v0, v3

    const-string v2, "medium"

    aput-object v2, v0, v4

    const-string v2, "long"

    aput-object v2, v0, v5

    const-string v2, "full"

    aput-object v2, v0, v6

    .line 2206
    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    .line 2357
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 379
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 380
    sget-object v0, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 381
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 408
    invoke-direct {p0}, Lcom/ibm/icu/text/UFormat;-><init>()V

    .line 409
    iput-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 410
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 395
    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ibm/icu/text/MessageFormat;)Ljava/util/Map;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ibm/icu/text/MessageFormat;)Lcom/ibm/icu/text/NumberFormat;
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ibm/icu/text/MessageFormat;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ibm/icu/text/MessageFormat;I)I
    .locals 0

    .line 364
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->findOtherSubMessage(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/ibm/icu/text/MessageFormat;ILjava/lang/String;)I
    .locals 0

    .line 364
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->findFirstPluralNumberArg(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private argNameMatches(ILjava/lang/String;I)Z
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 578
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    iget-object p3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 579
    invoke-virtual {p3, p1, p2}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result p1

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static autoQuoteApostrophe(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 2534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2537
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x27

    const/4 v8, 0x1

    if-ge v4, v1, :cond_b

    .line 2538
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/4 v10, 0x3

    const/16 v11, 0x7b

    if-eqz v5, :cond_7

    const/16 v12, 0x7d

    if-eq v5, v8, :cond_4

    if-eq v5, v2, :cond_3

    if-eq v5, v10, :cond_0

    goto :goto_2

    :cond_0
    if-eq v9, v11, :cond_2

    if-eq v9, v12, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_a

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    if-eq v9, v7, :cond_6

    goto :goto_2

    :cond_4
    if-eq v9, v7, :cond_6

    if-eq v9, v11, :cond_5

    if-eq v9, v12, :cond_5

    .line 2561
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/4 v5, 0x2

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    if-eq v9, v7, :cond_9

    if-eq v9, v11, :cond_8

    goto :goto_2

    :cond_8
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x3

    goto :goto_2

    :cond_9
    const/4 v5, 0x1

    .line 2590
    :cond_a
    :goto_2
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_b
    if-eq v5, v8, :cond_c

    if-ne v5, v2, :cond_d

    .line 2594
    :cond_c
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2596
    :cond_d
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object p0
.end method

.method private cacheExplicitFormats()V
    .locals 8

    .line 2443
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2444
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 2446
    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2449
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_4

    .line 2453
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v3, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 2454
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v5, :cond_1

    goto :goto_2

    .line 2457
    :cond_1
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v3

    .line 2458
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v3, v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, 0x2

    .line 2463
    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v3

    .line 2465
    iget-object v4, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v4, v5}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    sget-object v7, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v6, v7, :cond_3

    .line 2466
    iget-object v6, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v6, v4}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const-string v4, ""

    .line 2469
    :goto_1
    invoke-direct {p0, v3, v4}, Lcom/ibm/icu/text/MessageFormat;->createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;

    move-result-object v3

    .line 2470
    invoke-direct {p0, v2, v3}, Lcom/ibm/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    move v2, v5

    :goto_2
    add-int/2addr v2, v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;
    .locals 6

    .line 2230
    sget-object v0, Lcom/ibm/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_f

    const/4 v5, 0x4

    if-eq v0, v3, :cond_9

    if-eq v0, v4, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v5, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2337
    new-instance p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, v0, v2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 2339
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2340
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 2342
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2352
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown format type \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2321
    :cond_1
    new-instance p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, v0, v4}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 2323
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2324
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 2326
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2305
    :cond_2
    new-instance p1, Lcom/ibm/icu/text/RuleBasedNumberFormat;

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {p1, v0, v3}, Lcom/ibm/icu/text/RuleBasedNumberFormat;-><init>(Lcom/ibm/icu/util/ULocale;I)V

    .line 2307
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 2308
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    .line 2310
    :try_start_2
    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2282
    :cond_3
    sget-object p1, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v2, :cond_5

    if-eq p1, v5, :cond_4

    .line 2299
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/MessageFormat;->dateTimeFormatForPatternOrSkeleton(Ljava/lang/String;)Ljava/text/Format;

    move-result-object p1

    goto/16 :goto_0

    .line 2296
    :cond_4
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1, p1}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2293
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v3, p1}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2290
    :cond_6
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v4, p1}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2287
    :cond_7
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, p1}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2284
    :cond_8
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v4, p1}, Lcom/ibm/icu/text/DateFormat;->getTimeInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2260
    :cond_9
    sget-object p1, Lcom/ibm/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_e

    if-eq p1, v3, :cond_d

    if-eq p1, v4, :cond_c

    if-eq p1, v2, :cond_b

    if-eq p1, v5, :cond_a

    .line 2277
    invoke-virtual {p0, p2}, Lcom/ibm/icu/text/MessageFormat;->dateTimeFormatForPatternOrSkeleton(Ljava/lang/String;)Ljava/text/Format;

    move-result-object p1

    goto/16 :goto_0

    .line 2274
    :cond_a
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v1, p1}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2271
    :cond_b
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v3, p1}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto/16 :goto_0

    .line 2268
    :cond_c
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v4, p1}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2265
    :cond_d
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, p1}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2262
    :cond_e
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v4, p1}, Lcom/ibm/icu/text/DateFormat;->getDateInstance(ILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    goto :goto_0

    .line 2233
    :cond_f
    sget-object p1, Lcom/ibm/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/ibm/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_14

    if-eq p1, v3, :cond_13

    if-eq p1, v4, :cond_12

    if-eq p1, v2, :cond_11

    .line 2248
    invoke-static {p2, v1}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p1

    const-string v0, "::"

    .line 2249
    invoke-virtual {p2, p1, v0, v1, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_10

    add-int/2addr p1, v4

    .line 2251
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/number/NumberFormatter;->forSkeleton(Ljava/lang/String;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    move-result-object p1

    iget-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->locale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->toFormat()Ljava/text/Format;

    move-result-object p1

    goto :goto_0

    .line 2254
    :cond_10
    new-instance p1, Lcom/ibm/icu/text/DecimalFormat;

    new-instance v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;-><init>(Lcom/ibm/icu/util/ULocale;)V

    invoke-direct {p1, p2, v0}, Lcom/ibm/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    goto :goto_0

    .line 2244
    :cond_11
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getIntegerInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 2241
    :cond_12
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getPercentInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 2238
    :cond_13
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getCurrencyInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    goto :goto_0

    .line 2235
    :cond_14
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object p1

    :catch_0
    :cond_15
    :goto_0
    return-object p1
.end method

.method private static findChoiceSubMessage(Lcom/ibm/icu/text/MessagePattern;ID)I
    .locals 6

    .line 1902
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    add-int/lit8 p1, p1, 0x2

    .line 1911
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 1917
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 1918
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    .line 1919
    sget-object v4, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 1926
    :cond_1
    invoke-virtual {p0, v1}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v3

    add-int/lit8 v1, v2, 0x1

    .line 1928
    invoke-virtual {p0, v2}, Lcom/ibm/icu/text/MessagePattern;->getPatternIndex(I)I

    move-result v2

    .line 1929
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x3c

    if-ne v2, v5, :cond_2

    cmpl-double v2, p2, v3

    if-gtz v2, :cond_3

    goto :goto_1

    :cond_2
    cmpl-double v2, p2, v3

    if-gez v2, :cond_3

    :goto_1
    return p1

    :cond_3
    move p1, v1

    goto :goto_0
.end method

.method private findFirstPluralNumberArg(ILjava/lang/String;)I
    .locals 3

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 2045
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 2046
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    .line 2047
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2050
    :cond_1
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_2

    const/4 p1, -0x1

    return p1

    .line 2053
    :cond_2
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_0

    .line 2054
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v0

    .line 2055
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SIMPLE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v0, v1, :cond_4

    .line 2056
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v0

    .line 2057
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v0, p2}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return p1

    .line 2061
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    goto :goto_0
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 2360
    invoke-static {p0}, Lcom/ibm/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/ibm/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2361
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2362
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private findOtherSubMessage(I)I
    .locals 4

    .line 2012
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->countParts()I

    move-result v0

    .line 2013
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 2014
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2020
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 2021
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    .line 2022
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 2027
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    const-string v3, "other"

    invoke-virtual {v1, p1, v3}, Lcom/ibm/icu/text/MessagePattern;->partSubstringMatches(Lcom/ibm/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    .line 2030
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 2033
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_0

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static format(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1045
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1027
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    invoke-direct {v0, p0}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v15, p3

    move-object/from16 v5, p4

    move-object/from16 v4, p5

    .line 1641
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v3

    .line 1642
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p6

    .line 1644
    :goto_0
    iget-object v8, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v8, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v8

    .line 1645
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    .line 1646
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v10

    .line 1647
    invoke-virtual {v4, v3, v1, v10}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;II)V

    .line 1648
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v9, v1, :cond_0

    return-void

    .line 1651
    :cond_0
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    .line 1652
    sget-object v10, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v9, v10, :cond_2

    .line 1653
    iget-boolean v8, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v8, :cond_1

    .line 1655
    iget-object v8, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v9, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    iget-object v10, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v4, v8, v9, v10}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1658
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v8

    iget-object v9, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v4, v8, v9}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_1

    .line 1662
    :cond_2
    sget-object v10, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v9, v10, :cond_3

    :goto_1
    move-object v9, v3

    move-object v10, v4

    goto/16 :goto_e

    .line 1665
    :cond_3
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    .line 1666
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v8

    .line 1667
    iget-object v9, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v9

    const/4 v10, 0x0

    .line 1671
    iget-object v11, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v11, v9}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v15, :cond_6

    .line 1673
    invoke-virtual {v9}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v9

    .line 1674
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 1676
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_2

    :cond_4
    move-object v13, v12

    :goto_2
    if-ltz v9, :cond_5

    .line 1678
    array-length v14, v15

    if-ge v9, v14, :cond_5

    .line 1679
    aget-object v9, v15, v9

    move-object v12, v9

    goto :goto_3

    :cond_5
    const/4 v10, 0x1

    :goto_3
    move-object v14, v13

    goto :goto_4

    :cond_6
    if-eqz v5, :cond_7

    .line 1686
    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1687
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v11

    goto :goto_4

    :cond_7
    move-object v14, v11

    const/4 v10, 0x1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 1694
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v13

    if-eqz v10, :cond_8

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "{"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    :goto_5
    move-object v11, v2

    move-object v9, v3

    move-object v10, v4

    move v0, v13

    move-object v13, v14

    move v14, v1

    goto/16 :goto_d

    :cond_8
    if-nez v12, :cond_9

    const-string v0, "null"

    .line 1699
    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_b

    .line 1700
    iget v9, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    add-int/lit8 v10, v0, -0x2

    if-ne v9, v10, :cond_b

    .line 1701
    iget-wide v8, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    const-wide/16 v10, 0x0

    cmpl-double v0, v8, v10

    if-nez v0, :cond_a

    .line 1703
    iget-object v0, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v8, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    iget-object v9, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v4, v0, v8, v9}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 1707
    :cond_a
    iget-object v0, v7, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    invoke-virtual {v4, v0, v12}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_5

    .line 1709
    :cond_b
    iget-object v9, v6, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_11

    add-int/lit8 v10, v0, -0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/Format;

    if-eqz v9, :cond_11

    .line 1711
    instance-of v0, v9, Ljava/text/ChoiceFormat;

    if-nez v0, :cond_d

    instance-of v0, v9, Lcom/ibm/icu/text/PluralFormat;

    if-nez v0, :cond_d

    instance-of v0, v9, Lcom/ibm/icu/text/SelectFormat;

    if-eqz v0, :cond_c

    goto :goto_6

    .line 1733
    :cond_c
    invoke-virtual {v4, v9, v12}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_5

    .line 1716
    :cond_d
    :goto_6
    invoke-virtual {v9, v12}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x7b

    .line 1717
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_10

    const/16 v8, 0x27

    .line 1718
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_e

    iget-object v8, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_8

    .line 1721
    :cond_e
    invoke-static/range {p5 .. p5}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_f

    .line 1722
    invoke-virtual {v4, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1730
    :cond_f
    invoke-virtual {v4, v9, v12}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    :goto_7
    move/from16 v24, v13

    move-object/from16 v25, v14

    goto :goto_9

    .line 1719
    :cond_10
    :goto_8
    new-instance v8, Lcom/ibm/icu/text/MessageFormat;

    iget-object v9, v6, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v8, v0, v9}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v24, v13

    move-object/from16 v13, p5

    move-object/from16 v25, v14

    move-object v14, v0

    .line 1720
    invoke-direct/range {v8 .. v14}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    :goto_9
    move v14, v1

    move-object v11, v2

    move-object v9, v3

    move-object v10, v4

    goto/16 :goto_c

    :cond_11
    move/from16 v24, v13

    move-object/from16 v25, v14

    .line 1735
    sget-object v9, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v8, v9, :cond_1b

    iget-object v9, v6, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_12

    add-int/lit8 v10, v0, -0x2

    .line 1737
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    goto/16 :goto_b

    .line 1749
    :cond_12
    sget-object v9, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    const-string v10, "\' is not a Number"

    const-string v13, "\'"

    if-ne v8, v9, :cond_14

    .line 1750
    instance-of v8, v12, Ljava/lang/Number;

    if-eqz v8, :cond_13

    .line 1753
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 1754
    iget-object v10, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-static {v10, v0, v8, v9}, Lcom/ibm/icu/text/MessageFormat;->findChoiceSubMessage(Lcom/ibm/icu/text/MessagePattern;ID)I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v14, v1

    move v1, v8

    move-object v8, v2

    move-object v2, v9

    move-object v9, v3

    move-object/from16 v3, p3

    move-object v11, v4

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1755
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V

    move-object v10, v11

    move/from16 v0, v24

    move-object/from16 v13, v25

    move-object v11, v8

    goto/16 :goto_d

    .line 1751
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move v14, v1

    move-object v9, v3

    move-object v5, v4

    move-object v4, v2

    .line 1756
    invoke-virtual {v8}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1757
    instance-of v1, v12, Ljava/lang/Number;

    if-eqz v1, :cond_18

    .line 1761
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->PLURAL:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v8, v1, :cond_16

    .line 1762
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v1, :cond_15

    .line 1763
    new-instance v1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v2, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {v1, v6, v2}, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/text/PluralRules$PluralType;)V

    iput-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1765
    :cond_15
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    goto :goto_a

    .line 1767
    :cond_16
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v1, :cond_17

    .line 1768
    new-instance v1, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v2, Lcom/ibm/icu/text/PluralRules$PluralType;->ORDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-direct {v1, v6, v2}, Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Lcom/ibm/icu/text/MessageFormat;Lcom/ibm/icu/text/PluralRules$PluralType;)V

    iput-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1770
    :cond_17
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1772
    :goto_a
    check-cast v12, Ljava/lang/Number;

    .line 1773
    iget-object v2, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v21

    .line 1774
    new-instance v2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;

    const/16 v23, 0x0

    move-object/from16 v17, v2

    move/from16 v18, v0

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    invoke-direct/range {v17 .. v23}, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;DLcom/ibm/icu/text/MessageFormat$1;)V

    .line 1776
    iget-object v3, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 1777
    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v21

    move-object/from16 v17, v3

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 1776
    invoke-static/range {v17 .. v22}, Lcom/ibm/icu/text/PluralFormat;->findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILcom/ibm/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result v1

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object v11, v4

    move-object/from16 v4, p4

    move-object v8, v5

    move-object/from16 v5, p5

    .line 1778
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V

    move-object v10, v8

    goto :goto_c

    .line 1758
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v11, v4

    move-object v10, v5

    .line 1779
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v8, v1, :cond_1a

    .line 1780
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/ibm/icu/text/SelectFormat;->findSubMessage(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 1781
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V

    goto :goto_c

    .line 1784
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected argType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_b
    move v14, v1

    move-object v11, v2

    move-object v9, v3

    move-object v10, v4

    .line 1740
    instance-of v0, v12, Ljava/lang/Number;

    if-eqz v0, :cond_1c

    .line 1742
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v10, v0, v12}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    :goto_c
    move/from16 v0, v24

    move-object/from16 v13, v25

    goto :goto_d

    .line 1743
    :cond_1c
    instance-of v0, v12, Ljava/util/Date;

    if-eqz v0, :cond_1d

    .line 1745
    invoke-direct/range {p0 .. p0}, Lcom/ibm/icu/text/MessageFormat;->getStockDateFormatter()Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    invoke-virtual {v10, v0, v12}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_c

    .line 1747
    :cond_1d
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 1786
    :goto_d
    invoke-direct {v6, v10, v0, v11, v13}, Lcom/ibm/icu/text/MessageFormat;->updateMetaData(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;

    move-result-object v0

    .line 1787
    iget-object v1, v6, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v14}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    move-object v2, v0

    move v0, v14

    :goto_e
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, p4

    move-object v3, v9

    move-object v4, v10

    goto/16 :goto_0
.end method

.method private format(Ljava/lang/Object;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2153
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2156
    :cond_0
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto :goto_1

    .line 2154
    :cond_1
    :goto_0
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    :goto_1
    return-void
.end method

.method private format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2169
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2170
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 2174
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-void
.end method

.method private formatComplexSubMessage(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;",
            ")V"
        }
    .end annotation

    .line 1796
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1797
    invoke-direct/range {v1 .. v7}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-void

    .line 1805
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1808
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1810
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v3, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 1811
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 1812
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    .line 1813
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v6, :cond_4

    if-nez v1, :cond_2

    .line 1815
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1817
    :cond_2
    invoke-virtual {v1, v0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/16 p2, 0x7b

    .line 1846
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_3

    .line 1847
    new-instance v0, Lcom/ibm/icu/text/MessageFormat;

    iget-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Lcom/ibm/icu/text/MessageFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    .line 1848
    sget-object p2, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1849
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/text/MessageFormat;->format(ILcom/ibm/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto :goto_2

    .line 1851
    :cond_3
    invoke-virtual {p5, p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    .line 1820
    :cond_4
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v6, :cond_7

    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v6, :cond_5

    goto :goto_3

    .line 1834
    :cond_5
    sget-object v3, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v3, :cond_1

    if-nez v1, :cond_6

    .line 1836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    :cond_6
    invoke-virtual {v1, v0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1840
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 1841
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    .line 1842
    invoke-static {v0, v5, v2, v1}, Lcom/ibm/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_0

    :cond_7
    :goto_3
    if-nez v1, :cond_8

    .line 1822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1824
    :cond_8
    invoke-virtual {v1, v0, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1825
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v2, :cond_a

    .line 1826
    iget-boolean v2, p2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v2, :cond_9

    .line 1828
    iget-object v2, p2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1830
    :cond_9
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;

    move-result-object v2

    iget-object v4, p2, Lcom/ibm/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v2, v4}, Lcom/ibm/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1833
    :cond_a
    :goto_4
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    goto/16 :goto_0
.end method

.method private getArgName(I)Ljava/lang/String;
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object p1

    .line 585
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 588
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getLiteralStringUntilNextArgument(I)Ljava/lang/String;
    .locals 6

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1864
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v1

    .line 1865
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 1867
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v3, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    .line 1868
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    .line 1869
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v5

    .line 1870
    invoke-virtual {v0, v1, v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 1871
    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v2, :cond_1

    sget-object v2, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v2, :cond_0

    goto :goto_1

    .line 1876
    :cond_0
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v2

    goto :goto_0

    .line 1872
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getStockDateFormatter()Lcom/ibm/icu/text/DateFormat;
    .locals 2

    .line 1607
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    if-nez v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    const/4 v1, 0x3

    invoke-static {v1, v1, v0}, Lcom/ibm/icu/text/DateFormat;->getDateTimeInstance(IILcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    return-object v0
.end method

.method private getStockNumberFormatter()Lcom/ibm/icu/text/NumberFormat;
    .locals 1

    .line 1614
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    if-nez v0, :cond_0

    .line 1615
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v0}, Lcom/ibm/icu/text/NumberFormat;->getInstance(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    return-object v0
.end method

.method private static matchStringUntilLimitPart(Lcom/ibm/icu/text/MessagePattern;IILjava/lang/String;I)I
    .locals 6

    .line 1987
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    .line 1988
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 1990
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v3

    if-eq p1, p2, :cond_1

    .line 1991
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_0

    .line 1992
    :cond_1
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v4

    sub-int/2addr v4, v1

    if-eqz v4, :cond_2

    .line 1994
    invoke-virtual {p3, p4, v0, v1, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    add-int/2addr v2, v4

    if-ne p1, p2, :cond_3

    return v2

    .line 2001
    :cond_3
    invoke-virtual {v3}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    goto :goto_0
.end method

.method private nextTopLevelArgStart(I)I
    .locals 2

    if-eqz p1, :cond_0

    .line 563
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    .line 567
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_START:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1

    return p1

    .line 570
    :cond_1
    sget-object v1, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    return p1
.end method

.method private parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    if-nez v2, :cond_0

    return-void

    .line 1269
    :cond_0
    iget-object v5, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v5}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v5

    .line 1270
    iget-object v6, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v6, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    .line 1271
    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1272
    new-instance v8, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v10, 0x1

    add-int/2addr v1, v10

    .line 1275
    :goto_0
    iget-object v11, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v11, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v11

    .line 1276
    invoke-virtual {v11}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v12

    .line 1277
    invoke-virtual {v11}, Lcom/ibm/icu/text/MessagePattern$Part;->getIndex()I

    move-result v13

    sub-int/2addr v13, v6

    if-eqz v13, :cond_2

    .line 1280
    invoke-virtual {v5, v6, v2, v7, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 1284
    :cond_1
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_2
    :goto_1
    add-int/2addr v7, v13

    .line 1287
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v12, v6, :cond_3

    .line 1289
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    return-void

    .line 1292
    :cond_3
    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v12, v6, :cond_14

    sget-object v6, Lcom/ibm/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v12, v6, :cond_4

    goto/16 :goto_b

    .line 1298
    :cond_4
    iget-object v6, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v6, v1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v6

    .line 1300
    invoke-virtual {v11}, Lcom/ibm/icu/text/MessagePattern$Part;->getArgType()Lcom/ibm/icu/text/MessagePattern$ArgType;

    move-result-object v11

    .line 1301
    iget-object v12, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v12, v1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v12

    if-eqz p4, :cond_5

    .line 1307
    invoke-virtual {v12}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v12

    .line 1308
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    goto :goto_3

    .line 1310
    :cond_5
    invoke-virtual {v12}, Lcom/ibm/icu/text/MessagePattern$Part;->getType()Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v14

    sget-object v15, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_NAME:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-ne v14, v15, :cond_6

    .line 1311
    iget-object v14, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v14, v12}, Lcom/ibm/icu/text/MessagePattern;->getSubstring(Lcom/ibm/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 1313
    :cond_6
    invoke-virtual {v12}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    :goto_2
    move-object v14, v12

    move-object v15, v14

    const/4 v12, 0x0

    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 1322
    iget-object v9, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_8

    add-int/lit8 v16, v1, -0x2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/text/Format;

    if-eqz v9, :cond_8

    .line 1324
    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1325
    invoke-virtual {v9, v2, v8}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v1

    .line 1326
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    if-ne v9, v7, :cond_7

    .line 1327
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 1331
    :cond_7
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    :goto_4
    move v9, v7

    const/4 v7, 0x1

    goto/16 :goto_9

    .line 1332
    :cond_8
    sget-object v9, Lcom/ibm/icu/text/MessagePattern$ArgType;->NONE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-eq v11, v9, :cond_e

    iget-object v9, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_9

    add-int/lit8 v13, v1, -0x2

    .line 1334
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    .line 1357
    :cond_9
    sget-object v9, Lcom/ibm/icu/text/MessagePattern$ArgType;->CHOICE:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v11, v9, :cond_b

    .line 1358
    invoke-virtual {v8, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1359
    iget-object v9, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-static {v9, v1, v2, v8}, Lcom/ibm/icu/text/MessageFormat;->parseChoiceArgument(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D

    move-result-wide v13

    .line 1360
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ne v1, v7, :cond_a

    .line 1361
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 1364
    :cond_a
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1366
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    goto :goto_4

    .line 1367
    :cond_b
    invoke-virtual {v11}, Lcom/ibm/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v1

    if-nez v1, :cond_d

    sget-object v1, Lcom/ibm/icu/text/MessagePattern$ArgType;->SELECT:Lcom/ibm/icu/text/MessagePattern$ArgType;

    if-ne v11, v1, :cond_c

    goto :goto_5

    .line 1373
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected argType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1369
    :cond_d
    :goto_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Parsing of plural/select/selectordinal argument is not supported."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1339
    :cond_e
    :goto_6
    invoke-direct {v0, v6}, Lcom/ibm/icu/text/MessageFormat;->getLiteralStringUntilNextArgument(I)Ljava/lang/String;

    move-result-object v1

    .line 1341
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_f

    .line 1342
    invoke-virtual {v2, v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_7

    .line 1344
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_7
    if-gez v1, :cond_10

    .line 1347
    invoke-virtual {v3, v7}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    .line 1350
    :cond_10
    invoke-virtual {v2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "{"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "}"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    move-object v13, v7

    goto :goto_8

    :cond_11
    const/4 v13, 0x0

    :goto_8
    xor-int/lit8 v7, v9, 0x1

    move v9, v1

    move-object v1, v13

    :goto_9
    if-eqz v7, :cond_13

    if-eqz p4, :cond_12

    .line 1377
    aput-object v1, p4, v12

    goto :goto_a

    :cond_12
    if-eqz v4, :cond_13

    .line 1379
    invoke-interface {v4, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    :cond_13
    :goto_a
    iget-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v1, v6}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    move v7, v9

    move/from16 v17, v6

    move v6, v1

    move/from16 v1, v17

    goto :goto_c

    .line 1293
    :cond_14
    :goto_b
    invoke-virtual {v11}, Lcom/ibm/icu/text/MessagePattern$Part;->getLimit()I

    move-result v6

    :goto_c
    add-int/2addr v1, v10

    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private static parseChoiceArgument(Lcom/ibm/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D
    .locals 7

    .line 1946
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    move v3, v0

    .line 1950
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPartType(I)Lcom/ibm/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Lcom/ibm/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Lcom/ibm/icu/text/MessagePattern$Part$Type;

    if-eq v4, v5, :cond_2

    .line 1951
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ibm/icu/text/MessagePattern;->getNumericValue(Lcom/ibm/icu/text/MessagePattern$Part;)D

    move-result-wide v4

    add-int/lit8 p1, p1, 0x2

    .line 1953
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v6

    .line 1954
    invoke-static {p0, p1, v6, p2, v0}, Lcom/ibm/icu/text/MessageFormat;->matchStringUntilLimitPart(Lcom/ibm/icu/text/MessagePattern;IILjava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    add-int/2addr p1, v0

    if-le p1, v3, :cond_1

    .line 1960
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    move v3, p1

    if-ne p1, v1, :cond_0

    move-wide v1, v4

    goto :goto_1

    :cond_0
    move-wide v1, v4

    :cond_1
    add-int/lit8 p1, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v3, v0, :cond_3

    .line 1968
    invoke-virtual {p3, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_2

    .line 1970
    :cond_3
    invoke-virtual {p3, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    :goto_2
    return-wide v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2417
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2419
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2420
    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    .line 2421
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    .line 2422
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern;->getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2423
    :cond_0
    new-instance v1, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/MessagePattern;-><init>(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 2425
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2427
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    .line 2430
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    .line 2431
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 2432
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    .line 2433
    invoke-virtual {p0, v1, v2}, Lcom/ibm/icu/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2436
    :cond_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    :goto_1
    if-lez v0, :cond_4

    .line 2437
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 2438
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .line 2178
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    .line 2179
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->clear()V

    .line 2181
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 2182
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 2184
    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    return-void
.end method

.method private setArgStartFormat(ILjava/text/Format;)V
    .locals 1

    .line 2478
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2479
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 2481
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCustomArgStartFormat(ILjava/text/Format;)V
    .locals 0

    .line 2489
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    .line 2490
    iget-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-nez p2, :cond_0

    .line 2491
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 2493
    :cond_0
    iget-object p2, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateMetaData(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;
    .locals 3

    .line 1882
    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1883
    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;

    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v2

    invoke-direct {v1, p4, p2, v2}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 1885
    sget-object p4, Lcom/ibm/icu/text/MessageFormat$Field;->ARGUMENT:Lcom/ibm/icu/text/MessageFormat$Field;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/ibm/icu/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1886
    invoke-virtual {p3, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1887
    invoke-static {p1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$500(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object p3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2383
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2386
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2388
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 2389
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0}, Lcom/ibm/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 2391
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2393
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 2395
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 2398
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2400
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_4

    .line 2401
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2402
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2403
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2396
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 2409
    :cond_4
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 1

    .line 482
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0, p1}, Lcom/ibm/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    goto :goto_0

    .line 485
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/MessagePattern;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/MessagePattern;

    .line 488
    :goto_0
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->cacheExplicitFormats()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 490
    invoke-direct {p0}, Lcom/ibm/icu/text/MessageFormat;->resetPattern()V

    .line 491
    throw p1
.end method

.method public applyPattern(Ljava/lang/String;Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/MessagePattern;-><init>(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0, p2}, Lcom/ibm/icu/text/MessagePattern;->clearPatternAndSetApostropheMode(Lcom/ibm/icu/text/MessagePattern$ApostropheMode;)V

    .line 516
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .line 1454
    invoke-super {p0}, Lcom/ibm/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/MessageFormat;

    .line 1456
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1457
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1458
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1459
    iget-object v4, v0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1462
    :cond_0
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1465
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1466
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1467
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1468
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1469
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1470
    iget-object v4, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1473
    :cond_2
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1476
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/MessagePattern;

    :goto_2
    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 1477
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_3

    .line 1478
    :cond_5
    invoke-virtual {v1}, Lcom/ibm/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DateFormat;

    :goto_3
    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    .line 1479
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    if-nez v1, :cond_6

    move-object v1, v2

    goto :goto_4

    .line 1480
    :cond_6
    invoke-virtual {v1}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/NumberFormat;

    :goto_4
    iput-object v1, v0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    .line 1482
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 1483
    iput-object v2, v0, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    return-object v0
.end method

.method dateTimeFormatForPatternOrSkeleton(Ljava/lang/String;)Ljava/text/Format;
    .locals 4

    const/4 v0, 0x0

    .line 2218
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v1

    const-string v2, "::"

    const/4 v3, 0x2

    .line 2219
    invoke-virtual {p1, v1, v2, v0, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr v1, v3

    .line 2220
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {p1, v0}, Lcom/ibm/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/DateFormat;

    move-result-object p1

    return-object p1

    .line 2222
    :cond_0
    new-instance v0, Lcom/ibm/icu/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1495
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1497
    :cond_1
    check-cast p1, Lcom/ibm/icu/text/MessageFormat;

    .line 1498
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    iget-object v3, p1, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    iget-object v3, p1, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 1499
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    iget-object v3, p1, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    .line 1500
    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    iget-object p1, p1, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    .line 1501
    invoke-static {v2, p1}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 1089
    new-instance v0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public final format(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 1006
    new-instance v0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p3}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 972
    new-instance v0, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Lcom/ibm/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 5

    if-eqz p1, :cond_1

    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1136
    new-instance v1, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v1, v0}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuilder;)V

    .line 1137
    invoke-virtual {v1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->useAttributes()V

    const/4 v2, 0x0

    .line 1138
    invoke-direct {p0, p1, v1, v2}, Lcom/ibm/icu/text/MessageFormat;->format(Ljava/lang/Object;Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    .line 1139
    new-instance p1, Ljava/text/AttributedString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 1140
    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;->access$000(Lcom/ibm/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;

    .line 1141
    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$100(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;

    move-result-object v2

    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$200(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$300(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v4

    invoke-static {v1}, Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;->access$400(Lcom/ibm/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    .line 1143
    :cond_0
    invoke-virtual {p1}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1

    .line 1132
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Lcom/ibm/icu/text/MessagePattern;

    invoke-direct {v0}, Lcom/ibm/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getApostropheMode()Lcom/ibm/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 869
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 870
    :goto_0
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 871
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessageFormat;->getArgName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFormatByArgumentName(Ljava/lang/String;)Ljava/text/Format;
    .locals 4

    .line 884
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 887
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern;->validateArgumentName(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ge v0, v2, :cond_1

    return-object v1

    :cond_1
    const/4 v2, 0x0

    .line 891
    :cond_2
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v2

    if-ltz v2, :cond_3

    add-int/lit8 v3, v2, 0x1

    .line 892
    invoke-direct {p0, v3, p1, v0}, Lcom/ibm/icu/text/MessageFormat;->argNameMatches(ILjava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 893
    iget-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/text/Format;

    return-object p1

    :cond_3
    return-object v1
.end method

.method public getFormats()[Ljava/text/Format;
    .locals 4

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 856
    :goto_0
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 857
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 859
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/text/Format;

    return-object v0
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .locals 5

    .line 817
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_3

    .line 822
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 823
    :goto_0
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_2

    .line 824
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v2

    .line 825
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lt v2, v3, :cond_0

    .line 826
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 828
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/text/Format;

    :goto_2
    invoke-virtual {v0, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 830
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/text/Format;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/text/Format;

    return-object v0

    .line 818
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getULocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1240
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1241
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object p1

    .line 1242
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 1243
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    .line 1244
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const-string v1, "MessageFormat parse error!"

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 8

    .line 1177
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1185
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1186
    iget-object v2, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1191
    new-array v0, v0, [Ljava/lang/Object;

    .line 1193
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    .line 1194
    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1195
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-ne p1, v7, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0

    .line 1178
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This method is not available in MessageFormat objects that use named argument."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1442
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1444
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/MessageFormat;->parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public parseToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1402
    new-instance v6, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1403
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, v6

    move-object v5, v7

    .line 1404
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1405
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-eqz p1, :cond_0

    return-object v7

    .line 1406
    :cond_0
    new-instance p1, Ljava/text/ParseException;

    .line 1407
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v0

    const-string v1, "MessageFormat parse error!"

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1216
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1217
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v6

    .line 1218
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    .line 1219
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p1

    if-ne p1, v7, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v6
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 782
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_1

    if-ne v1, p1, :cond_0

    .line 784
    invoke-direct {p0, v0, p2}, Lcom/ibm/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    :cond_1
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 724
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 725
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 726
    invoke-direct {p0, v0, p2}, Lcom/ibm/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_1
    return-void

    .line 720
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setFormatByArgumentName(Ljava/lang/String;Ljava/text/Format;)V
    .locals 3

    .line 751
    invoke-static {p1}, Lcom/ibm/icu/text/MessagePattern;->validateArgumentName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 755
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 756
    invoke-direct {p0, v2, p1, v0}, Lcom/ibm/icu/text/MessageFormat;->argNameMatches(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 757
    invoke-direct {p0, v1, p2}, Lcom/ibm/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 689
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 690
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 691
    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/ibm/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 3

    .line 620
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 625
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 626
    iget-object v1, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/text/MessagePattern;->getPart(I)Lcom/ibm/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    .line 627
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 628
    aget-object v1, p1, v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_1
    return-void

    .line 621
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setFormatsByArgumentName(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 655
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 656
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/MessageFormat;->getArgName(I)Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/Format;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLocale(Lcom/ibm/icu/util/ULocale;)V
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/ibm/icu/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 440
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ulocale:Lcom/ibm/icu/util/ULocale;

    const/4 p1, 0x0

    .line 443
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->stockDateFormatter:Lcom/ibm/icu/text/DateFormat;

    .line 444
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->stockNumberFormatter:Lcom/ibm/icu/text/NumberFormat;

    .line 445
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->pluralProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 446
    iput-object p1, p0, Lcom/ibm/icu/text/MessageFormat;->ordinalProvider:Lcom/ibm/icu/text/MessageFormat$PluralSelectorProvider;

    .line 447
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    .line 423
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/MessageFormat;->setLocale(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-nez v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 553
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    .line 546
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "toPattern() is not supported after custom Format objects have been set via setFormat() or similar APIs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public usesNamedArguments()Z
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/ibm/icu/text/MessageFormat;->msgPattern:Lcom/ibm/icu/text/MessagePattern;

    invoke-virtual {v0}, Lcom/ibm/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    return v0
.end method
