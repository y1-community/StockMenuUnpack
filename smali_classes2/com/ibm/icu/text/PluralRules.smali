.class public Lcom/ibm/icu/text/PluralRules;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/PluralRules$KeywordStatus;,
        Lcom/ibm/icu/text/PluralRules$RuleList;,
        Lcom/ibm/icu/text/PluralRules$Rule;,
        Lcom/ibm/icu/text/PluralRules$OrConstraint;,
        Lcom/ibm/icu/text/PluralRules$AndConstraint;,
        Lcom/ibm/icu/text/PluralRules$BinaryConstraint;,
        Lcom/ibm/icu/text/PluralRules$RangeConstraint;,
        Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;,
        Lcom/ibm/icu/text/PluralRules$Constraint;,
        Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;,
        Lcom/ibm/icu/text/PluralRules$FixedDecimalRange;,
        Lcom/ibm/icu/text/PluralRules$SampleType;,
        Lcom/ibm/icu/text/PluralRules$FixedDecimal;,
        Lcom/ibm/icu/text/PluralRules$IFixedDecimal;,
        Lcom/ibm/icu/text/PluralRules$Operand;,
        Lcom/ibm/icu/text/PluralRules$PluralType;,
        Lcom/ibm/icu/text/PluralRules$Factory;
    }
.end annotation


# static fields
.field static final ALLOWED_ID:Lcom/ibm/icu/text/UnicodeSet;

.field static final AND_SEPARATED:Ljava/util/regex/Pattern;

.field static final AT_SEPARATED:Ljava/util/regex/Pattern;

.field private static final CATEGORY_SEPARATOR:Ljava/lang/String; = ";  "

.field static final COMMA_SEPARATED:Ljava/util/regex/Pattern;

.field public static final DEFAULT:Lcom/ibm/icu/text/PluralRules;

.field private static final DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

.field static final DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

.field public static final KEYWORD_FEW:Ljava/lang/String; = "few"

.field public static final KEYWORD_MANY:Ljava/lang/String; = "many"

.field public static final KEYWORD_ONE:Ljava/lang/String; = "one"

.field public static final KEYWORD_OTHER:Ljava/lang/String; = "other"

.field public static final KEYWORD_TWO:Ljava/lang/String; = "two"

.field public static final KEYWORD_ZERO:Ljava/lang/String; = "zero"

.field private static final NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

.field public static final NO_UNIQUE_VALUE:D = -0.00123456777

.field static final OR_SEPARATED:Ljava/util/regex/Pattern;

.field static final SEMI_SEPARATED:Ljava/util/regex/Pattern;

.field static final TILDE_SEPARATED:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient keywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Lcom/ibm/icu/text/PluralRules$RuleList;

.field private final transient standardPluralRanges:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 177
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    const-string v1, "[a-z]"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->ALLOWED_ID:Lcom/ibm/icu/text/UnicodeSet;

    .line 351
    new-instance v0, Lcom/ibm/icu/text/PluralRules$1;

    invoke-direct {v0}, Lcom/ibm/icu/text/PluralRules$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 373
    new-instance v1, Lcom/ibm/icu/text/PluralRules$Rule;

    const-string v2, "other"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/ibm/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;)V

    sput-object v1, Lcom/ibm/icu/text/PluralRules;->DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

    .line 420
    new-instance v0, Lcom/ibm/icu/text/PluralRules;

    new-instance v2, Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-direct {v2, v3}, Lcom/ibm/icu/text/PluralRules$RuleList;-><init>(Lcom/ibm/icu/text/PluralRules$1;)V

    .line 421
    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/PluralRules$RuleList;->addRule(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$RuleList;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->DEFAULT:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/PluralRules;-><init>(Lcom/ibm/icu/text/PluralRules$RuleList;Lcom/ibm/icu/impl/number/range/StandardPluralRanges;)V

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    const-string v0, "\\s*\\Q\\E@\\s*"

    .line 1557
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*or\\s*"

    .line 1558
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*and\\s*"

    .line 1559
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*,\\s*"

    .line 1560
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->COMMA_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*\\Q..\\E\\s*"

    .line 1561
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->DOTDOT_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*~\\s*"

    .line 1562
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->TILDE_SEPARATED:Ljava/util/regex/Pattern;

    const-string v0, "\\s*;\\s*"

    .line 1563
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/text/PluralRules$RuleList;Lcom/ibm/icu/impl/number/range/StandardPluralRanges;)V
    .locals 0

    .line 2154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2155
    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    .line 2156
    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->getKeywords()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    .line 2157
    iput-object p2, p0, Lcom/ibm/icu/text/PluralRules;->standardPluralRanges:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    return-void
