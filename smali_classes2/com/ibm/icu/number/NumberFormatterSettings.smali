.class public abstract Lcom/ibm/icu/number/NumberFormatterSettings;
.super Ljava/lang/Object;
.source "NumberFormatterSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/ibm/icu/number/NumberFormatterSettings<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final KEY_DECIMAL:I = 0xc

.field static final KEY_GROUPING:I = 0x6

.field static final KEY_INTEGER:I = 0x8

.field static final KEY_LOCALE:I = 0x1

.field static final KEY_MACROS:I = 0x0

.field static final KEY_MAX:I = 0x12

.field static final KEY_NOTATION:I = 0x2

.field static final KEY_PADDER:I = 0x7

.field static final KEY_PER_UNIT:I = 0xf

.field static final KEY_PRECISION:I = 0x4

.field static final KEY_ROUNDING_MODE:I = 0x5

.field static final KEY_SCALE:I = 0xd

.field static final KEY_SIGN:I = 0xb

.field static final KEY_SYMBOLS:I = 0x9

.field static final KEY_THRESHOLD:I = 0xe

.field static final KEY_UNIT:I = 0x3

.field static final KEY_UNIT_DISPLAY_CASE:I = 0x11

.field static final KEY_UNIT_WIDTH:I = 0xa

.field static final KEY_USAGE:I = 0x10


# instance fields
.field private final key:I

.field private final parent:Lcom/ibm/icu/number/NumberFormatterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/number/NumberFormatterSettings<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile resolvedMacros:Lcom/ibm/icu/impl/number/MacroProps;

