.class public Lcom/ibm/icu/impl/number/parse/AffixMatcher;
.super Ljava/lang/Object;
.source "AffixMatcher.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/parse/NumberParseMatcher;


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/ibm/icu/impl/number/parse/AffixMatcher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final flags:I

.field private final prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

.field private final suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/ibm/icu/impl/number/parse/AffixMatcher$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/parse/AffixMatcher$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;I)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    .line 170
    iput-object p2, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    .line 171
    iput p3, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->flags:I

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/number/parse/AffixMatcher;)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I
    .locals 0

    .line 21
    invoke-static {p0}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->length(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/ibm/icu/impl/number/parse/AffixMatcher;)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    return-object p0
.end method

.method public static createMatchers(Lcom/ibm/icu/impl/number/AffixPatternProvider;Lcom/ibm/icu/impl/number/parse/NumberParserImpl;Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;I)V
    .locals 19

    move-object/from16 v0, p2

    move-object/from16 v7, p0

    move-object/from16 v1, p3

    move/from16 v8, p4

    .line 84
    invoke-static {v7, v1, v8}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->isInteresting(Lcom/ibm/icu/impl/number/AffixPatternProvider;Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    new-instance v10, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    and-int/lit16 v1, v8, 0x80

    if-eqz v1, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 98
    :goto_0
    sget-object v14, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->VALUES:[Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    array-length v15, v14

    const/4 v6, 0x0

    move-object v3, v6

    move-object v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v15, :cond_c

    aget-object v2, v14, v5

    .line 101
    sget-object v1, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    if-ne v2, v1, :cond_2

    and-int/lit16 v1, v8, 0x400

    if-eqz v1, :cond_2

    :goto_2
    move-object v11, v3

    move-object v12, v4

    move/from16 v17, v5

    goto :goto_3

    .line 105
    :cond_2
    sget-object v1, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS_SIGN:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    if-ne v2, v1, :cond_3

    and-int/lit16 v1, v8, 0x400

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v16, 0x1

    .line 111
    sget-object v17, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-object/from16 p3, v2

    move/from16 v2, v16

    move-object v11, v3

    move-object/from16 v3, p3

    move-object v12, v4

    move-object/from16 v4, v17

    move/from16 v17, v5

    move/from16 v5, v18

    move-object v7, v6

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/number/PatternStringUtils;->patternInfoToStringBuilder(Lcom/ibm/icu/impl/number/AffixPatternProvider;ZLcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;Lcom/ibm/icu/impl/StandardPlural;ZLjava/lang/StringBuilder;)V

    .line 118
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v8}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->fromAffixPattern(Ljava/lang/String;Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;I)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v6

    const/4 v2, 0x0

    .line 121
    sget-object v4, Lcom/ibm/icu/impl/StandardPlural;->OTHER:Lcom/ibm/icu/impl/StandardPlural;

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object v7, v6

    move-object v6, v9

    invoke-static/range {v1 .. v6}, Lcom/ibm/icu/impl/number/PatternStringUtils;->patternInfoToStringBuilder(Lcom/ibm/icu/impl/number/AffixPatternProvider;ZLcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;Lcom/ibm/icu/impl/StandardPlural;ZLjava/lang/StringBuilder;)V

    .line 128
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v8}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->fromAffixPattern(Ljava/lang/String;Lcom/ibm/icu/impl/number/parse/AffixTokenMatcherFactory;I)Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    move-result-object v3

    .line 130
    sget-object v1, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    move-object/from16 v2, p3

    if-ne v2, v1, :cond_4

    move-object v11, v3

    move-object v4, v7

    goto :goto_4

    .line 133
    :cond_4
    invoke-static {v7, v12}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v3, v11}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_3
    move-object v3, v11

    move-object v4, v12

    const/4 v5, 0x0

    goto :goto_9

    :cond_5
    move-object v4, v12

    .line 139
    :goto_4
    sget-object v1, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->NEG:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    if-ne v2, v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    .line 143
    :goto_5
    invoke-static {v7, v3, v1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->getInstance(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;I)Lcom/ibm/icu/impl/number/parse/AffixMatcher;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v13, :cond_a

    if-eqz v7, :cond_a

    if-eqz v3, :cond_a

    .line 146
    sget-object v5, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    if-eq v2, v5, :cond_8

    invoke-static {v7, v4}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v5, 0x0

    .line 147
    invoke-static {v7, v5, v1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->getInstance(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;I)Lcom/ibm/icu/impl/number/parse/AffixMatcher;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :goto_7
    sget-object v6, Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;->POS:Lcom/ibm/icu/impl/number/PatternStringUtils$PatternSignType;

    if-eq v2, v6, :cond_9

    invoke-static {v3, v11}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 150
    :cond_9
    invoke-static {v5, v3, v1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->getInstance(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;I)Lcom/ibm/icu/impl/number/parse/AffixMatcher;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    :cond_b
    :goto_8
    move-object v3, v11

    :goto_9
    add-int/lit8 v1, v17, 0x1

    move-object/from16 v7, p0

    move-object v6, v5

    move v5, v1

    goto/16 :goto_1

    .line 156
    :cond_c
    sget-object v0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p1

    .line 157
    invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->addMatchers(Ljava/util/Collection;)V

    return-void
.end method

.method private static final getInstance(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;I)Lcom/ibm/icu/impl/number/parse/AffixMatcher;
    .locals 1

    .line 165
    new-instance v0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;-><init>(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;I)V

    return-object v0
.end method

.method private static isInteresting(Lcom/ibm/icu/impl/number/AffixPatternProvider;Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;I)Z
    .locals 6

    const/16 v0, 0x100

    .line 51
    invoke-interface {p0, v0}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 52
    invoke-interface {p0, v2}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-interface {p0}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->hasNegativeSubpattern()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/16 v4, 0x300

    .line 56
    invoke-interface {p0, v4}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x200

    .line 57
    invoke-interface {p0, v4}, Lcom/ibm/icu/impl/number/AffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v5

    :goto_0
    and-int/2addr p2, v0

    if-nez p2, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->getSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/ibm/icu/impl/number/AffixUtils;->containsOnlySymbolsAndIgnorables(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 62
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->getSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/ibm/icu/impl/number/AffixUtils;->containsOnlySymbolsAndIgnorables(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 63
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->getSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p2

    invoke-static {v5, p2}, Lcom/ibm/icu/impl/number/AffixUtils;->containsOnlySymbolsAndIgnorables(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/IgnorablesMatcher;->getSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsOnlySymbolsAndIgnorables(Ljava/lang/CharSequence;Lcom/ibm/icu/text/UnicodeSet;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x2

    .line 67
    invoke-static {v3, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, -0x1

    .line 68
    invoke-static {v3, p2}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 70
    invoke-static {p0, p2}, Lcom/ibm/icu/impl/number/AffixUtils;->containsType(Ljava/lang/CharSequence;I)Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static length(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    return p0
.end method

.method static matched(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->getPattern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 260
    instance-of v0, p1, Lcom/ibm/icu/impl/number/parse/AffixMatcher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 263
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/number/parse/AffixMatcher;

    .line 264
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v2, p1, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v2, p1, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    .line 265
    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils$Api26Impl$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->flags:I

    iget p1, p1, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->flags:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    invoke-static {v0}, Lcom/ibm/icu/impl/number/parse/AffixMatcher$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    invoke-static {v1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget v1, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->flags:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 3

    .line 176
    invoke-virtual {p2}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v0

    .line 187
    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v1, p1, p2}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z

    move-result v1

    .line 188
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result p1

    if-eq v0, p1, :cond_1

    .line 189
    iget-object p1, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->getPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    :cond_1
    :goto_0
    return v1

    .line 199
    :cond_2
    iget-object v0, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v2, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->matched(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v1, p1, p2}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->match(Lcom/ibm/icu/impl/StringSegment;Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z

    move-result v1

    .line 206
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result p1

    if-eq v0, p1, :cond_4

    .line 207
    iget-object p1, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->getPattern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    :cond_4
    :goto_1
    return v1
.end method

.method public postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v1, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->matched(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    iget-object v1, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->matched(Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 226
    iput-object v1, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    .line 228
    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 229
    iput-object v1, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    .line 231
    :cond_1
    iget v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    iget v1, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->flags:I

    or-int/2addr v0, v1

    iput v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 232
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->postProcess(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    :cond_3
    return-void
.end method

.method public smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;->smokeTest(Lcom/ibm/icu/impl/StringSegment;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 276
    iget v0, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 277
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<AffixMatcher"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v1, ":negative "

    goto :goto_1

    :cond_1
    const-string v1, " "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->prefix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/number/parse/AffixMatcher;->suffix:Lcom/ibm/icu/impl/number/parse/AffixPatternMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
