.class public Lcom/ibm/icu/text/DecimalFormat;
.super Lcom/ibm/icu/text/NumberFormat;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/DecimalFormat$PropertySetter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final MINIMUM_GROUPING_DIGITS_AUTO:I = -0x2

.field public static final MINIMUM_GROUPING_DIGITS_MIN2:I = -0x3

.field public static final PAD_AFTER_PREFIX:I = 0x1

.field public static final PAD_AFTER_SUFFIX:I = 0x3

.field public static final PAD_BEFORE_PREFIX:I = 0x0

.field public static final PAD_BEFORE_SUFFIX:I = 0x2

.field private static final serialVersionUID:J = 0xbff0362d872303aL


# instance fields
.field volatile transient currencyParser:Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

.field volatile transient exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

.field volatile transient formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

.field private transient icuMathContextForm:I

.field volatile transient parser:Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

.field transient properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

.field private final serialVersionOnStream:I

.field volatile transient symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 319
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 259
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1336
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 321
    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    .line 322
    invoke-static {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->getPattern(Lcom/ibm/icu/util/ULocale;I)Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormat;->getDefaultSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 324
    new-instance v1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 325
    new-instance v1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 v1, 0x1

    .line 327
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 328
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 351
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 259
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1336
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 352
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormat;->getDefaultSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 353
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 354
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 357
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;)V
    .locals 1

    .line 380
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 259
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v0, 0x0

    .line 1336
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 381
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 382
    new-instance p2, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 383
    new-instance p2, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 p2, 0x1

    .line 385
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 386
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;I)V
    .locals 2

    .line 417
    invoke-direct {p0}, Lcom/ibm/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x5

    .line 259
    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->serialVersionOnStream:I

    const/4 v1, 0x0

    .line 1336
    iput v1, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 418
    invoke-virtual {p2}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 419
    new-instance p2, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 420
    new-instance p2, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {p2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x9

    if-eq p3, v0, :cond_1

    const/4 v0, 0x6

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x2

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 432
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/text/CurrencyPluralInfo;I)V
    .locals 0

    .line 411
    invoke-direct {p0, p1, p2, p4}, Lcom/ibm/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;I)V

    .line 412
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, p3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 413
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    return-void
.end method

