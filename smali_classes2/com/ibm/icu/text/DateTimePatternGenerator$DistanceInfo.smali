.class Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DistanceInfo"
.end annotation


# instance fields
.field extraFieldMask:I

.field missingFieldMask:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/DateTimePatternGenerator$1;)V
    .locals 0

    .line 2849
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;-><init>()V

    return-void
.end method


# virtual methods
.method addExtra(I)V
    .locals 2

    .line 2863
    iget v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    return-void
.end method

.method addMissing(I)V
    .locals 2

    .line 2860
    iget v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    return-void
.end method

.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 2853
    iput v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    iput v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    return-void
.end method

.method setTo(Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;)V
    .locals 1

    .line 2856
    iget v0, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    iput v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    .line 2857
    iget p1, p1, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    iput p1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "missingFieldMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->missingFieldMask:I

    invoke-static {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$2200(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extraFieldMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DistanceInfo;->extraFieldMask:I

    .line 2868
    invoke-static {v1}, Lcom/ibm/icu/text/DateTimePatternGenerator;->access$2200(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
