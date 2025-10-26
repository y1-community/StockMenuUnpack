.class final Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StemToObject"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$SignDisplay;
    .locals 0

    .line 239
    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->signDisplay(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;
    .locals 0

    .line 239
    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->decimalSeparatorDisplay(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/Notation;
    .locals 0

    .line 239
    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->notation(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/Notation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 0

    .line 239
    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->unit(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/Precision;
    .locals 0

    .line 239
    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->precision(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/Precision;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Ljava/math/RoundingMode;
    .locals 0

    .line 239
    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->roundingMode(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Ljava/math/RoundingMode;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;
    .locals 0

    .line 239
    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->groupingStrategy(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$UnitWidth;
    .locals 0

    .line 239
    invoke-static {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemToObject;->unitWidth(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    move-result-object p0

    return-object p0
.end method

.method private static decimalSeparatorDisplay(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;
    .locals 1

    .line 373
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 377
    :cond_0
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    return-object p0

    .line 375
    :cond_1
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    return-object p0
.end method

.method private static groupingStrategy(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;
    .locals 1

    .line 310
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 320
    :pswitch_0
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->THOUSANDS:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    return-object p0

    .line 318
    :pswitch_1
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->ON_ALIGNED:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    return-object p0

    .line 316
    :pswitch_2
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    return-object p0

    .line 314
    :pswitch_3
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->MIN2:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    return-object p0

    .line 312
    :pswitch_4
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->OFF:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static notation(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/Notation;
    .locals 1

    .line 242
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 252
    invoke-static {}, Lcom/ibm/icu/number/Notation;->simple()Lcom/ibm/icu/number/SimpleNotation;

    move-result-object p0

    return-object p0

    .line 254
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 250
    :cond_1
    invoke-static {}, Lcom/ibm/icu/number/Notation;->engineering()Lcom/ibm/icu/number/ScientificNotation;

    move-result-object p0

    return-object p0

    .line 248
    :cond_2
    invoke-static {}, Lcom/ibm/icu/number/Notation;->scientific()Lcom/ibm/icu/number/ScientificNotation;

    move-result-object p0

    return-object p0

    .line 246
    :cond_3
    invoke-static {}, Lcom/ibm/icu/number/Notation;->compactLong()Lcom/ibm/icu/number/CompactNotation;

    move-result-object p0

    return-object p0

    .line 244
    :cond_4
    invoke-static {}, Lcom/ibm/icu/number/Notation;->compactShort()Lcom/ibm/icu/number/CompactNotation;

    move-result-object p0

    return-object p0
.end method

.method private static precision(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/Precision;
    .locals 1

    .line 272
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 282
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 280
    :pswitch_0
    sget-object p0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->CASH:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-static {p0}, Lcom/ibm/icu/number/Precision;->currency(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/number/CurrencyPrecision;

    move-result-object p0

    return-object p0

    .line 278
    :pswitch_1
    sget-object p0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;

    invoke-static {p0}, Lcom/ibm/icu/number/Precision;->currency(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/number/CurrencyPrecision;

    move-result-object p0

    return-object p0

    .line 276
    :pswitch_2
    invoke-static {}, Lcom/ibm/icu/number/Precision;->unlimited()Lcom/ibm/icu/number/Precision;

    move-result-object p0

    return-object p0

    .line 274
    :pswitch_3
    invoke-static {}, Lcom/ibm/icu/number/Precision;->integer()Lcom/ibm/icu/number/FractionPrecision;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static roundingMode(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Ljava/math/RoundingMode;
    .locals 1

    .line 287
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 305
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 303
    :pswitch_0
    sget-object p0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    return-object p0

    .line 301
    :pswitch_1
    sget-object p0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    return-object p0

    .line 299
    :pswitch_2
    sget-object p0, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    return-object p0

    .line 297
    :pswitch_3
    sget-object p0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    return-object p0

    .line 295
    :pswitch_4
    sget-object p0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    return-object p0

    .line 293
    :pswitch_5
    sget-object p0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    return-object p0

    .line 291
    :pswitch_6
    sget-object p0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    return-object p0

    .line 289
    :pswitch_7
    sget-object p0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static signDisplay(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$SignDisplay;
    .locals 1

    .line 348
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 366
    :pswitch_0
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_NEGATIVE:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object p0

    .line 364
    :pswitch_1
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->NEGATIVE:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object p0

    .line 362
    :pswitch_2
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object p0

    .line 360
    :pswitch_3
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object p0

    .line 358
    :pswitch_4
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object p0

    .line 356
    :pswitch_5
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object p0

    .line 354
    :pswitch_6
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->NEVER:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object p0

    .line 352
    :pswitch_7
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object p0

    .line 350
    :pswitch_8
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static unit(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    .line 259
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    .line 265
    sget-object p0, Lcom/ibm/icu/util/NoUnit;->PERMILLE:Lcom/ibm/icu/util/MeasureUnit;

    return-object p0

    .line 267
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 263
    :cond_1
    sget-object p0, Lcom/ibm/icu/util/NoUnit;->PERCENT:Lcom/ibm/icu/util/MeasureUnit;

    return-object p0

    .line 261
    :cond_2
    sget-object p0, Lcom/ibm/icu/util/NoUnit;->BASE:Lcom/ibm/icu/util/MeasureUnit;

    return-object p0
.end method

.method private static unitWidth(Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;)Lcom/ibm/icu/number/NumberFormatter$UnitWidth;
    .locals 1

    .line 327
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 341
    :pswitch_0
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-object p0

    .line 339
    :pswitch_1
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->VARIANT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-object p0

    .line 337
    :pswitch_2
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FORMAL:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-object p0

    .line 335
    :pswitch_3
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-object p0

    .line 333
    :pswitch_4
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-object p0

    .line 331
    :pswitch_5
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-object p0

    .line 329
    :pswitch_6
    sget-object p0, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->NARROW:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