.method static fieldPositionHelper(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V
    .locals 1

    const/4 v0, 0x0

    .line 2633
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2634
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 2635
    invoke-interface {p0, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity;->populateUFieldPosition(Ljava/text/FieldPosition;)V

    .line 2636
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/FormattedValueStringBuilderImpl;->nextFieldPosition(Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    .line 2638
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p2, p0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 2639
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result p0

    add-int/2addr p0, p3

    invoke-virtual {p2, p0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :cond_0
    return-void
.end method

.method private static getDefaultSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    .line 436
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getInstance()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 535
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Ljava/io/ObjectInputStream$GetField;->getObjectStreamClass()Ljava/io/ObjectStreamClass;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/ObjectStreamClass;->getFields()[Ljava/io/ObjectStreamField;

    move-result-object v2

    const-string v3, "serialVersionOnStream"

    const/4 v4, -0x1

    .line 537
    invoke-virtual {v0, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x5

    if-gt v3, v4, :cond_25

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    .line 545
    array-length v0, v2

    if-gt v0, v5, :cond_1

    .line 549
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readInt()I

    .line 551
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 552
    instance-of v2, v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    if-eqz v2, :cond_0

    .line 554
    check-cast v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_0

    .line 557
    :cond_0
    check-cast v0, Lcom/ibm/icu/impl/number/Properties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Properties;->getInstance()Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 560
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 562
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    goto/16 :goto_8

    .line 546
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Too many fields when reading serial version 5"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 566
    :cond_2
    new-instance v3, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v3, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 570
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_1
    if-ge v7, v3, :cond_1f

    aget-object v16, v2, v7

    .line 571
    invoke-virtual/range {v16 .. v16}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v5, "decimalSeparatorAlwaysShown"

    .line 572
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 573
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalSeparatorAlwaysShown(Z)V

    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_3
    const-string v5, "exponentSignAlwaysShown"

    .line 574
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 575
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setExponentSignAlwaysShown(Z)V

    goto :goto_2

    :cond_4
    const-string v5, "formatWidth"

    .line 576
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 577
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setFormatWidth(I)V

    goto :goto_2

    :cond_5
    const-string v5, "groupingSize"

    .line 578
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v6, 0x3

    .line 579
    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setGroupingSize(I)V

    goto :goto_2

    :cond_6
    const-string v5, "groupingSize2"

    .line 580
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 581
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setSecondaryGroupingSize(I)V

    goto :goto_2

    :cond_7
    const-string v5, "maxSignificantDigits"

    .line 582
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v6, 0x6

    .line 583
    invoke-virtual {v0, v5, v6}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumSignificantDigits(I)V

    goto :goto_2

    :cond_8
    const-string v5, "minExponentDigits"

    .line 584
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 585
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;B)B

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumExponentDigits(B)V

    goto :goto_2

    :cond_9
    const-string v5, "minSignificantDigits"

    .line 586
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/4 v4, 0x1

    .line 587
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumSignificantDigits(I)V

    goto :goto_2

    :cond_a
    const/4 v4, 0x1

    const-string v5, "multiplier"

    .line 588
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 589
    invoke-virtual {v0, v5, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/ibm/icu/text/DecimalFormat;->setMultiplier(I)V

    goto/16 :goto_2

    :cond_b
    const-string v4, "pad"

    .line 590
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v5, 0x20

    .line 591
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;C)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setPadCharacter(C)V

    goto/16 :goto_2

    :cond_c
    const-string v4, "padPosition"

    .line 592
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    .line 593
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setPadPosition(I)V

    goto/16 :goto_2

    :cond_d
    const/4 v5, 0x0

    const-string v4, "parseBigDecimal"

    .line 594
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 595
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setParseBigDecimal(Z)V

    goto/16 :goto_2

    :cond_e
    const-string v4, "parseRequireDecimalPoint"

    .line 596
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 597
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalPatternMatchRequired(Z)V

    goto/16 :goto_2

    :cond_f
    const-string v4, "roundingMode"

    .line 598
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 599
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingMode(I)V

    goto/16 :goto_2

    :cond_10
    const-string v4, "useExponentialNotation"

    .line 600
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 601
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setScientificNotation(Z)V

    goto/16 :goto_2

    :cond_11
    const-string v4, "useSignificantDigits"

    .line 602
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 603
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setSignificantDigitsUsed(Z)V

    goto/16 :goto_2

    :cond_12
    const-string v4, "currencyPluralInfo"

    .line 604
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/4 v5, 0x0

    .line 605
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/CurrencyPluralInfo;

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)V

    goto/16 :goto_3

    :cond_13
    const/4 v5, 0x0

    const-string v4, "mathContext"

    .line 606
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 607
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/math/MathContext;

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setMathContextICU(Lcom/ibm/icu/math/MathContext;)V

    goto/16 :goto_3

    :cond_14
    const-string v4, "negPrefixPattern"

    .line 608
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "negPrefixPattern"

    .line 609
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_3

    :cond_15
    const-string v4, "negSuffixPattern"

    .line 610
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "negSuffixPattern"

    .line 611
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_3

    :cond_16
    const-string v4, "negativePrefix"

    .line 612
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "negativePrefix"

    .line 613
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_3

    :cond_17
    const-string v4, "negativeSuffix"

    .line 614
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "negativeSuffix"

    .line 615
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    goto/16 :goto_3

    :cond_18
    const-string v4, "posPrefixPattern"

    .line 616
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "posPrefixPattern"

    .line 617
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    goto :goto_3

    :cond_19
    const-string v4, "posSuffixPattern"

    .line 618
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "posSuffixPattern"

    .line 619
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    goto :goto_3

    :cond_1a
    const-string v4, "positivePrefix"

    .line 620
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "positivePrefix"

    .line 621
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    goto :goto_3

    :cond_1b
    const-string v4, "positiveSuffix"

    .line 622
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "positiveSuffix"

    .line 623
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    goto :goto_3

    :cond_1c
    const-string v4, "roundingIncrement"

    .line 624
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "roundingIncrement"

    .line 625
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/math/BigDecimal;

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V

    goto :goto_3

    :cond_1d
    const-string v4, "symbols"

    .line 626
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string v4, "symbols"

    .line 627
    invoke-virtual {v0, v4, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/DecimalFormat;->setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V

    :cond_1e
    :goto_3
    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_1f
    if-nez v8, :cond_20

    .line 641
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v9}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_4

    .line 643
    :cond_20
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v8}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    :goto_4
    if-nez v10, :cond_21

    .line 646
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v11}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativeSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_5

    .line 648
    :cond_21
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v10}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativeSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    :goto_5
    if-nez v12, :cond_22

    .line 651
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v13}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPositivePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_6

    .line 653
    :cond_22
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v12}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPositivePrefixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    :goto_6
    if-nez v14, :cond_23

    .line 656
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v15}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPositiveSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_7

    .line 658
    :cond_23
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v14}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPositiveSuffixPattern(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 663
    :goto_7
    :try_start_0
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "groupingUsed"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 664
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 665
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setGroupingUsed(Z)V

    .line 666
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "parseIntegerOnly"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 667
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 668
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setParseIntegerOnly(Z)V

    .line 669
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "maximumIntegerDigits"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 670
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 671
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumIntegerDigits(I)V

    .line 672
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "minimumIntegerDigits"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 673
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 674
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumIntegerDigits(I)V

    .line 675
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "maximumFractionDigits"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 676
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 677
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 678
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "minimumFractionDigits"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 679
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 680
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    .line 681
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "currency"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 682
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 683
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/Currency;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 684
    const-class v0, Lcom/ibm/icu/text/NumberFormat;

    const-string v2, "parseStrict"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    .line 685
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 686
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setParseStrict(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    iget-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    if-nez v0, :cond_24

    .line 698
    invoke-static {}, Lcom/ibm/icu/text/DecimalFormat;->getDefaultSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;

    move-result-object v0

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 700
    :cond_24
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v0, v1, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    :goto_8
    return-void

    :catch_0
    move-exception v0

    .line 694
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 692
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    .line 690
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    .line 688
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 540
    :cond_25
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot deserialize newer com.ibm.icu.text.DecimalFormat (v"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method private safeConvertBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/Number;
    .locals 2

    .line 2598
    :try_start_0
    new-instance v0, Lcom/ibm/icu/math/BigDecimal;

    invoke-direct {v0, p1}, Lcom/ibm/icu/math/BigDecimal;-><init>(Ljava/math/BigDecimal;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    .line 2600
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2601
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 2602
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    if-gez v0, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 2603
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 2604
    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p1

    if-gez p1, :cond_2

    const-wide/high16 v0, -0x8000000000000000L

    .line 2605
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2
    const-wide/16 v0, 0x0

    .line 2607
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 521
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    const/4 v0, 0x0

    .line 523
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 525
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized applyLocalizedPattern(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ibm/icu/impl/number/PatternStringUtils;->convertLocalized(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Ljava/lang/String;

    move-result-object p1

    .line 496
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyPattern(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 471
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/DecimalFormat;->setPropertiesFromPattern(Ljava/lang/String;I)V

    .line 474
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPositivePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 475
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 476
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPositiveSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 477
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativeSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 478
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 479
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized areSignificantDigitsUsed()Z
    .locals 2

    monitor-enter p0

    .line 1565
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1566
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1565
    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 506
    invoke-super {p0}, Lcom/ibm/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormat;

    .line 507
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object v1, v0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 508
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->clone()Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 509
    new-instance v1, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iput-object v1, v0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 510
    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V

    return-object v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2442
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    .line 2443
    monitor-exit p0

    return v1

    .line 2444
    :cond_1
    :try_start_0
    instance-of v2, p1, Lcom/ibm/icu/text/DecimalFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    monitor-exit p0

    return v0

    .line 2445
    :cond_2
    :try_start_1
    check-cast p1, Lcom/ibm/icu/text/DecimalFormat;

    .line 2446
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    iget-object v3, p1, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object p1, p1, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v2, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 716
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(D)V

    .line 717
    new-instance p1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 718
    iget-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    .line 719
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    invoke-static {v0, p1, p4, p2}, Lcom/ibm/icu/text/DecimalFormat;->fieldPositionHelper(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 720
    invoke-static {p1, p3}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p3
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    .line 731
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(J)V

    .line 732
    new-instance p1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 733
    iget-object p2, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {p2, v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    .line 734
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    invoke-static {v0, p1, p4, p2}, Lcom/ibm/icu/text/DecimalFormat;->fieldPositionHelper(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 735
    invoke-static {p1, p3}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p3
.end method

.method public format(Lcom/ibm/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 777
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 778
    new-instance p1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 779
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v1, v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    .line 780
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-static {v0, p1, p3, v1}, Lcom/ibm/icu/text/DecimalFormat;->fieldPositionHelper(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 781
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p2
.end method

.method public format(Lcom/ibm/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4

    .line 808
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 809
    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 811
    new-instance v1, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 812
    new-instance v2, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {v2}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 813
    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->symbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    .line 814
    invoke-virtual {p1}, Lcom/ibm/icu/util/CurrencyAmount;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->unit(Lcom/ibm/icu/util/MeasureUnit;)Lcom/ibm/icu/number/NumberFormatterSettings;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/number/LocalizedNumberFormatter;

    .line 815
    invoke-virtual {p1, v1, v2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    .line 816
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    invoke-static {v1, v2, p3, p1}, Lcom/ibm/icu/text/DecimalFormat;->fieldPositionHelper(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 817
    invoke-static {v2, p2}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p2
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 762
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/math/BigDecimal;)V

    .line 763
    new-instance p1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 764
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v1, v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    .line 765
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-static {v0, p1, p3, v1}, Lcom/ibm/icu/text/DecimalFormat;->fieldPositionHelper(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 766
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p2
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 746
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/math/BigInteger;)V

    .line 747
    new-instance p1, Lcom/ibm/icu/impl/FormattedStringBuilder;

    invoke-direct {p1}, Lcom/ibm/icu/impl/FormattedStringBuilder;-><init>()V

    .line 748
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v1, v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->formatImpl(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;)Lcom/ibm/icu/impl/number/MicroProps;

    .line 749
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-static {v0, p1, p3, v1}, Lcom/ibm/icu/text/DecimalFormat;->fieldPositionHelper(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 750
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    return-object p2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 1

    .line 792
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 793
    check-cast p1, Ljava/lang/Number;

    .line 794
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Lcom/ibm/icu/number/FormattedNumber;

    move-result-object p1

    .line 795
    invoke-virtual {p1}, Lcom/ibm/icu/number/FormattedNumber;->toCharacterIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object p1

    return-object p1

    .line 792
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public declared-synchronized getCurrency()Lcom/ibm/icu/util/Currency;
    .locals 1

    monitor-enter p0

    .line 2078
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getCurrencyParser()Lcom/ibm/icu/impl/number/parse/NumberParserImpl;
    .locals 3

    .line 2583
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyParser:Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    if-nez v0, :cond_0

    .line 2584
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->createParserFromProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyParser:Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    .line 2586
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyParser:Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    return-object v0
.end method

.method public declared-synchronized getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;
    .locals 1

    monitor-enter p0

    .line 2159
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrencyUsage()Lcom/ibm/icu/util/Currency$CurrencyUsage;
    .locals 1

    monitor-enter p0

    .line 2116
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Lcom/ibm/icu/util/Currency$CurrencyUsage;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2118
    sget-object v0, Lcom/ibm/icu/util/Currency$CurrencyUsage;->STANDARD:Lcom/ibm/icu/util/Currency$CurrencyUsage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2120
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDecimalFormatSymbols()Lcom/ibm/icu/text/DecimalFormatSymbols;
    .locals 1

    monitor-enter p0

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/DecimalFormatSymbols;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFixedDecimal(D)Lcom/ibm/icu/text/PluralRules$IFixedDecimal;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2548
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->format(D)Lcom/ibm/icu/number/FormattedNumber;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/number/FormattedNumber;->getFixedDecimal()Lcom/ibm/icu/text/PluralRules$IFixedDecimal;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getFormatWidth()I
    .locals 1

    monitor-enter p0

    .line 1690
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getFormatWidth()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGroupingSize()I
    .locals 1

    monitor-enter p0

    .line 1916
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 1917
    monitor-exit p0

    return v0

    .line 1919
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getGroupingSize()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMathContext()Ljava/math/MathContext;
    .locals 1

    monitor-enter p0

    .line 1305
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMathContextICU()Lcom/ibm/icu/math/MathContext;
    .locals 5

    monitor-enter p0

    .line 1346
    :try_start_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    .line 1347
    new-instance v1, Lcom/ibm/icu/math/MathContext;

    .line 1348
    invoke-virtual {v0}, Ljava/math/MathContext;->getPrecision()I

    move-result v2

    iget v3, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    const/4 v4, 0x0

    .line 1351
    invoke-virtual {v0}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/ibm/icu/math/MathContext;-><init>(IIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumFractionDigits()I
    .locals 1

    monitor-enter p0

    .line 1522
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumIntegerDigits()I
    .locals 1

    monitor-enter p0

    .line 1433
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaximumSignificantDigits()I
    .locals 1

    monitor-enter p0

    .line 1648
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumExponentDigits()B
    .locals 1

    monitor-enter p0

    .line 1827
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-byte v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFractionDigits()I
    .locals 1

    monitor-enter p0

    .line 1474
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumGroupingDigits()I
    .locals 1

    monitor-enter p0

    .line 1987
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumGroupingDigits()I

    move-result v0

    if-lez v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumGroupingDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 1990
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumIntegerDigits()I
    .locals 1

    monitor-enter p0

    .line 1390
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumSignificantDigits()I
    .locals 1

    monitor-enter p0

    .line 1612
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMultiplier()I
    .locals 4

    monitor-enter p0

    .line 1130
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 1133
    :try_start_1
    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    double-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNegativePrefix()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 983
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->getAffixImpl(ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNegativeSuffix()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1057
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->getAffixImpl(ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPadCharacter()C
    .locals 2

    monitor-enter p0

    .line 1726
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPadString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, " "

    .line 1728
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1730
    :cond_0
    :try_start_1
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPadPosition()I
    .locals 1

    monitor-enter p0

    .line 1759
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPadPosition()Lcom/ibm/icu/impl/number/Padder$PadPosition;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1760
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/Padder$PadPosition;->toOld()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParseMaxDigits()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x3e8

    return v0
.end method

.method getParser()Lcom/ibm/icu/impl/number/parse/NumberParserImpl;
    .locals 3

    .line 2576
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->parser:Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    if-nez v0, :cond_0

    .line 2577
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->createParserFromProperties(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->parser:Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    .line 2579
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->parser:Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    return-object v0
.end method

.method public declared-synchronized getPositivePrefix()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 946
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->getAffixImpl(ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPositiveSuffix()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1020
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/ibm/icu/number/LocalizedNumberFormatter;->getAffixImpl(ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRoundingIncrement()Ljava/math/BigDecimal;
    .locals 1

    monitor-enter p0

    .line 1188
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRoundingMode()I
    .locals 1

    monitor-enter p0

    .line 1265
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1266
    :cond_0
    invoke-virtual {v0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecondaryGroupingSize()I
    .locals 1

    monitor-enter p0

    .line 1951
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getSecondaryGroupingSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 1953
    monitor-exit p0

    return v0

    .line 1955
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    .line 2456
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->hashCode()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDecimalPatternMatchRequired()Z
    .locals 1

    monitor-enter p0

    .line 2296
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getDecimalPatternMatchRequired()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDecimalSeparatorAlwaysShown()Z
    .locals 1

    monitor-enter p0

    .line 2048
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getDecimalSeparatorAlwaysShown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isExponentSignAlwaysShown()Z
    .locals 1

    monitor-enter p0

    .line 1855
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getExponentSignAlwaysShown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isGroupingUsed()Z
    .locals 1

    monitor-enter p0

    .line 1885
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getGroupingUsed()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParseBigDecimal()Z
    .locals 1

    monitor-enter p0

    .line 2186
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getParseToBigDecimal()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParseCaseSensitive()Z
    .locals 1

    monitor-enter p0

    .line 2372
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getParseCaseSensitive()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParseIntegerOnly()Z
    .locals 1

    monitor-enter p0

    .line 2268
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getParseIntegerOnly()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParseNoExponent()Z
    .locals 1

    monitor-enter p0

    .line 2347
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getParseNoExponent()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isParseStrict()Z
    .locals 2

    monitor-enter p0

    .line 2232
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getParseMode()Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isScientificNotation()Z
    .locals 2

    monitor-enter p0

    .line 1793
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumExponentDigits()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSignAlwaysShown()Z
    .locals 1

    monitor-enter p0

    .line 1090
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getSignAlwaysShown()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    .line 832
    new-instance p2, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 834
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ltz v0, :cond_4

    .line 837
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    return-object v2

    .line 842
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 845
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 846
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getParser()Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    move-result-object v3

    const/4 v4, 0x1

    .line 847
    invoke-virtual {v3, p1, v1, v4, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parse(Ljava/lang/String;IZLcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    .line 848
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->success()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 849
    iget p1, v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 851
    invoke-virtual {v3}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->getParseFlags()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->getNumber(I)Ljava/lang/Number;

    move-result-object p1

    .line 853
    instance-of p2, p1, Ljava/math/BigDecimal;

    if-eqz p2, :cond_2

    .line 854
    check-cast p1, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->safeConvertBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/Number;

    move-result-object p1

    :cond_2
    return-object p1

    .line 858
    :cond_3
    iget p1, v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    add-int/2addr v1, p1

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v2

    .line 835
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot start parsing at a negative offset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 829
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseCurrency(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Lcom/ibm/icu/util/CurrencyAmount;
    .locals 5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    .line 874
    new-instance p2, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 876
    :cond_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ltz v0, :cond_4

    .line 879
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    return-object v2

    .line 884
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;-><init>()V

    .line 885
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 886
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->getCurrencyParser()Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    move-result-object v3

    .line 887
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v1, v4, v0}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->parse(Ljava/lang/String;IZLcom/ibm/icu/impl/number/parse/ParsedNumber;)V

    .line 888
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->success()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 889
    iget p1, v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    invoke-virtual {p2, p1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 891
    invoke-virtual {v3}, Lcom/ibm/icu/impl/number/parse/NumberParserImpl;->getParseFlags()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->getNumber(I)Ljava/lang/Number;

    move-result-object p1

    .line 893
    instance-of p2, p1, Ljava/math/BigDecimal;

    if-eqz p2, :cond_2

    .line 894
    check-cast p1, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->safeConvertBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/Number;

    move-result-object p1

    .line 896
    :cond_2
    iget-object p2, v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    invoke-static {p2}, Lcom/ibm/icu/util/Currency;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/Currency;

    move-result-object p2

    .line 897
    new-instance v0, Lcom/ibm/icu/util/CurrencyAmount;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Lcom/ibm/icu/util/Currency;)V

    return-object v0

    .line 899
    :cond_3
    iget p1, v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    add-int/2addr v1, p1

    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v2

    .line 877
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot start parsing at a negative offset"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 871
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Text cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method refreshFormatter()V
    .locals 4

    .line 2553
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    if-nez v0, :cond_0

    return-void

    .line 2558
    :cond_0
    sget-object v0, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2561
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    sget-object v1, Lcom/ibm/icu/util/ULocale;->ACTUAL_LOCALE:Lcom/ibm/icu/util/ULocale$Type;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getLocale(Lcom/ibm/icu/util/ULocale$Type;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 2565
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DecimalFormatSymbols;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 2568
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    iget-object v2, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    iget-object v3, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-static {v1, v2, v3}, Lcom/ibm/icu/number/NumberFormatter;->fromDecimalFormat(Lcom/ibm/icu/impl/number/DecimalFormatProperties;Lcom/ibm/icu/text/DecimalFormatSymbols;Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/number/UnlocalizedNumberFormatter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ibm/icu/number/UnlocalizedNumberFormatter;->locale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    const/4 v0, 0x0

    .line 2571
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->parser:Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    .line 2572
    iput-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->currencyParser:Lcom/ibm/icu/impl/number/parse/NumberParserImpl;

    return-void
.end method

.method public declared-synchronized setCurrency(Lcom/ibm/icu/util/Currency;)V
    .locals 1

    monitor-enter p0

    .line 2099
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setCurrency(Lcom/ibm/icu/util/Currency;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    if-eqz p1, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->setCurrency(Lcom/ibm/icu/util/Currency;)V

    .line 2103
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)V
    .locals 1

    monitor-enter p0

    .line 2174
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setCurrencyPluralInfo(Lcom/ibm/icu/text/CurrencyPluralInfo;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2175
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2176
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCurrencyUsage(Lcom/ibm/icu/util/Currency$CurrencyUsage;)V
    .locals 1

    monitor-enter p0

    .line 2146
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setCurrencyUsage(Lcom/ibm/icu/util/Currency$CurrencyUsage;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2147
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2148
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDecimalFormatSymbols(Lcom/ibm/icu/text/DecimalFormatSymbols;)V
    .locals 0

    monitor-enter p0

    .line 928
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/DecimalFormatSymbols;

    iput-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    .line 929
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDecimalPatternMatchRequired(Z)V
    .locals 1

    monitor-enter p0

    .line 2335
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setDecimalPatternMatchRequired(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2336
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2337
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDecimalSeparatorAlwaysShown(Z)V
    .locals 1

    monitor-enter p0

    .line 2064
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setDecimalSeparatorAlwaysShown(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2065
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2066
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setExponentSignAlwaysShown(Z)V
    .locals 1

    monitor-enter p0

    .line 1872
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setExponentSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1873
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1874
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFormatWidth(I)V
    .locals 1

    monitor-enter p0

    .line 1714
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setFormatWidth(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1715
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1716
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGroupingSize(I)V
    .locals 1

    monitor-enter p0

    .line 1939
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setGroupingSize(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1940
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1941
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setGroupingUsed(Z)V
    .locals 1

    monitor-enter p0

    .line 1904
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setGroupingUsed(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1905
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1906
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMathContext(Ljava/math/MathContext;)V
    .locals 1

    monitor-enter p0

    .line 1330
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMathContext(Ljava/math/MathContext;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1331
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMathContextICU(Lcom/ibm/icu/math/MathContext;)V
    .locals 2

    monitor-enter p0

    .line 1366
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/math/MathContext;->getForm()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/DecimalFormat;->icuMathContextForm:I

    .line 1368
    invoke-virtual {p1}, Lcom/ibm/icu/math/MathContext;->getLostDigits()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    new-instance v0, Ljava/math/MathContext;

    invoke-virtual {p1}, Lcom/ibm/icu/math/MathContext;->getDigits()I

    move-result p1

    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-direct {v0, p1, v1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    goto :goto_0

    .line 1374
    :cond_0
    new-instance v0, Ljava/math/MathContext;

    .line 1376
    invoke-virtual {p1}, Lcom/ibm/icu/math/MathContext;->getDigits()I

    move-result v1

    invoke-virtual {p1}, Lcom/ibm/icu/math/MathContext;->getRoundingMode()I

    move-result p1

    invoke-static {p1}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1378
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/DecimalFormat;->setMathContext(Ljava/math/MathContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaximumFractionDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1549
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-le v0, p1, :cond_0

    .line 1551
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1553
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1554
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1555
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaximumIntegerDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1457
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumIntegerDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-le v0, p1, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1462
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaximumSignificantDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1674
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-le v0, p1, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1679
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1680
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumExponentDigits(B)V
    .locals 1

    monitor-enter p0

    .line 1843
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1844
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumFractionDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1505
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1509
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1510
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1511
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumGroupingDigits(I)V
    .locals 1

    monitor-enter p0

    .line 2013
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumGroupingDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2014
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2015
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumIntegerDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1416
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumIntegerDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumIntegerDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1421
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1422
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMinimumSignificantDigits(I)V
    .locals 1

    monitor-enter p0

    .line 1632
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v0

    if-ltz v0, :cond_0

    if-ge v0, p1, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1637
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1638
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMultiplier(I)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 1163
    :try_start_0
    div-int/lit8 v4, v1, 0xa

    mul-int/lit8 v5, v4, 0xa

    if-eq v5, v1, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    :goto_1
    if-eq v2, v3, :cond_2

    .line 1171
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1172
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMultiplier(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_2

    .line 1174
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMagnitudeMultiplier(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1175
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMultiplier(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1177
    :goto_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1178
    monitor-exit p0

    return-void

    .line 1155
    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Multiplier must be nonzero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized setNegativePrefix(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1002
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1003
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1000
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setNegativeSuffix(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1076
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setNegativeSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1077
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1074
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPadCharacter(C)V
    .locals 1

    monitor-enter p0

    .line 1747
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPadString(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1748
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPadPosition(I)V
    .locals 1

    monitor-enter p0

    .line 1781
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1}, Lcom/ibm/icu/impl/number/Padder$PadPosition;->fromOld(I)Lcom/ibm/icu/impl/number/Padder$PadPosition;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPadPosition(Lcom/ibm/icu/impl/number/Padder$PadPosition;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1782
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1783
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseBigDecimal(Z)V
    .locals 1

    monitor-enter p0

    .line 2200
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setParseToBigDecimal(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2201
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2202
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseCaseSensitive(Z)V
    .locals 1

    monitor-enter p0

    .line 2386
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setParseCaseSensitive(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2387
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2388
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseIntegerOnly(Z)V
    .locals 1

    monitor-enter p0

    .line 2284
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setParseIntegerOnly(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2285
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2286
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setParseMaxDigits(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public declared-synchronized setParseNoExponent(Z)V
    .locals 1

    monitor-enter p0

    .line 2360
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setParseNoExponent(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2361
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2362
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseStrict(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2243
    :try_start_0
    sget-object p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->STRICT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;->LENIENT:Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;

    .line 2244
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setParseMode(Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2245
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2246
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setParseStrictMode(Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2255
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setParseMode(Lcom/ibm/icu/impl/number/DecimalFormatProperties$ParseMode;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2256
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPositivePrefix(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 965
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPositivePrefix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 966
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 963
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPositiveSuffix(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1039
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setPositiveSuffix(Ljava/lang/String;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1040
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1037
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProperties(Lcom/ibm/icu/text/DecimalFormat$PropertySetter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 2649
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-interface {p1, v0}, Lcom/ibm/icu/text/DecimalFormat$PropertySetter;->set(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)V

    .line 2650
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2651
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setPropertiesFromPattern(Ljava/lang/String;I)V
    .locals 1

    .line 2625
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2627
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1, v0, p2}, Lcom/ibm/icu/impl/number/PatternStringParser;->parseToExistingProperties(Ljava/lang/String;Lcom/ibm/icu/impl/number/DecimalFormatProperties;I)V

    return-void
.end method

.method public declared-synchronized setRoundingIncrement(D)V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    .line 1249
    :try_start_0
    move-object p2, p1

    check-cast p2, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 1251
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    .line 1252
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoundingIncrement(Lcom/ibm/icu/math/BigDecimal;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1234
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/ibm/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    .line 1235
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DecimalFormat;->setRoundingIncrement(Ljava/math/BigDecimal;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoundingIncrement(Ljava/math/BigDecimal;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1215
    :try_start_0
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    monitor-exit p0

    return-void

    .line 1220
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1221
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1222
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRoundingMode(I)V
    .locals 1

    monitor-enter p0

    .line 1293
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-static {p1}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setRoundingMode(Ljava/math/RoundingMode;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1294
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setScientificNotation(Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1812
    :try_start_0
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    goto :goto_0

    .line 1814
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumExponentDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1816
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSecondaryGroupingSize(I)V
    .locals 1

    monitor-enter p0

    .line 1975
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setSecondaryGroupingSize(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1976
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1977
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignAlwaysShown(Z)V
    .locals 1

    monitor-enter p0

    .line 1118
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setSignAlwaysShown(Z)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1119
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSignificantDigitsUsed(Z)V
    .locals 3

    monitor-enter p0

    .line 1585
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumSignificantDigits()I

    move-result v0

    .line 1586
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumSignificantDigits()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    if-ne v0, v2, :cond_0

    if-eq v1, v2, :cond_2

    .line 1590
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    if-ne v1, v2, :cond_2

    .line 1594
    monitor-exit p0

    return-void

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    if-eqz p1, :cond_4

    const/4 v2, 0x6

    .line 1599
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1600
    iget-object p1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {p1, v2}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumSignificantDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 1601
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->refreshFormatter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1602
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized toLocalizedPattern()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 2525
    :try_start_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 2526
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/ibm/icu/impl/number/PatternStringUtils;->convertLocalized(Ljava/lang/String;Lcom/ibm/icu/text/DecimalFormatSymbols;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toNumberFormatter()Lcom/ibm/icu/number/LocalizedNumberFormatter;
    .locals 1

    .line 2539
    iget-object v0, p0, Lcom/ibm/icu/text/DecimalFormat;->formatter:Lcom/ibm/icu/number/LocalizedNumberFormatter;

    return-object v0
.end method

.method public declared-synchronized toPattern()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 2500
    :try_start_0
    new-instance v0, Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;-><init>()V

    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->copyFrom(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    move-result-object v0

    .line 2501
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrency()Lcom/ibm/icu/util/Currency;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2502
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyPluralInfo()Lcom/ibm/icu/text/CurrencyPluralInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2503
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getCurrencyUsage()Lcom/ibm/icu/util/Currency$CurrencyUsage;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2504
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPositivePrefixPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2505
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getPositiveSuffixPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2506
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getNegativePrefixPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2507
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getNegativeSuffixPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/number/AffixUtils;->hasCurrencySymbols(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    .line 2509
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMinimumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMinimumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2510
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getMaximumFractionDigits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setMaximumFractionDigits(I)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2511
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->exportedProperties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->getRoundingIncrement()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->setRoundingIncrement(Ljava/math/BigDecimal;)Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    .line 2513
    :cond_2
    invoke-static {v0}, Lcom/ibm/icu/impl/number/PatternStringUtils;->propertiesToPatternString(Lcom/ibm/icu/impl/number/DecimalFormatProperties;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2469
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 2470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2471
    invoke-virtual {p0}, Lcom/ibm/icu/text/DecimalFormat;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " { symbols@"

    .line 2472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2473
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DecimalFormatSymbols;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2474
    monitor-enter p0

    .line 2475
    :try_start_0
    iget-object v1, p0, Lcom/ibm/icu/text/DecimalFormat;->properties:Lcom/ibm/icu/impl/number/DecimalFormatProperties;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/impl/number/DecimalFormatProperties;->toStringBare(Ljava/lang/StringBuilder;)V

    .line 2476
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, " }"

    .line 2477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2476
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