.end method

.method static synthetic access$500(Ljava/lang/StringBuilder;DDZ)V
    .locals 0

    .line 175
    invoke-static/range {p0 .. p5}, Lcom/ibm/icu/text/PluralRules;->addRange(Ljava/lang/StringBuilder;DDZ)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object p0

    return-object p0
.end method

.method private addConditional(Ljava/util/Set;Ljava/util/Set;D)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$IFixedDecimal;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/text/PluralRules$IFixedDecimal;",
            ">;D)Z"
        }
    .end annotation

    .line 2037
    new-instance v0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v0, p3, p4}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    .line 2038
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2039
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static addRange(Ljava/lang/StringBuilder;DDZ)V
    .locals 0

    if-eqz p5, :cond_0

    const-string p5, ","

    .line 1766
    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    cmpl-double p5, p1, p3

    if-nez p5, :cond_1

    .line 1769
    invoke-static {p1, p2}, Lcom/ibm/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1771
    :cond_1
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/ibm/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/ibm/icu/text/PluralRules;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 2392
    instance-of v0, p2, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object v0

    .line 2393
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2394
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    if-gez p3, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static createRules(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    .locals 0

    .line 396
    :try_start_0
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;
    .locals 2

    .line 2072
    invoke-static {}, Lcom/ibm/icu/text/PluralRules$Factory;->getDefaultFactory()Lcom/ibm/icu/impl/PluralRulesLoader;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-virtual {v0, p0, v1}, Lcom/ibm/icu/impl/PluralRulesLoader;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method public static forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;
    .locals 1

    .line 2116
    invoke-static {}, Lcom/ibm/icu/text/PluralRules$Factory;->getDefaultFactory()Lcom/ibm/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/PluralRulesLoader;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method public static forLocale(Ljava/util/Locale;)Lcom/ibm/icu/text/PluralRules;
    .locals 0

    .line 2094
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method public static forLocale(Ljava/util/Locale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;
    .locals 0

    .line 2138
    invoke-static {p0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/ibm/icu/text/PluralRules;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method private static format(D)Ljava/lang/String;
    .locals 5

    double-to-long v0, p0

    long-to-double v2, v0

    cmpl-double v4, p0, v2

    if-nez v4, :cond_0

    .line 1777
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 2426
    invoke-static {}, Lcom/ibm/icu/text/PluralRules$Factory;->getDefaultFactory()Lcom/ibm/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/PluralRulesLoader;->getAvailableULocales()[Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionalEquivalent(Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 2446
    invoke-static {}, Lcom/ibm/icu/text/PluralRules$Factory;->getDefaultFactory()Lcom/ibm/icu/impl/PluralRulesLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/PluralRulesLoader;->getFunctionalEquivalent(Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method private static isValidKeyword(Ljava/lang/String;)Z
    .locals 1

    .line 2148
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->ALLOWED_ID:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newInternal(Ljava/lang/String;Lcom/ibm/icu/impl/number/range/StandardPluralRanges;)Lcom/ibm/icu/text/PluralRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 410
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/ibm/icu/text/PluralRules;->DEFAULT:Lcom/ibm/icu/text/PluralRules;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/ibm/icu/text/PluralRules;

    .line 412
    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules;->parseRuleChain(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$RuleList;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/ibm/icu/text/PluralRules;-><init>(Lcom/ibm/icu/text/PluralRules$RuleList;Lcom/ibm/icu/impl/number/range/StandardPluralRanges;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private static nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1577
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 1578
    aget-object p0, p0, p1

    return-object p0

    .line 1580
    :cond_0
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "missing token at end of \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-direct {p0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static parseConstraint(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Constraint;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1410
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->OR_SEPARATED:Ljava/util/regex/Pattern;

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1411
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_21

    .line 1413
    sget-object v5, Lcom/ibm/icu/text/PluralRules;->AND_SEPARATED:Ljava/util/regex/Pattern;

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1414
    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_1f

    .line 1415
    sget-object v8, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    .line 1417
    aget-object v9, v5, v6

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1418
    invoke-static {v9}, Lcom/ibm/icu/text/PluralRules$SimpleTokenizer;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1428
    aget-object v15, v10, v2

    .line 1432
    :try_start_0
    invoke-static {v15}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;->getOperand(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Operand;

    move-result-object v19
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1436
    array-length v15, v10

    const/4 v1, 0x1

    if-ge v1, v15, :cond_1d

    .line 1437
    aget-object v8, v10, v1

    const-string v15, "mod"

    .line 1438
    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const/4 v1, 0x2

    if-nez v15, :cond_1

    const-string v15, "%"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    goto :goto_2

    :cond_0
    const/4 v15, 0x2

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v8, 0x3

    .line 1439
    aget-object v15, v10, v1

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v17, 0x4

    .line 1440
    invoke-static {v10, v8, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move v2, v15

    const/4 v15, 0x4

    :goto_3
    const-string v11, "not"

    .line 1442
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v13, "="

    if-eqz v12, :cond_3

    add-int/lit8 v8, v15, 0x1

    .line 1444
    invoke-static {v10, v15, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1445
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    :goto_4
    move v15, v8

    move-object v8, v12

    const/4 v12, 0x0

    goto :goto_5

    .line 1446
    :cond_2
    invoke-static {v12, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_3
    const-string v12, "!"

    .line 1448
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    add-int/lit8 v8, v15, 0x1

    .line 1450
    invoke-static {v10, v15, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1451
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_4

    .line 1452
    :cond_4
    invoke-static {v12, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_5
    const/4 v12, 0x1

    :goto_5
    const-string v14, "is"

    .line 1455
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string v1, "in"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    const-string v1, "within"

    .line 1461
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    add-int/lit8 v1, v15, 0x1

    .line 1463
    invoke-static {v10, v15, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v13, v8

    const/4 v14, 0x0

    move v8, v1

    const/4 v1, 0x0

    goto :goto_8

    .line 1465
    :cond_7
    invoke-static {v8, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1456
    :cond_8
    :goto_6
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v12, :cond_9

    goto :goto_7

    .line 1458
    :cond_9
    invoke-static {v8, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_a
    :goto_7
    add-int/lit8 v8, v15, 0x1

    .line 1460
    invoke-static {v10, v15, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    .line 1467
    :goto_8
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    if-nez v1, :cond_c

    if-eqz v12, :cond_b

    goto :goto_9

    .line 1469
    :cond_b
    invoke-static {v13, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_c
    :goto_9
    xor-int/lit8 v11, v12, 0x1

    add-int/lit8 v12, v8, 0x1

    .line 1472
    invoke-static {v10, v8, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move v8, v12

    goto :goto_a

    :cond_d
    move v11, v12

    .line 1475
    :goto_a
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move/from16 v29, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v6

    move-object v15, v13

    move/from16 v20, v14

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    const-wide/high16 v5, -0x3c20000000000000L    # -9.223372036854776E18

    .line 1479
    :goto_b
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-object/from16 v30, v0

    .line 1481
    array-length v0, v10

    move-object/from16 v16, v15

    const-string v15, ","

    if-ge v8, v0, :cond_13

    add-int/lit8 v0, v8, 0x1

    .line 1482
    invoke-static {v10, v8, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v31, v7

    const-string v7, "."

    .line 1483
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    add-int/lit8 v8, v0, 0x1

    .line 1484
    invoke-static {v10, v0, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    add-int/lit8 v0, v8, 0x1

    .line 1488
    invoke-static {v10, v8, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1489
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 1490
    array-length v8, v10

    if-ge v0, v8, :cond_f

    add-int/lit8 v8, v0, 0x1

    .line 1491
    invoke-static {v10, v0, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1492
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v1

    move-wide/from16 v32, v16

    move-object/from16 v16, v0

    move-wide/from16 v0, v32

    goto :goto_d

    .line 1494
    :cond_e
    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_f
    move v8, v0

    move-object/from16 v32, v7

    move v7, v1

    move-wide/from16 v0, v16

    move-object/from16 v16, v32

    goto :goto_d

    .line 1486
    :cond_10
    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1497
    :cond_11
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    move v7, v1

    move-object/from16 v16, v8

    move v8, v0

    goto :goto_c

    .line 1499
    :cond_12
    invoke-static {v8, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_13
    move-object/from16 v31, v7

    move v7, v1

    :goto_c
    move-wide v0, v13

    :goto_d
    cmp-long v17, v13, v0

    if-gtz v17, :cond_1c

    move/from16 v18, v7

    move/from16 v17, v8

    if-eqz v2, :cond_15

    int-to-long v7, v2

    cmp-long v21, v0, v7

    if-gez v21, :cond_14

    goto :goto_e

    .line 1506
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ">mod="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1508
    :cond_15
    :goto_e
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1509
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    long-to-double v7, v13

    .line 1510
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    long-to-double v0, v0

    .line 1511
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 1512
    array-length v0, v10

    move/from16 v8, v17

    if-lt v8, v0, :cond_1b

    move-object/from16 v0, v16

    .line 1518
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1522
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_16

    const/16 v25, 0x0

    goto :goto_10

    .line 1525
    :cond_16
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v0, :cond_17

    .line 1527
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    aput-wide v13, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_17
    move-object/from16 v25, v1

    :goto_10
    cmpl-double v0, v3, v5

    if-eqz v0, :cond_19

    if-eqz v18, :cond_19

    if-eqz v11, :cond_18

    goto :goto_11

    :cond_18
    const-string v0, "is not <range>"

    .line 1533
    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    .line 1536
    :cond_19
    :goto_11
    new-instance v8, Lcom/ibm/icu/text/PluralRules$RangeConstraint;

    move-object/from16 v16, v8

    move/from16 v17, v2

    move/from16 v18, v11

    move-wide/from16 v21, v3

    move-wide/from16 v23, v5

    invoke-direct/range {v16 .. v25}, Lcom/ibm/icu/text/PluralRules$RangeConstraint;-><init>(IZLcom/ibm/icu/text/PluralRules$Operand;ZDD[J)V

    goto :goto_12

    .line 1519
    :cond_1a
    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v7, 0x2

    add-int/lit8 v0, v8, 0x1

    .line 1515
    invoke-static {v10, v8, v9}, Lcom/ibm/icu/text/PluralRules;->nextToken([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move v8, v0

    move/from16 v1, v18

    move-object/from16 v0, v30

    move-object/from16 v7, v31

    goto/16 :goto_b

    .line 1504
    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_1d
    move-object/from16 v30, v0

    move/from16 v29, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v31, v7

    :goto_12
    if-nez v31, :cond_1e

    move-object v7, v8

    goto :goto_13

    .line 1543
    :cond_1e
    new-instance v0, Lcom/ibm/icu/text/PluralRules$AndConstraint;

    move-object/from16 v1, v31

    invoke-direct {v0, v1, v8}, Lcom/ibm/icu/text/PluralRules$AndConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    move-object v7, v0

    :goto_13
    add-int/lit8 v6, v28, 0x1

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move/from16 v3, v29

    move-object/from16 v0, v30

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1434
    :catch_0
    invoke-static {v15, v9}, Lcom/ibm/icu/text/PluralRules;->unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0

    :cond_1f
    move-object/from16 v30, v0

    move/from16 v29, v3

    move-object/from16 v26, v4

    move-object v1, v7

    if-nez v26, :cond_20

    move-object v4, v1

    goto :goto_14

    .line 1551
    :cond_20
    new-instance v0, Lcom/ibm/icu/text/PluralRules$OrConstraint;

    move-object/from16 v2, v26

    invoke-direct {v0, v2, v1}, Lcom/ibm/icu/text/PluralRules$OrConstraint;-><init>(Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$Constraint;)V

    move-object v4, v0

    :goto_14
    add-int/lit8 v3, v29, 0x1

    move-object/from16 v0, v30

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_21
    move-object v2, v4

    return-object v2
.end method

.method public static parseDescription(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 384
    invoke-static {p0, v0}, Lcom/ibm/icu/text/PluralRules;->newInternal(Ljava/lang/String;Lcom/ibm/icu/impl/number/range/StandardPluralRanges;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p0

    return-object p0
.end method

.method private static parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1589
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    sget-object p0, Lcom/ibm/icu/text/PluralRules;->DEFAULT_RULE:Lcom/ibm/icu/text/PluralRules$Rule;

    return-object p0

    .line 1593
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    .line 1595
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    .line 1601
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1602
    invoke-static {v1}, Lcom/ibm/icu/text/PluralRules;->isValidKeyword(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 1607
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1608
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->AT_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 1611
    array-length v4, v0

    const/4 v5, 0x0

    if-eq v4, v3, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 1621
    aget-object v4, v0, v3

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v5

    .line 1622
    aget-object v4, v0, v6

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v4

    .line 1623
    iget-object v6, v5, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    sget-object v7, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-ne v6, v7, :cond_1

    iget-object v6, v4, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    sget-object v7, Lcom/ibm/icu/text/PluralRules$SampleType;->DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-ne v6, v7, :cond_1

    move-object p0, v4

    goto :goto_0

    .line 1624
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have @integer then @decimal in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1628
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many samples in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1614
    :cond_3
    aget-object p0, v0, v3

    invoke-static {p0}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->parse(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p0

    .line 1615
    iget-object v4, p0, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->sampleType:Lcom/ibm/icu/text/PluralRules$SampleType;

    sget-object v6, Lcom/ibm/icu/text/PluralRules$SampleType;->DECIMAL:Lcom/ibm/icu/text/PluralRules$SampleType;

    if-ne v4, v6, :cond_4

    goto :goto_0

    :cond_4
    move-object v8, v5

    move-object v5, p0

    move-object p0, v8

    goto :goto_0

    :cond_5
    move-object p0, v5

    :goto_0
    const-string v4, "other"

    .line 1635
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1636
    aget-object v6, v0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-ne v4, v3, :cond_8

    if-eqz v4, :cond_7

    .line 1642
    sget-object v0, Lcom/ibm/icu/text/PluralRules;->NO_CONSTRAINT:Lcom/ibm/icu/text/PluralRules$Constraint;

    goto :goto_2

    .line 1644
    :cond_7
    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules;->parseConstraint(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Constraint;

    move-result-object v0

    .line 1646
    :goto_2
    new-instance v2, Lcom/ibm/icu/text/PluralRules$Rule;

    invoke-direct {v2, v1, v0, v5, p0}, Lcom/ibm/icu/text/PluralRules$Rule;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$Constraint;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;)V

    return-object v2

    .line 1637
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The keyword \'other\' must have no constraints, just samples."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1603
    :cond_9
    new-instance p0, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyword \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not valid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 1597
    :cond_a
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing \':\' in rule description \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static parseRuleChain(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$RuleList;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1657
    new-instance v0, Lcom/ibm/icu/text/PluralRules$RuleList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/PluralRules$RuleList;-><init>(Lcom/ibm/icu/text/PluralRules$1;)V

    const-string v1, ";"

    .line 1659
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1660
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1662
    :cond_0
    sget-object v1, Lcom/ibm/icu/text/PluralRules;->SEMI_SEPARATED:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 1663
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 1664
    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules;->parseRule(Ljava/lang/String;)Lcom/ibm/icu/text/PluralRules$Rule;

    move-result-object v4

    .line 1665
    invoke-static {v0}, Lcom/ibm/icu/text/PluralRules$RuleList;->access$200(Lcom/ibm/icu/text/PluralRules$RuleList;)Z

    move-result v5

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules$Rule;->access$300(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {v4}, Lcom/ibm/icu/text/PluralRules$Rule;->access$400(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x1

    :goto_2
    or-int/2addr v5, v6

    invoke-static {v0, v5}, Lcom/ibm/icu/text/PluralRules$RuleList;->access$202(Lcom/ibm/icu/text/PluralRules$RuleList;Z)Z

    .line 1666
    invoke-virtual {v0, v4}, Lcom/ibm/icu/text/PluralRules$RuleList;->addRule(Lcom/ibm/icu/text/PluralRules$Rule;)Lcom/ibm/icu/text/PluralRules$RuleList;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1668
    :cond_3
    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules$RuleList;->finish()Lcom/ibm/icu/text/PluralRules$RuleList;

    move-result-object p0

    return-object p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2622
    new-instance p1, Ljava/io/NotSerializableException;

    invoke-direct {p1}, Ljava/io/NotSerializableException;-><init>()V

    throw p1
.end method

.method private static unexpected(Ljava/lang/String;Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3

    .line 1568
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected token \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' in \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    invoke-direct {v0, p0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2617
    new-instance p1, Ljava/io/NotSerializableException;

    invoke-direct {p1}, Ljava/io/NotSerializableException;-><init>()V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 2626
    new-instance v0, Lcom/ibm/icu/text/PluralRulesSerialProxy;

    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/PluralRulesSerialProxy;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/text/PluralRules;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2635
    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public computeLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2657
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$RuleList;->computeLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z

    move-result p1

    return p1
.end method

.method public equals(Lcom/ibm/icu/text/PluralRules;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2475
    invoke-virtual {p0}, Lcom/ibm/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/text/PluralRules;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 2464
    instance-of v0, p1, Lcom/ibm/icu/text/PluralRules;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ibm/icu/text/PluralRules;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRules;->equals(Lcom/ibm/icu/text/PluralRules;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2302
    sget-object v0, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getAllKeywordValues(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2319
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/PluralRules;->isLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2322
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/PluralRules;->getSamples(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2323
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getDecimalSamples(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2417
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p1

    return-object p1
.end method

.method public getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Lcom/ibm/icu/util/Output;)Lcom/ibm/icu/text/PluralRules$KeywordStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/ibm/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .line 2533
    sget-object v5, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/text/PluralRules;->getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/text/PluralRules$SampleType;)Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    move-result-object p1

    return-object p1
.end method

.method public getKeywordStatus(Ljava/lang/String;ILjava/util/Set;Lcom/ibm/icu/util/Output;Lcom/ibm/icu/text/PluralRules$SampleType;)Lcom/ibm/icu/text/PluralRules$KeywordStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/ibm/icu/util/Output<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/ibm/icu/text/PluralRules$SampleType;",
            ")",
            "Lcom/ibm/icu/text/PluralRules$KeywordStatus;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    .line 2557
    iput-object v0, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2560
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2561
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->INVALID:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p1

    .line 2564
    :cond_1
    invoke-virtual {p0, p1, p5}, Lcom/ibm/icu/text/PluralRules;->isLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2565
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->UNBOUNDED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p1

    .line 2568
    :cond_2
    invoke-virtual {p0, p1, p5}, Lcom/ibm/icu/text/PluralRules;->getSamples(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object p1

    .line 2570
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p5

    if-nez p3, :cond_3

    .line 2573
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p3

    .line 2578
    :cond_3
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le p5, v0, :cond_6

    if-ne p5, v1, :cond_5

    if-eqz p4, :cond_4

    .line 2581
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    .line 2583
    :cond_4
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->UNIQUE:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p1

    .line 2585
    :cond_5
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->BOUNDED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p1

    .line 2590
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2591
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Double;

    .line 2592
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    int-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2594
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_8

    .line 2595
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->SUPPRESSED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    return-object p1

    :cond_8
    if-eqz p4, :cond_9

    .line 2598
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result p1

    if-ne p1, v1, :cond_9

    .line 2599
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p4, Lcom/ibm/icu/util/Output;->value:Ljava/lang/Object;

    :cond_9
    if-ne p5, v1, :cond_a

    .line 2602
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->UNIQUE:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    goto :goto_1

    :cond_a
    sget-object p1, Lcom/ibm/icu/text/PluralRules$KeywordStatus;->BOUNDED:Lcom/ibm/icu/text/PluralRules$KeywordStatus;

    :goto_1
    return-object p1
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2273
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    return-object v0
.end method

.method public getRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2611
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->getRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSamples(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 2337
    sget-object v0, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/PluralRules;->getSamples(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getSamples(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/PluralRules$SampleType;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2356
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->keywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2359
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 2361
    iget-object v2, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-static {v2}, Lcom/ibm/icu/text/PluralRules$RuleList;->access$200(Lcom/ibm/icu/text/PluralRules$RuleList;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2362
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v1, p1, p2}, Lcom/ibm/icu/text/PluralRules$RuleList;->getDecimalSamples(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2363
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    .line 2364
    :cond_1
    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/PluralRules$FixedDecimalSamples;->addSamples(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1

    .line 2368
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/PluralRules;->isLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7fffffff

    goto :goto_1

    :cond_3
    const/16 v2, 0x14

    .line 2370
    :goto_1
    sget-object v3, Lcom/ibm/icu/text/PluralRules$2;->$SwitchMap$com$ibm$icu$text$PluralRules$SampleType:[I

    invoke-virtual {p2}, Lcom/ibm/icu/text/PluralRules$SampleType;->ordinal()I

    move-result p2

    aget p2, v3, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v4, :cond_7

    const/4 v5, 0x2

    if-eq p2, v5, :cond_4

    goto :goto_6

    :cond_4
    :goto_2
    const/16 p2, 0x7d0

    if-ge v3, p2, :cond_6

    .line 2381
    new-instance p2, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    int-to-double v5, v3

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v7

    invoke-direct {p2, v5, v6, v4}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/ibm/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2385
    :cond_6
    :goto_3
    new-instance p2, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    const-wide v5, 0x412e848000000000L    # 1000000.0

    invoke-direct {p2, v5, v6, v4}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/ibm/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    goto :goto_6

    :cond_7
    :goto_4
    const/16 p2, 0xc8

    if-ge v3, p2, :cond_9

    .line 2373
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/ibm/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    const p2, 0xf4240

    .line 2377
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/ibm/icu/text/PluralRules;->addSample(Ljava/lang/String;Ljava/lang/Number;ILjava/util/Set;)Z

    .line 2388
    :goto_6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    :goto_7
    return-object v1
.end method

.method public getUniqueKeywordValue(Ljava/lang/String;)D
    .locals 2

    .line 2285
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRules;->getAllKeywordValues(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2286
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2287
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide v0, -0x40abc5d8f366e181L    # -0.00123456777

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 2166
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method isLimited(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 2639
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    sget-object v1, Lcom/ibm/icu/text/PluralRules$SampleType;->INTEGER:Lcom/ibm/icu/text/PluralRules$SampleType;

    invoke-virtual {v0, p1, v1}, Lcom/ibm/icu/text/PluralRules$RuleList;->isLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public isLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2648
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$RuleList;->isLimited(Ljava/lang/String;Lcom/ibm/icu/text/PluralRules$SampleType;)Z

    move-result p1

    return p1
.end method

.method public matches(Lcom/ibm/icu/text/PluralRules$FixedDecimal;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2262
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/text/PluralRules$RuleList;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public select(D)Ljava/lang/String;
    .locals 2

    .line 2178
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    new-instance v1, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    invoke-direct {v1, p1, p2}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/PluralRules$RuleList;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public select(DIJ)Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2235
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    new-instance v7, Lcom/ibm/icu/text/PluralRules$FixedDecimal;

    move-object v1, v7

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    invoke-virtual {v0, v7}, Lcom/ibm/icu/text/PluralRules$RuleList;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public select(Lcom/ibm/icu/number/FormattedNumber;)Ljava/lang/String;
    .locals 1

    .line 2194
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {p1}, Lcom/ibm/icu/number/FormattedNumber;->getFixedDecimal()Lcom/ibm/icu/text/PluralRules$IFixedDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public select(Lcom/ibm/icu/number/FormattedNumberRange;)Ljava/lang/String;
    .locals 2

    .line 2213
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->standardPluralRanges:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    if-eqz v0, :cond_0

    .line 2217
    invoke-virtual {p1}, Lcom/ibm/icu/number/FormattedNumberRange;->getFirstFixedDecimal()Lcom/ibm/icu/text/PluralRules$IFixedDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    .line 2216
    invoke-static {v0}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object v0

    .line 2219
    invoke-virtual {p1}, Lcom/ibm/icu/number/FormattedNumberRange;->getSecondFixedDecimal()Lcom/ibm/icu/text/PluralRules$IFixedDecimal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/PluralRules;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    .line 2218
    invoke-static {p1}, Lcom/ibm/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p1

    .line 2220
    iget-object v1, p0, Lcom/ibm/icu/text/PluralRules;->standardPluralRanges:Lcom/ibm/icu/impl/number/range/StandardPluralRanges;

    invoke-virtual {v1, v0, p1}, Lcom/ibm/icu/impl/number/range/StandardPluralRanges;->resolve(Lcom/ibm/icu/impl/StandardPlural;Lcom/ibm/icu/impl/StandardPlural;)Lcom/ibm/icu/impl/StandardPlural;

    move-result-object p1

    .line 2221
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2214
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Plural ranges are unavailable on this instance"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2249
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/PluralRules$RuleList;->select(Lcom/ibm/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2455
    iget-object v0, p0, Lcom/ibm/icu/text/PluralRules;->rules:Lcom/ibm/icu/text/PluralRules$RuleList;

    invoke-virtual {v0}, Lcom/ibm/icu/text/PluralRules$RuleList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