.field private final value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/ibm/icu/number/NumberFormatterSettings;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberFormatterSettings<",
            "*>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/ibm/icu/number/NumberFormatterSettings;->parent:Lcom/ibm/icu/number/NumberFormatterSettings;

    .line 58
    iput p2, p0, Lcom/ibm/icu/number/NumberFormatterSettings;->key:I

    .line 59
    iput-object p3, p0, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public decimal(Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xc

    .line 464
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 733
    :cond_1
    instance-of v1, p1, Lcom/ibm/icu/number/NumberFormatterSettings;

    if-nez v1, :cond_2

    return v0

    .line 736
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberFormatterSettings;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v0

    check-cast p1, Lcom/ibm/icu/number/NumberFormatterSettings;

    invoke-virtual {p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/MacroProps;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public grouping(Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberFormatter$GroupingStrategy;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x6

    .line 270
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 717
    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberFormatterSettings;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/MacroProps;->hashCode()I

    move-result v0

    return v0
.end method

.method public integerWidth(Lcom/ibm/icu/number/IntegerWidth;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/IntegerWidth;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x8

    .line 298
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public macros(Lcom/ibm/icu/impl/number/MacroProps;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/number/MacroProps;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 576
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public notation(Lcom/ibm/icu/number/Notation;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/Notation;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 91
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public padding(Lcom/ibm/icu/impl/number/Padder;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/impl/number/Padder;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x7

    .line 587
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public perUnit(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/MeasureUnit;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xf

    .line 180
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public precision(Lcom/ibm/icu/number/Precision;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/Precision;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 214
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method resolve()Lcom/ibm/icu/impl/number/MacroProps;
    .locals 12

    .line 628
    iget-object v0, p0, Lcom/ibm/icu/number/NumberFormatterSettings;->resolvedMacros:Lcom/ibm/icu/impl/number/MacroProps;

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/ibm/icu/number/NumberFormatterSettings;->resolvedMacros:Lcom/ibm/icu/impl/number/MacroProps;

    return-object v0

    .line 635
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/number/MacroProps;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/MacroProps;-><init>()V

    const-wide/16 v1, 0x0

    move-object v3, p0

    move-wide v4, v1

    :goto_0
    if-eqz v3, :cond_2

    const-wide/16 v6, 0x1

    .line 640
    iget v8, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->key:I

    shl-long/2addr v6, v8

    and-long v9, v4, v6

    cmp-long v11, v1, v9

    if-eqz v11, :cond_1

    .line 642
    iget-object v3, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->parent:Lcom/ibm/icu/number/NumberFormatterSettings;

    goto :goto_0

    :cond_1
    or-long/2addr v4, v6

    packed-switch v8, :pswitch_data_0

    .line 702
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->key:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 699
    :pswitch_0
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->unitDisplayCase:Ljava/lang/String;

    goto/16 :goto_1

    .line 696
    :pswitch_1
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    goto/16 :goto_1

    .line 693
    :pswitch_2
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/util/MeasureUnit;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->perUnit:Lcom/ibm/icu/util/MeasureUnit;

    goto/16 :goto_1

    .line 690
    :pswitch_3
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->threshold:Ljava/lang/Long;

    goto :goto_1

    .line 687
    :pswitch_4
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/Scale;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->scale:Lcom/ibm/icu/number/Scale;

    goto :goto_1

    .line 684
    :pswitch_5
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    goto :goto_1

    .line 681
    :pswitch_6
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

    goto :goto_1

    .line 678
    :pswitch_7
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->unitWidth:Lcom/ibm/icu/number/NumberFormatter$UnitWidth;

    goto :goto_1

    .line 675
    :pswitch_8
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    goto :goto_1

    .line 672
    :pswitch_9
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/IntegerWidth;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->integerWidth:Lcom/ibm/icu/number/IntegerWidth;

    goto :goto_1

    .line 669
    :pswitch_a
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/impl/number/Padder;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->padder:Lcom/ibm/icu/impl/number/Padder;

    goto :goto_1

    .line 666
    :pswitch_b
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    goto :goto_1

    .line 663
    :pswitch_c
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Ljava/math/RoundingMode;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    goto :goto_1

    .line 660
    :pswitch_d
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/Precision;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->precision:Lcom/ibm/icu/number/Precision;

    goto :goto_1

    .line 657
    :pswitch_e
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/util/MeasureUnit;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->unit:Lcom/ibm/icu/util/MeasureUnit;

    goto :goto_1

    .line 654
    :pswitch_f
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/number/Notation;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->notation:Lcom/ibm/icu/number/Notation;

    goto :goto_1

    .line 651
    :pswitch_10
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/util/ULocale;

    iput-object v6, v0, Lcom/ibm/icu/impl/number/MacroProps;->loc:Lcom/ibm/icu/util/ULocale;

    goto :goto_1

    .line 648
    :pswitch_11
    iget-object v6, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ibm/icu/impl/number/MacroProps;

    invoke-virtual {v0, v6}, Lcom/ibm/icu/impl/number/MacroProps;->fallback(Lcom/ibm/icu/impl/number/MacroProps;)V

    .line 704
    :goto_1
    iget-object v3, v3, Lcom/ibm/icu/number/NumberFormatterSettings;->parent:Lcom/ibm/icu/number/NumberFormatterSettings;

    goto/16 :goto_0

    .line 706
    :cond_2
    iput-object v0, p0, Lcom/ibm/icu/number/NumberFormatterSettings;->resolvedMacros:Lcom/ibm/icu/impl/number/MacroProps;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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

.method public roundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/RoundingMode;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x5

    .line 238
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public scale(Lcom/ibm/icu/number/Scale;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/Scale;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xd

    .line 493
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public sign(Lcom/ibm/icu/number/NumberFormatter$SignDisplay;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberFormatter$SignDisplay;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xb

    .line 435
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public symbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/DecimalFormatSymbols;",
            ")TT;"
        }
    .end annotation

    .line 342
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/16 v0, 0x9

    .line 343
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public symbols(Lcom/ibm/icu/text/NumberingSystem;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/NumberingSystem;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x9

    .line 377
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public threshold(Ljava/lang/Long;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xe

    .line 599
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public toSkeleton()Ljava/lang/String;
    .locals 1

    .line 622
    invoke-virtual {p0}, Lcom/ibm/icu/number/NumberFormatterSettings;->resolve()Lcom/ibm/icu/impl/number/MacroProps;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/number/NumberSkeletonImpl;->generate(Lcom/ibm/icu/impl/number/MacroProps;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unit(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/MeasureUnit;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 153
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public unitDisplayCase(Ljava/lang/String;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x11

    .line 565
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public unitWidth(Lcom/ibm/icu/number/NumberFormatter$UnitWidth;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/number/NumberFormatter$UnitWidth;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 406
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method

.method public usage(Ljava/lang/String;)Lcom/ibm/icu/number/NumberFormatterSettings;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    .line 548
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 549
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1

    .line 552
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/number/NumberFormatterSettings;->create(ILjava/lang/Object;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    return-object p1
.end method
