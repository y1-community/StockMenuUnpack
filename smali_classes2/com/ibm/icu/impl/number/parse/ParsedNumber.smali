.class public Lcom/ibm/icu/impl/number/parse/ParsedNumber;
.super Ljava/lang/Object;
.source "ParsedNumber.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/ibm/icu/impl/number/parse/ParsedNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_FAIL:I = 0x100

.field public static final FLAG_HAS_DECIMAL_SEPARATOR:I = 0x20

.field public static final FLAG_HAS_EXPONENT:I = 0x8

.field public static final FLAG_INFINITY:I = 0x80

.field public static final FLAG_NAN:I = 0x40

.field public static final FLAG_NEGATIVE:I = 0x1

.field public static final FLAG_PERCENT:I = 0x2

.field public static final FLAG_PERMILLE:I = 0x4


# instance fields
.field public charEnd:I

.field public currencyCode:Ljava/lang/String;

.field public flags:I

.field public prefix:Ljava/lang/String;

.field public quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

.field public suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber$1;

    invoke-direct {v0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber$1;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    const/4 v1, 0x0

    .line 77
    iput v1, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    .line 78
    iput v1, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 79
    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public copyFrom(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)V
    .locals 1

    .line 85
    iget-object v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->createCopy()Lcom/ibm/icu/impl/number/DecimalQuantity;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    :goto_0
    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 87
    iget v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    iput v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    .line 88
    iget v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    iput v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 89
    iget-object v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    .line 90
    iget-object v0, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    .line 91
    iget-object p1, p1, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public getNumber()Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, v0}, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->getNumber(I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getNumber(I)Ljava/lang/Number;
    .locals 6

    .line 139
    iget v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    and-int/lit16 v5, p1, 0x1000

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 146
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v4, :cond_6

    and-int/lit8 p1, v0, 0x1

    if-eqz p1, :cond_5

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 150
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_5
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    const-wide/high16 v0, -0x8000000000000000L

    .line 157
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 160
    :cond_7
    iget-object p1, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->fitsInLong()Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez v5, :cond_8

    .line 161
    iget-object p1, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1, v3}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->toLong(Z)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 163
    :cond_8
    iget-object p1, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method isBetterThan(Lcom/ibm/icu/impl/number/parse/ParsedNumber;)Z
    .locals 1

    .line 169
    sget-object v0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public postProcess()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;->negate()V

    :cond_0
    return-void
.end method

.method public seenNumber()Z
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->quantity:Lcom/ibm/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_1

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setCharsConsumed(Lcom/ibm/icu/impl/StringSegment;)V
    .locals 0

    .line 111
    invoke-virtual {p1}, Lcom/ibm/icu/impl/StringSegment;->getOffset()I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    return-void
.end method

.method public success()Z
    .locals 1

    .line 126
    iget v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->charEnd:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
