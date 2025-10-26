.class public Lcom/ibm/icu/impl/units/SingleUnitImpl;
.super Ljava/lang/Object;
.source "SingleUnitImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private dimensionality:I

.field private index:I

.field private simpleUnitID:Ljava/lang/String;

.field private unitPrefix:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->index:I

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->simpleUnitID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->dimensionality:I

    .line 40
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->ONE:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    iput-object v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->unitPrefix:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    return-void
.end method


# virtual methods
.method public build()Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    .line 53
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v0, p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;-><init>(Lcom/ibm/icu/impl/units/SingleUnitImpl;)V

    .line 54
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    return-object v0
.end method

.method compareTo(Lcom/ibm/icu/impl/units/SingleUnitImpl;)I
    .locals 4

    .line 102
    iget v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->dimensionality:I

    const/4 v1, 0x1

    if-gez v0, :cond_0

    iget v2, p1, Lcom/ibm/icu/impl/units/SingleUnitImpl;->dimensionality:I

    if-lez v2, :cond_0

    return v1

    :cond_0
    const/4 v2, -0x1

    if-lez v0, :cond_1

    .line 106
    iget v0, p1, Lcom/ibm/icu/impl/units/SingleUnitImpl;->dimensionality:I

    if-gez v0, :cond_1

    return v2

    .line 110
    :cond_1
    iget v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->index:I

    invoke-static {v0}, Lcom/ibm/icu/impl/units/UnitsData;->getCategoryIndexOfSimpleUnit(I)I

    move-result v0

    .line 111
    iget v3, p1, Lcom/ibm/icu/impl/units/SingleUnitImpl;->index:I

    invoke-static {v3}, Lcom/ibm/icu/impl/units/UnitsData;->getCategoryIndexOfSimpleUnit(I)I

    move-result v3

    if-ge v0, v3, :cond_2

    return v2

    :cond_2
    if-le v0, v3, :cond_3

    return v1

    .line 119
    :cond_3
    iget v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->index:I

    iget v3, p1, Lcom/ibm/icu/impl/units/SingleUnitImpl;->index:I

    if-ge v0, v3, :cond_4

    return v2

    :cond_4
    if-le v0, v3, :cond_5

    return v1

    .line 128
    :cond_5
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getBase()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getBase()I

    move-result v3

    if-ge v0, v3, :cond_6

    return v1

    .line 131
    :cond_6
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getBase()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getBase()I

    move-result v3

    if-le v0, v3, :cond_7

    return v2

    .line 134
    :cond_7
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result v3

    if-ge v0, v3, :cond_8

    return v2

    .line 137
    :cond_8
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result v0

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getPower()I

    move-result p1

    if-le v0, p1, :cond_9

    return v1

    :cond_9
    const/4 p1, 0x0

    return p1
.end method

.method public copy()Lcom/ibm/icu/impl/units/SingleUnitImpl;
    .locals 2

    .line 43
    new-instance v0, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;-><init>()V

    .line 44
    iget v1, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->index:I

    iput v1, v0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->index:I

    .line 45
    iget v1, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->dimensionality:I

    iput v1, v0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->dimensionality:I

    .line 46
    iget-object v1, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->simpleUnitID:Ljava/lang/String;

    iput-object v1, v0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->simpleUnitID:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->unitPrefix:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    iput-object v1, v0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->unitPrefix:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    return-object v0
.end method

.method public getDimensionality()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->dimensionality:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->index:I

    return v0
.end method

.method public getNeutralIdentifier()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "square-"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    const-string v1, "cubic-"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/16 v2, 0xf

    if-gt v1, v2, :cond_3

    const-string v2, "pow"

    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unit Identifier Syntax Error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->unitPrefix:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    return-object v0
.end method

.method public getSimpleUnitID()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->simpleUnitID:Ljava/lang/String;

    return-object v0
.end method

.method isCompatibleWith(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Z
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->compareTo(Lcom/ibm/icu/impl/units/SingleUnitImpl;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setDimensionality(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->dimensionality:I

    return-void
.end method

.method public setPrefix(Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->unitPrefix:Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    return-void
.end method

.method public setSimpleUnit(I[Ljava/lang/String;)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->index:I

    .line 159
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/SingleUnitImpl;->simpleUnitID:Ljava/lang/String;

    return-void
.end method
