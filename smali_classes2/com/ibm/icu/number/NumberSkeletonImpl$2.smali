.class synthetic Lcom/ibm/icu/number/NumberSkeletonImpl$2;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ibm$icu$number$NumberFormatter$DecimalSeparatorDisplay:[I

.field static final synthetic $SwitchMap$com$ibm$icu$number$NumberFormatter$GroupingStrategy:[I

.field static final synthetic $SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

.field static final synthetic $SwitchMap$com$ibm$icu$number$NumberFormatter$UnitWidth:[I

.field static final synthetic $SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

.field static final synthetic $SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

.field static final synthetic $SwitchMap$java$math$RoundingMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 636
    invoke-static {}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->values()[Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_INCREMENT_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v2}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v3, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v3}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v4, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_PER_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v4}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v5, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_IDENTIFIER_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v5}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v6, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_UNIT_USAGE:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v6}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v7, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_CURRENCY_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v7}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v8, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_INTEGER_WIDTH:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v8}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v9, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_NUMBERING_SYSTEM:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v9}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v10, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCALE:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v10}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v11, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_SCIENTIFIC:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v11}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_FRACTION_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v12}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v11, 0xc

    :try_start_b
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$ParseState:[I

    sget-object v13, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->STATE_PRECISION:Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberSkeletonImpl$ParseState;->ordinal()I

    move-result v13

    aput v11, v12, v13
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 506
    :catch_b
    invoke-static {}, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->values()[Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$DecimalSeparatorDisplay:[I

    :try_start_c
    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$DecimalSeparatorDisplay:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    .line 472
    :catch_d
    invoke-static {}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->values()[Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    :try_start_e
    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->AUTO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->NEVER:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v13

    aput v3, v12, v13
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_ALWAYS:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v13

    aput v4, v12, v13
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->EXCEPT_ZERO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v13

    aput v5, v12, v13
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v13

    aput v6, v12, v13
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->NEGATIVE:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v13

    aput v7, v12, v13
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$SignDisplay:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ACCOUNTING_NEGATIVE:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;->ordinal()I

    move-result v13

    aput v8, v12, v13
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    .line 444
    :catch_16
    invoke-static {}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->values()[Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$UnitWidth:[I

    :try_start_17
    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->NARROW:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->SHORT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FULL_NAME:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ISO_CODE:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v13

    aput v3, v12, v13
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->FORMAL:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v13

    aput v4, v12, v13
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->VARIANT:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v13

    aput v5, v12, v13
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$UnitWidth:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->HIDDEN:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;->ordinal()I

    move-result v13

    aput v6, v12, v13
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 422
    :catch_1d
    invoke-static {}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->values()[Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$GroupingStrategy:[I

    :try_start_1e
    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->OFF:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$GroupingStrategy:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->MIN2:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$GroupingStrategy:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$GroupingStrategy:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->ON_ALIGNED:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v13

    aput v3, v12, v13
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberFormatter$GroupingStrategy:[I

    sget-object v13, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->THOUSANDS:Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;->ordinal()I

    move-result v13

    aput v4, v12, v13
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    .line 391
    :catch_22
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    :try_start_23
    sget-object v13, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v13}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v13, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v13}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aput v0, v12, v13
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v13, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v13}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aput v2, v12, v13
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v13, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v13}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aput v3, v12, v13
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v13, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v13}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aput v4, v12, v13
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v13, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v13}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aput v5, v12, v13
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v13, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v13}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aput v6, v12, v13
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$java$math$RoundingMode:[I

    sget-object v13, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {v13}, Ljava/math/RoundingMode;->ordinal()I

    move-result v13

    aput v7, v12, v13
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    .line 242
    :catch_2a
    invoke-static {}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->values()[Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    move-result-object v12

    array-length v12, v12

    new-array v12, v12, [I

    sput-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    :try_start_2b
    sget-object v13, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_COMPACT_SHORT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v13}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v13

    aput v1, v12, v13
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v12, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_COMPACT_LONG:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v12}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v12

    aput v0, v1, v12
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SCIENTIFIC:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ENGINEERING:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_NOTATION_SIMPLE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_BASE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERCENT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERMILLE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_INTEGER:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_UNLIMITED:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_CURRENCY_STANDARD:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_CURRENCY_CASH:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_CEILING:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_FLOOR:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_DOWN:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_UP:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_HALF_EVEN:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_HALF_DOWN:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_HALF_UP:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_ROUNDING_MODE_UNNECESSARY:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_OFF:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_MIN2:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_AUTO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_ON_ALIGNED:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_GROUP_THOUSANDS:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_NARROW:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_SHORT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_FULL_NAME:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_ISO_CODE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_FORMAL:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_VARIANT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_WIDTH_HIDDEN:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_AUTO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ALWAYS:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_NEVER:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_ALWAYS:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_EXCEPT_ZERO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_NEGATIVE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    :try_start_53
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SIGN_ACCOUNTING_NEGATIVE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_DECIMAL_AUTO:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_DECIMAL_ALWAYS:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PERCENT_100:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_LATIN:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PRECISION_INCREMENT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_PER_MEASURE_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_UNIT_USAGE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_CURRENCY:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_INTEGER_WIDTH:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_NUMBERING_SYSTEM:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v0, Lcom/ibm/icu/number/NumberSkeletonImpl$2;->$SwitchMap$com$ibm$icu$number$NumberSkeletonImpl$StemEnum:[I

    sget-object v1, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->STEM_SCALE:Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;

    invoke-virtual {v1}, Lcom/ibm/icu/number/NumberSkeletonImpl$StemEnum;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    return-void
.end method
