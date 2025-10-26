.class public Lcom/ibm/icu/impl/number/DecimalFormatProperties;
.super Ljava/lang/Object;
.source "DecimalFormatProperties.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;
    }
.end annotation


# static fields
.field private static final DEFAULT:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

.field private static final serialVersionUID:J = 0x38d634ca98a9d27bL


# instance fields
.field private transient compactCustomData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private transient compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

.field private transient currency:Lcom/ibm/icu/util/Currency;

.field private transient currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

.field private transient currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

.field private transient decimalPatternMatchRequired:Z

.field private transient decimalSeparatorAlwaysShown:Z

.field private transient exponentSignAlwaysShown:Z

.field private transient formatWidth:I

.field private transient groupingSize:I

.field private transient groupingUsed:Z

.field private transient magnitudeMultiplier:I

.field private transient mathContext:Ljava/math/MathContext;

.field private transient maximumFractionDigits:I

.field private transient maximumIntegerDigits:I

.field private transient maximumSignificantDigits:I

.field private transient minimumExponentDigits:I

.field private transient minimumFractionDigits:I

.field private transient minimumGroupingDigits:I

.field private transient minimumIntegerDigits:I

.field private transient minimumSignificantDigits:I

.field private transient multiplier:Ljava/math/BigDecimal;

.field private transient negativePrefix:Ljava/lang/String;

.field private transient negativePrefixPattern:Ljava/lang/String;

.field private transient negativeSuffix:Ljava/lang/String;

.field private transient negativeSuffixPattern:Ljava/lang/String;

.field private transient padPosition:Lcom/ibm/icu/impl/number/Padder$PadPosition;

.field private transient padString:Ljava/lang/String;

.field private transient parseCaseSensitive:Z

.field private transient parseIntegerOnly:Z

.field private transient parseMode:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

.field private transient parseNoExponent:Z

.field private transient parseToBigDecimal:Z

.field private transient pluralRules:Lcom/ibm/icu/text/PluralRules;

.field private transient positivePrefix:Ljava/lang/String;

.field private transient positivePrefixPattern:Ljava/lang/String;

.field private transient positiveSuffix:Ljava/lang/String;

.field private transient positiveSuffixPattern:Ljava/lang/String;

.field private transient roundingIncrement:Ljava/math/BigDecimal;

.field private transient roundingMode:Ljava/math/RoundingMode;

.field private transient secondaryGroupingSize:I

.field private transient signAlwaysShown:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->DEFAULT:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->clear()Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    return-void
.end method

.method private _clear()Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 4

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    .line 160
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 161
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currency:Lcom/ibm/icu/util/Currency;

    .line 162
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 163
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    const/4 v1, 0x0

    .line 164
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    .line 165
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    .line 166
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    const/4 v2, -0x1

    .line 167
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    .line 168
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    const/4 v3, 0x1

    .line 169
    iput-boolean v3, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    .line 170
    iput v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    .line 171
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    .line 172
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    .line 173
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    .line 174
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    .line 175
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    .line 176
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    .line 177
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    .line 178
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    .line 179
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    .line 180
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    .line 181
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padPosition:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    .line 186
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    .line 187
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    .line 188
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    .line 189
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseMode:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 190
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    .line 191
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    .line 192
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 193
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    .line 196
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    .line 197
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    .line 198
    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    .line 199
    iput v2, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    .line 200
    iput-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    return-object p0
.end method

