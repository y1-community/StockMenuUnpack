.class public Lcom/ibm/icu/impl/number/MicroProps;
.super Ljava/lang/Object;
.source "MicroProps.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# instance fields
.field public decimal:Lcom/ibm/icu/number/NumberFormatter$DecimalSeparatorDisplay;

.field private volatile exhausted:Z

.field public gender:Ljava/lang/String;

.field public grouping:Lcom/ibm/icu/impl/number/Grouper;

.field private final immutable:Z

.field public indexOfQuantity:I

.field public integerWidth:Lcom/ibm/icu/number/IntegerWidth;

.field public mixedMeasures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/Measure;",
            ">;"
        }
    .end annotation
.end field

.field public modInner:Lcom/ibm/icu/impl/number/Modifier;

.field public modMiddle:Lcom/ibm/icu/impl/number/Modifier;

.field public modOuter:Lcom/ibm/icu/impl/number/Modifier;

.field public nsName:Ljava/lang/String;

.field public outputUnit:Lcom/ibm/icu/util/MeasureUnit;

.field public padding:Lcom/ibm/icu/impl/number/Padder;

.field public rounder:Lcom/ibm/icu/number/Precision;

.field public sign:Lcom/ibm/icu/number/NumberFormatter$SignDisplay;

.field public symbols:Lcom/ibm/icu/text/DecimalFormatSymbols;

.field public useCurrency:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 65
    iput v0, p0, Lcom/ibm/icu/impl/number/MicroProps;->indexOfQuantity:I

    .line 75
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/MicroProps;->immutable:Z

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 107
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 1

    .line 93
    iget-boolean p1, p0, Lcom/ibm/icu/impl/number/MicroProps;->immutable:Z

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/MicroProps;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/number/MicroProps;

    return-object p1

    .line 95
    :cond_0
    iget-boolean p1, p0, Lcom/ibm/icu/impl/number/MicroProps;->exhausted:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/ibm/icu/impl/number/MicroProps;->exhausted:Z

    return-object p0

    .line 97
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Cannot re-use a mutable MicroProps in the quantity chain"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
