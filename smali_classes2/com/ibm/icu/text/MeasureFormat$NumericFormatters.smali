.class Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;
.super Ljava/lang/Object;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/MeasureFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumericFormatters"
.end annotation


# instance fields
.field private hourMinute:Ljava/lang/String;

.field private hourMinuteSecond:Ljava/lang/String;

.field private minuteSecond:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinute:Ljava/lang/String;

    .line 673
    iput-object p2, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->minuteSecond:Ljava/lang/String;

    .line 674
    iput-object p3, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinuteSecond:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHourMinute()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinute:Ljava/lang/String;

    return-object v0
.end method

.method public getHourMinuteSecond()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->hourMinuteSecond:Ljava/lang/String;

    return-object v0
.end method

.method public getMinuteSecond()Ljava/lang/String;
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/ibm/icu/text/MeasureFormat$NumericFormatters;->minuteSecond:Ljava/lang/String;

    return-object v0
.end method
