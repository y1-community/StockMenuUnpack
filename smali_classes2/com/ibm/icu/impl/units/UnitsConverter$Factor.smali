.class Lcom/ibm/icu/impl/units/UnitsConverter$Factor;
.super Ljava/lang/Object;
.source "UnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/UnitsConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private exponentFtToM:I

.field private exponentG:I

.field private exponentGalImpToM3:I

.field private exponentGlucoseMolarMass:I

.field private exponentGravity:I

.field private exponentItemPerMole:I

.field private exponentLbToKg:I

.field private exponentPi:I

.field private factorDen:Ljava/math/BigDecimal;

.field private factorNum:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    const-class v0, Lcom/ibm/icu/impl/units/UnitsConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 179
    iput v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    .line 181
    iput v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    .line 183
    iput v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    .line 185
    iput v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    .line 187
    iput v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    .line 189
    iput v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    .line 191
    iput v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    const-wide/16 v0, 0x1

    .line 197
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    iput-object v2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 198
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    return-void
.end method

.method private addEntity(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "ft_to_m"

    .line 382
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    goto/16 :goto_0

    :cond_0
    const-string v0, "ft2_to_m2"

    .line 384
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    goto/16 :goto_0

    :cond_1
    const-string v0, "ft3_to_m3"

    .line 386
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    goto/16 :goto_0

    :cond_2
    const-string v0, "in3_to_m3"

    .line 388
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 389
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 390
    iget-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_3
    const-string v0, "gal_to_m3"

    .line 391
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 392
    iget-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    const-wide/16 v0, 0xe7

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 393
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 394
    iget-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    const-wide/16 v0, 0x6c0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    goto/16 :goto_0

    :cond_4
    const-string v0, "gal_imp_to_m3"

    .line 395
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 396
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    goto :goto_0

    :cond_5
    const-string v0, "G"

    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 398
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    goto :goto_0

    :cond_6
    const-string v0, "gravity"

    .line 399
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 400
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    goto :goto_0

    :cond_7
    const-string v0, "lb_to_kg"

    .line 401
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 402
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    goto :goto_0

    :cond_8
    const-string v0, "glucose_molar_mass"

    .line 403
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 404
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    goto :goto_0

    :cond_9
    const-string v0, "item_per_mole"

    .line 405
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 406
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    goto :goto_0

    :cond_a
    const-string v0, "PI"

    .line 407
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 408
    iget p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    goto :goto_0

    .line 410
    :cond_b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object p1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v0, p2, p1}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 411
    iget-object p2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    :goto_0
    return-void
.end method

.method private addPoweredEntity(Ljava/lang/String;)V
    .locals 3

    const-string v0, "^"

    .line 374
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 377
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :cond_0
    const/4 v0, 0x0

    .line 378
    aget-object p1, p1, v0

    invoke-direct {p0, p1, v2}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->addEntity(Ljava/lang/String;I)V

    return-void
.end method

.method private multiply(Ljava/math/BigDecimal;I)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p1

    if-lez p2, :cond_1

    .line 282
    iget-object p2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    goto :goto_0

    .line 284
    :cond_1
    iget-object p2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    invoke-virtual {p2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    :goto_0
    return-void
.end method

.method public static processFactor(Ljava/lang/String;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;
    .locals 3

    const-string v0, "\\s+"

    const-string v1, ""

    .line 205
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 210
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 211
    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->processFactorWithoutDivision(Ljava/lang/String;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object p0

    return-object p0

    .line 214
    :cond_0
    aget-object v0, p0, v1

    invoke-static {v0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->processFactorWithoutDivision(Ljava/lang/String;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    .line 215
    aget-object p0, p0, v2

    invoke-static {p0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->processFactorWithoutDivision(Ljava/lang/String;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object p0

    .line 216
    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->divide(Lcom/ibm/icu/impl/units/UnitsConverter$Factor;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object p0

    return-object p0
.end method

.method private static processFactorWithoutDivision(Ljava/lang/String;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;
    .locals 4

    .line 220
    new-instance v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;-><init>()V

    const-string v1, "*"

    .line 222
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 223
    invoke-direct {v0, v3}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->addPoweredEntity(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public applyPrefix(Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;
    .locals 4

    .line 290
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->copy()Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    .line 291
    sget-object v1, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ONE:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    if-ne p1, v1, :cond_0

    return-object v0

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getBase()I

    move-result v1

    .line 296
    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result p1

    int-to-long v1, v1

    .line 298
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    if-gez p1, :cond_1

    .line 301
    iget-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    return-object v0

    .line 305
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    return-object v0
.end method

.method protected copy()Lcom/ibm/icu/impl/units/UnitsConverter$Factor;
    .locals 2

    .line 233
    new-instance v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 235
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 237
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 238
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    .line 239
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    .line 240
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    .line 241
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    .line 242
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    .line 243
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    .line 244
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    return-object v0
.end method

.method public divide(Lcom/ibm/icu/impl/units/UnitsConverter$Factor;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;
    .locals 3

    .line 333
    new-instance v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;-><init>()V

    .line 334
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    iget-object v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 335
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    iget-object v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 337
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 338
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    .line 339
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    .line 340
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    .line 341
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    .line 342
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    .line 343
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    .line 345
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    iget p1, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    return-object v0
.end method

.method public getConversionRate()Ljava/math/BigDecimal;
    .locals 4

    .line 256
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->copy()Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "0.3048"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 265
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "411557987.0"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigDecimal;

    const-string v3, "131002976.0"

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    iget v2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 266
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "9.80665"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 267
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "6.67408E-11"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 268
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "0.00454609"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 269
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "0.45359237"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 270
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "180.1557"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 271
    new-instance v1, Ljava/math/BigDecimal;

    const-string v2, "6.02214076E+23"

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->multiply(Ljava/math/BigDecimal;I)V

    .line 273
    iget-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    iget-object v0, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Lcom/ibm/icu/impl/units/UnitsConverter$Factor;)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;
    .locals 3

    .line 351
    new-instance v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;-><init>()V

    .line 352
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    iget-object v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 353
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    iget-object v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 355
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 356
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    .line 357
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    .line 358
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    .line 359
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    .line 360
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    .line 361
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    iget v2, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    .line 363
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    iget p1, p1, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    return-object v0
.end method

.method public power(I)Lcom/ibm/icu/impl/units/UnitsConverter$Factor;
    .locals 3

    .line 310
    new-instance v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-lez p1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 314
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    goto :goto_0

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    mul-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    .line 317
    iget-object v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorNum:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v1

    iput-object v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->factorDen:Ljava/math/BigDecimal;

    .line 320
    :goto_0
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    mul-int v1, v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentFtToM:I

    .line 321
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    mul-int v1, v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentPi:I

    .line 322
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    mul-int v1, v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGravity:I

    .line 323
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    mul-int v1, v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentG:I

    .line 324
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    mul-int v1, v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGalImpToM3:I

    .line 325
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    mul-int v1, v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentLbToKg:I

    .line 326
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    mul-int v1, v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentGlucoseMolarMass:I

    .line 327
    iget v1, p0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    mul-int v1, v1, p1

    iput v1, v0, Lcom/ibm/icu/impl/units/UnitsConverter$Factor;->exponentItemPerMole:I

    return-object v0
.end method