.method private _copyFrom(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 1

    .line 205
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    .line 206
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    .line 207
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currency:Lcom/ibm/icu/util/Currency;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currency:Lcom/ibm/icu/util/Currency;

    .line 208
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 209
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    .line 210
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    .line 211
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    .line 212
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    .line 213
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    .line 214
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    .line 215
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    .line 216
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    .line 217
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    .line 218
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    .line 219
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    .line 220
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    .line 221
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    .line 222
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    .line 223
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    .line 224
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    .line 225
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    .line 226
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    .line 227
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    .line 228
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    .line 229
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    .line 230
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    .line 231
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padPosition:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padPosition:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    .line 232
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    .line 233
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    .line 234
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    .line 235
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseMode:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseMode:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 236
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    .line 237
    iget-boolean v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    iput-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    .line 238
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    .line 239
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    .line 240
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    .line 241
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    .line 243
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    .line 244
    iget-object v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    .line 245
    iget v0, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    iput v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    .line 246
    iget-boolean p1, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    return-object p0
.end method

.method private _equals(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Z
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    iget-object v1, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currency:Lcom/ibm/icu/util/Currency;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currency:Lcom/ibm/icu/util/Currency;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    .line 257
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_6

    .line 258
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_6

    :cond_6
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_7

    .line 259
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_7

    :cond_7
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_8

    .line 260
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_9

    .line 261
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_9

    :cond_9
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_a

    .line 262
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_b

    .line 263
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_c

    .line 264
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_d

    .line 265
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_e

    .line 266
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_f

    .line 267
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :cond_f
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_10

    .line 268
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_10

    :cond_10
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_11

    .line 269
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :cond_11
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_12

    .line 270
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_12

    :cond_12
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_13

    .line 271
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_13

    :cond_13
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_14

    .line 272
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_14

    :cond_14
    const/4 v0, 0x0

    :goto_14
    if-eqz v0, :cond_15

    .line 273
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_15

    :cond_15
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_16

    .line 274
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_16

    :cond_16
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_17

    .line 275
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_17

    :cond_17
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_18

    .line 276
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_18

    :cond_18
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_19

    .line 277
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_19

    :cond_19
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_1a

    .line 278
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padPosition:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padPosition:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a

    :cond_1a
    const/4 v0, 0x0

    :goto_1a
    if-eqz v0, :cond_1b

    .line 279
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1b
    const/4 v0, 0x0

    :goto_1b
    if-eqz v0, :cond_1c

    .line 280
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1c
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_1d

    .line 281
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1d
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_1e

    .line 282
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseMode:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseMode:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1e
    const/4 v0, 0x0

    :goto_1e
    if-eqz v0, :cond_1f

    .line 283
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1f
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_20

    .line 284
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    iget-boolean v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_20

    :cond_20
    const/4 v0, 0x0

    :goto_20
    if-eqz v0, :cond_21

    .line 285
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    goto :goto_21

    :cond_21
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_22

    .line 286
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_22

    :cond_22
    const/4 v0, 0x0

    :goto_22
    if-eqz v0, :cond_23

    .line 287
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_23

    :cond_23
    const/4 v0, 0x0

    :goto_23
    if-eqz v0, :cond_24

    .line 288
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    goto :goto_24

    :cond_24
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_25

    .line 289
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_25

    :cond_25
    const/4 v0, 0x0

    :goto_25
    if-eqz v0, :cond_26

    .line 290
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_26

    :cond_26
    const/4 v0, 0x0

    :goto_26
    if-eqz v0, :cond_27

    .line 291
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    iget-object v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    goto :goto_27

    :cond_27
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_28

    .line 292
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    iget v3, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    invoke-direct {p0, v0, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(II)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_28

    :cond_28
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_29

    .line 293
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    iget-boolean p1, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equalsHelper(ZZ)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_29

    :cond_29
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method private _equalsHelper(II)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private _equalsHelper(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 310
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private _equalsHelper(ZZ)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private _hashCode()I
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    .line 316
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 317
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currency:Lcom/ibm/icu/util/Currency;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 318
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 319
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 320
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 321
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 322
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 323
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 324
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 325
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 326
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 327
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 328
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 329
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 330
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 331
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 332
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 333
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 334
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 335
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 336
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 337
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 338
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 339
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 340
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 341
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padPosition:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 342
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 343
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 344
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 345
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseMode:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 346
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 347
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    .line 348
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 349
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 350
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 351
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 352
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 353
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 354
    iget-object v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 355
    iget v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(I)I

    move-result v1

    xor-int/2addr v0, v1

    .line 356
    iget-boolean v1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    invoke-direct {p0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCodeHelper(Z)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private _hashCodeHelper(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0xd

    return p1
.end method

.method private _hashCodeHelper(Ljava/lang/Object;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 371
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method private _hashCodeHelper(Z)I
    .locals 0

    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 589
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->readObjectImpl(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1397
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->writeObjectImpl(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public clear()Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 1

    .line 375
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_clear()Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 2

    .line 383
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 386
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->clone()Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    return-object v0
.end method

.method public copyFrom(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 398
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_copyFrom(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 407
    :cond_1
    instance-of v1, p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    if-nez v1, :cond_2

    return v0

    .line 409
    :cond_2
    check-cast p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_equals(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Z

    move-result p1

    return p1
.end method

.method public getCompactCustomData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    return-object v0
.end method

.method public getCompactStyle()Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    return-object v0
.end method

.method public getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currency:Lcom/ibm/icu/util/Currency;

    return-object v0
.end method

.method public getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    return-object v0
.end method

.method public getCurrencyUsage()Lcom/ibm/icu/util/Currency$CurrencyUsage;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-object v0
.end method

.method public getDecimalPatternMatchRequired()Z
    .locals 1

    .line 435
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    return v0
.end method

.method public getDecimalSeparatorAlwaysShown()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    return v0
.end method

.method public getExponentSignAlwaysShown()Z
    .locals 1

    .line 443
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    return v0
.end method

.method public getFormatWidth()I
    .locals 1

    .line 447
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    return v0
.end method

.method public getGroupingSize()I
    .locals 1

    .line 451
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    return v0
.end method

.method public getGroupingUsed()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    return v0
.end method

.method public getMagnitudeMultiplier()I
    .locals 1

    .line 459
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    return v0
.end method

.method public getMathContext()Ljava/math/MathContext;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    return-object v0
.end method

.method public getMaximumFractionDigits()I
    .locals 1

    .line 467
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    return v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    .line 471
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    return v0
.end method

.method public getMaximumSignificantDigits()I
    .locals 1

    .line 475
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    return v0
.end method

.method public getMinimumExponentDigits()I
    .locals 1

    .line 479
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    return v0
.end method

.method public getMinimumFractionDigits()I
    .locals 1

    .line 483
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    return v0
.end method

.method public getMinimumGroupingDigits()I
    .locals 1

    .line 487
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    .line 491
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    return v0
.end method

.method public getMinimumSignificantDigits()I
    .locals 1

    .line 495
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    return v0
.end method

.method public getMultiplier()Ljava/math/BigDecimal;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getNegativePrefix()Ljava/lang/String;
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativePrefixPattern()Ljava/lang/String;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeSuffix()Ljava/lang/String;
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getNegativeSuffixPattern()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPadPosition()Lcom/ibm/icu/impl/number/Padder$PadPosition;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padPosition:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    return-object v0
.end method

.method public getPadString()Ljava/lang/String;
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    return-object v0
.end method

.method public getParseCaseSensitive()Z
    .locals 1

    .line 527
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    return v0
.end method

.method public getParseIntegerOnly()Z
    .locals 1

    .line 531
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    return v0
.end method

.method public getParseMode()Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseMode:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    return-object v0
.end method

.method public getParseNoExponent()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    return v0
.end method

.method public getParseToBigDecimal()Z
    .locals 1

    .line 543
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    return v0
.end method

.method public getPluralRules()Lcom/ibm/icu/text/PluralRules;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    return-object v0
.end method

.method public getPositivePrefix()Ljava/lang/String;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPositivePrefixPattern()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveSuffix()Ljava/lang/String;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveSuffixPattern()Ljava/lang/String;
    .locals 1

    .line 563
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundingIncrement()Ljava/math/BigDecimal;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public getSecondaryGroupingSize()I
    .locals 1

    .line 575
    iget v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    return v0
.end method

.method public getSignAlwaysShown()Z
    .locals 1

    .line 579
    iget-boolean v0, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 584
    invoke-direct {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->_hashCode()I

    move-result v0

    return v0
.end method

.method readObjectImpl(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 594
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 597
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->clear()Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 600
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 603
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 607
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 608
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 613
    :try_start_0
    const-class v4, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 627
    :try_start_1
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 633
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 630
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_2
    move-exception p1

    .line 619
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCompactCustomData(Ljava/util/Map;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/ibm/icu/impl/number/DecimalFormatProperties;"
        }
    .end annotation

    .line 665
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactCustomData:Ljava/util/Map;

    return-object p0
.end method

.method public setCompactStyle(Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 679
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->compactStyle:Lcom/ibm/icu/text/CompactDecimalFormat$CompactStyle;

    return-object p0
.end method

.method public setCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 691
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currency:Lcom/ibm/icu/util/Currency;

    return-object p0
.end method

.method public setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    if-eqz p1, :cond_0

    .line 706
    invoke-virtual {p1}, Lcom/ibm/icu/text/CurrencyPluralInfo;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/CurrencyPluralInfo;

    .line 708
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyPluralInfo:Lcom/ibm/icu/text/CurrencyPluralInfo;

    return-object p0
.end method

.method public setCurrencyUsage(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->currencyUsage:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    return-object p0
.end method

.method public setDecimalPatternMatchRequired(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 740
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalPatternMatchRequired:Z

    return-object p0
.end method

.method public setDecimalSeparatorAlwaysShown(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 754
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->decimalSeparatorAlwaysShown:Z

    return-object p0
.end method

.method public setExponentSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 768
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->exponentSignAlwaysShown:Z

    return-object p0
.end method

.method public setFormatWidth(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 791
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->formatWidth:I

    return-object p0
.end method

.method public setGroupingSize(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 805
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingSize:I

    return-object p0
.end method

.method public setGroupingUsed(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 817
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->groupingUsed:Z

    return-object p0
.end method

.method public setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 831
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->magnitudeMultiplier:I

    return-object p0
.end method

.method public setMathContext(Ljava/math/MathContext;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 846
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->mathContext:Ljava/math/MathContext;

    return-object p0
.end method

.method public setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 863
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumFractionDigits:I

    return-object p0
.end method

.method public setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 879
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumIntegerDigits:I

    return-object p0
.end method

.method public setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 905
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->maximumSignificantDigits:I

    return-object p0
.end method

.method public setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 919
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumExponentDigits:I

    return-object p0
.end method

.method public setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 934
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumFractionDigits:I

    return-object p0
.end method

.method public setMinimumGroupingDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 949
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumGroupingDigits:I

    return-object p0
.end method

.method public setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 964
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumIntegerDigits:I

    return-object p0
.end method

.method public setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 991
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->minimumSignificantDigits:I

    return-object p0
.end method

.method public setMultiplier(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1004
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->multiplier:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1023
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1041
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativePrefixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1061
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1079
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->negativeSuffixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setPadPosition(Lcom/ibm/icu/impl/number/Padder$PadPosition;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1096
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padPosition:Lcom/ibm/icu/impl/number/Padder$PadPosition;

    return-object p0
.end method

.method public setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1113
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->padString:Ljava/lang/String;

    return-object p0
.end method

.method public setParseCaseSensitive(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1132
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseCaseSensitive:Z

    return-object p0
.end method

.method public setParseIntegerOnly(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1145
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseIntegerOnly:Z

    return-object p0
.end method

.method public setParseMode(Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1158
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseMode:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    return-object p0
.end method

.method public setParseNoExponent(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1171
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseNoExponent:Z

    return-object p0
.end method

.method public setParseToBigDecimal(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1185
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->parseToBigDecimal:Z

    return-object p0
.end method

.method public setPluralRules(Lcom/ibm/icu/text/PluralRules;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1197
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->pluralRules:Lcom/ibm/icu/text/PluralRules;

    return-object p0
.end method

.method public setPositivePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1215
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefix:Ljava/lang/String;

    return-object p0
.end method

.method public setPositivePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1233
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positivePrefixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1251
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffix:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->positiveSuffixPattern:Ljava/lang/String;

    return-object p0
.end method

.method public setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1290
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingIncrement:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1309
    iput-object p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->roundingMode:Ljava/math/RoundingMode;

    return-object p0
.end method

.method public setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1327
    iput p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->secondaryGroupingSize:I

    return-object p0
.end method

.method public setSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    .locals 0

    .line 1351
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->signAlwaysShown:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<Properties"

    .line 1358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->toStringBare(Ljava/lang/StringBuilder;)V

    const-string v1, ">"

    .line 1360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringBare(Ljava/lang/StringBuilder;)V
    .locals 8

    .line 1369
    const-class v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1370
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 1373
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1374
    sget-object v5, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->DEFAULT:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    const-string v6, ":"

    const-string v7, " "

    if-eqz v4, :cond_2

    if-nez v5, :cond_1

    goto :goto_1

    .line 1386
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1387
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1385
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v3

    .line 1379
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    .line 1376
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method writeObjectImpl(Ljava/io/ObjectOutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1401
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v0, 0x0

    .line 1404
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1407
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    const-class v3, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1409
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 1410
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    .line 1414
    :cond_0
    :try_start_0
    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 1419
    :cond_1
    sget-object v8, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->DEFAULT:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1420
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1421
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1429
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1426
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1434
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1435
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :goto_2
    if-ge v0, v3, :cond_4

    .line 1439
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 1440
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 1441
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1442
    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
