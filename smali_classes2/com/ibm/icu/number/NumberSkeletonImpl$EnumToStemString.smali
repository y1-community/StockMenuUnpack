.class final Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnumToStemString"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$3900(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 388
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->signDisplay(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$4400(Ljava/math/RoundingMode;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 388
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->roundingMode(Ljava/math/RoundingMode;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 388
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->groupingStrategy(Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 388
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->unitWidth(Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 388
    invoke-static {p0, p1}, Lcom/ibm/icu/number/NumberSkeletonImpl$EnumToStemString;->decimalSeparatorDisplay(Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static decimalSeparatorDisplay(Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 506
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$DecimalSeparatorDisplay:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "decimal-always"

    .line 511
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 514
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    const-string p0, "decimal-auto"

    .line 508
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private static groupingStrategy(Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 422
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$GroupingStrategy:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

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

    const-string p0, "group-thousands"

    .line 436
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 439
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    const-string p0, "group-on-aligned"

    .line 433
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p0, "group-auto"

    .line 430
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string p0, "group-min2"

    .line 427
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p0, "group-off"

    .line 424
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method private static roundingMode(Ljava/math/RoundingMode;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 391
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 417
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "rounding-mode-unnecessary"

    .line 414
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string p0, "rounding-mode-half-up"

    .line 411
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string p0, "rounding-mode-half-down"

    .line 408
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string p0, "rounding-mode-half-even"

    .line 405
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string p0, "rounding-mode-up"

    .line 402
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string p0, "rounding-mode-down"

    .line 399
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    const-string p0, "rounding-mode-floor"

    .line 396
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_7
    const-string p0, "rounding-mode-ceiling"

    .line 393
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static signDisplay(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 472
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 501
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "sign-accounting-negative"

    .line 498
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string p0, "sign-negative"

    .line 495
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string p0, "sign-accounting-except-zero"

    .line 492
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string p0, "sign-except-zero"

    .line 489
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string p0, "sign-accounting-always"

    .line 486
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string p0, "sign-accounting"

    .line 483
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    const-string p0, "sign-never"

    .line 480
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_7
    const-string p0, "sign-always"

    .line 477
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_8
    const-string p0, "sign-auto"

    .line 474
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static unitWidth(Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 444
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$UnitWidth:[I

    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 467
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "unit-width-hidden"

    .line 464
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string p0, "unit-width-variant"

    .line 461
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string p0, "unit-width-formal"

    .line 458
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string p0, "unit-width-iso-code"

    .line 455
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string p0, "unit-width-full-name"

    .line 452
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string p0, "unit-width-short"

    .line 449
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    const-string p0, "unit-width-narrow"

    .line 446
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
