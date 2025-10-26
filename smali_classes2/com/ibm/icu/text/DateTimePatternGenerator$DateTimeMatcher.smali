.class Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTimeMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private addedDefaultDayPeriod:Z

.field private baseOriginal:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

.field private original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

.field private type:[I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 2657
    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    .line 2658
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    .line 2659
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;-><init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V

    iput-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/4 v0, 0x0

    .line 2660
    iput-boolean v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
    .locals 0

    .line 2655
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;
    .locals 0

    .line 2655
    iget-object p0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I
    .locals 0

    .line 2655
    iget-object p0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)I
    .locals 1

    .line 2833
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    iget-object p1, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->compareTo(Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2655
    check-cast p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->compareTo(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p1, :cond_0

    .line 2839
    instance-of v0, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    check-cast p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    iget-object p1, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    .line 2840
    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method extractFrom(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2800
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    .line 2802
    iget-object v3, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v3, v3, v1

    aput v3, v2, v1

    .line 2803
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    iget-object v3, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v2, v3, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->copyFieldFrom(Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;I)V

    goto :goto_1

    .line 2805
    :cond_0
    aput v0, v2, v1

    .line 2806
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v2, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->clearField(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fieldIsNumeric(I)Z
    .locals 1

    .line 2666
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method getBasePattern()Ljava/lang/String;
    .locals 2

    .line 2691
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    iget-boolean v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDistance(Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)I
    .locals 5

    .line 2813
    invoke-virtual {p3}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v1, v3, :cond_4

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v3, p2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 2815
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v3, v3, v1

    .line 2816
    :goto_1
    iget-object v4, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v4, v4, v1

    if-ne v3, v4, :cond_1

    goto :goto_2

    :cond_1
    if-nez v3, :cond_2

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    .line 2820
    invoke-virtual {p3, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->addExtra(I)V

    goto :goto_2

    :cond_2
    if-nez v4, :cond_3

    add-int/lit16 v2, v2, 0x1000

    .line 2823
    invoke-virtual {p3, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->addMissing(I)V

    goto :goto_2

    :cond_3
    sub-int/2addr v3, v4

    .line 2825
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method getFieldMask()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2792
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 2793
    aget v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 2845
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->hashCode()I

    move-result v0

    return v0
.end method

.method set(Ljava/lang/String;Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;Z)Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .locals 9

    .line 2696
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 2697
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->clear()V

    .line 2698
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->clear()V

    .line 2699
    iput-boolean v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    .line 2701
    invoke-virtual {p2, p1}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;

    .line 2702
    invoke-virtual {p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2703
    instance-of v5, v0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;

    if-nez v5, :cond_1

    goto :goto_0

    .line 2706
    :cond_1
    check-cast v0, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;

    .line 2707
    invoke-virtual {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2709
    invoke-static {v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;->access$2100(Lcom/ibm/icu/text/DateTimePatternGenerator$VariableField;)I

    move-result v0

    .line 2714
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$1500()[[I

    move-result-object v6

    aget-object v0, v6, v0

    .line 2715
    aget v6, v0, v4

    .line 2716
    iget-object v7, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v7, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2717
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v0, v6}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldChar(I)C

    move-result v0

    .line 2718
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez p3, :cond_0

    const/16 v3, 0x55

    const/16 v4, 0x72

    if-ne v0, v4, :cond_2

    if-eq v2, v3, :cond_0

    :cond_2
    if-ne v0, v3, :cond_3

    if-ne v2, v4, :cond_3

    goto :goto_0

    .line 2724
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conflicting fields:\t"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\t in "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2727
    :cond_4
    iget-object v7, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v7, v6, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ILjava/lang/String;)V

    .line 2728
    aget v7, v0, v1

    int-to-char v7, v7

    .line 2729
    aget v3, v0, v3

    const-string v8, "GEzvQ"

    .line 2730
    invoke-virtual {v8, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ltz v8, :cond_5

    goto :goto_1

    :cond_5
    move v4, v3

    .line 2731
    :goto_1
    iget-object v3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {v3, v6, v7, v4}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2732
    aget v0, v0, v2

    if-lez v0, :cond_6

    .line 2733
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 2734
    :cond_6
    iget-object v2, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aput v0, v2, v6

    goto/16 :goto_0

    .line 2745
    :cond_7
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    .line 2747
    :goto_2
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$1500()[[I

    move-result-object p3

    array-length p3, p3

    if-ge p1, p3, :cond_a

    .line 2748
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$1500()[[I

    move-result-object p3

    aget-object p3, p3, p1

    .line 2749
    aget v0, p3, v4

    if-ne v0, p2, :cond_9

    .line 2751
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    aget v0, p3, v1

    int-to-char v0, v0

    aget v5, p3, v3

    invoke-virtual {p1, p2, v0, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2752
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    aget v0, p3, v1

    int-to-char v0, v0

    aget v5, p3, v3

    invoke-virtual {p1, p2, v0, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2755
    aget p1, p3, v2

    .line 2756
    iget-object p3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    if-lez p1, :cond_8

    add-int/lit8 p1, p1, 0x1

    :cond_8
    aput p1, p3, p2

    goto :goto_3

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 2763
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result p1

    if-nez p1, :cond_e

    .line 2764
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldChar(I)C

    move-result p1

    const/16 p3, 0x68

    const/16 v0, 0xa

    if-eq p1, p3, :cond_c

    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {p1, p2}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->getFieldChar(I)C

    move-result p1

    const/16 p2, 0x4b

    if-ne p1, p2, :cond_b

    goto :goto_4

    .line 2780
    :cond_b
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result p1

    if-nez p1, :cond_e

    .line 2782
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->clearField(I)V

    .line 2783
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->clearField(I)V

    .line 2784
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aput v1, p1, v0

    goto :goto_6

    .line 2766
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->isFieldEmpty(I)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    .line 2768
    :goto_5
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$1500()[[I

    move-result-object p2

    array-length p2, p2

    if-ge p1, p2, :cond_e

    .line 2769
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$1500()[[I

    move-result-object p2

    aget-object p2, p2, p1

    .line 2770
    aget p3, p2, v4

    if-ne p3, v0, :cond_d

    .line 2772
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    aget p3, p2, v1

    int-to-char p3, p3

    aget v5, p2, v3

    invoke-virtual {p1, v0, p3, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2773
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    aget p3, p2, v1

    int-to-char p3, p3

    aget v1, p2, v3

    invoke-virtual {p1, v0, p3, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->populate(ICI)V

    .line 2774
    iget-object p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget p2, p2, v2

    aput p2, p1, v0

    .line 2775
    iput-boolean v4, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    goto :goto_6

    :cond_d
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-object p0
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 2

    .line 2684
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    iget-boolean v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->toCanonicalString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2674
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;

    iget-boolean v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DateTimeMatcher;->addedDefaultDayPeriod:Z

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/DateTimePatternGenerator$SkeletonFields;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
