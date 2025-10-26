.class public Lcom/ibm/icu/impl/units/MeasureUnitImpl;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/units/MeasureUnitImpl$SingleUnitComparator;,
        Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;,
        Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;,
        Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;,
        Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;,
        Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;,
        Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;,
        Lcom/ibm/icu/impl/units/MeasureUnitImpl$CompoundPart;
    }
.end annotation


# instance fields
.field private complexity:Lcom/ibm/icu/util/MeasureUnit$Complexity;

.field private identifier:Ljava/lang/String;

.field private final singleUnits:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/impl/units/SingleUnitImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/ibm/icu/util/MeasureUnit$Complexity;->SINGLE:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    iput-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->complexity:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/units/SingleUnitImpl;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 43
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->appendSingleUnit(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static forCurrencyCode(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;
    .locals 1

    .line 61
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 62
    iput-object p0, v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public static forIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->parseForIdentifier(Ljava/lang/String;)Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appendSingleUnit(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Z
    .locals 5

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 139
    invoke-virtual {v3, p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->isCompatibleWith(Lcom/ibm/icu/impl/units/SingleUnitImpl;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    :cond_2
    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v2

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    return v1

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->copy()Lcom/ibm/icu/impl/units/SingleUnitImpl;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object p1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_4

    iget-object p1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->complexity:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit$Complexity;->SINGLE:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    if-ne p1, v1, :cond_4

    .line 159
    sget-object p1, Lcom/ibm/icu/util/MeasureUnit$Complexity;->COMPOUND:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->setComplexity(Lcom/ibm/icu/util/MeasureUnit$Complexity;)V

    :cond_4
    return v0
.end method

.method public applyDimensionality(I)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 118
    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v2

    mul-int v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public build()Lcom/ibm/icu/util/MeasureUnit;
    .locals 1

    .line 171
    invoke-static {p0}, Lcom/ibm/icu/util/MeasureUnit;->fromMeasureUnitImpl(Lcom/ibm/icu/impl/units/MeasureUnitImpl;)Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcom/ibm/icu/impl/units/MeasureUnitImpl;
    .locals 4

    .line 67
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 68
    iget-object v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->complexity:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    iput-object v1, v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->complexity:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    .line 69
    iget-object v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    iput-object v1, v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 71
    iget-object v3, v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->copy()Lcom/ibm/icu/impl/units/SingleUnitImpl;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public extractIndividualUnitsWithIndices()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/util/MeasureUnit$Complexity;->MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 101
    new-instance v4, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    add-int/lit8 v5, v3, 0x1

    new-instance v6, Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v6, v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;-><init>(Lcom/ibm/icu/impl/units/SingleUnitImpl;)V

    invoke-direct {v4, v3, v6}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;-><init>(ILcom/ibm/icu/impl/units/MeasureUnitImpl;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_0

    :cond_0
    return-object v0

    .line 107
    :cond_1
    new-instance v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->copy()Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;-><init>(ILcom/ibm/icu/impl/units/MeasureUnitImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->complexity:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleUnitImpl()Lcom/ibm/icu/impl/units/SingleUnitImpl;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    invoke-direct {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;-><init>()V

    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->copy()Lcom/ibm/icu/impl/units/SingleUnitImpl;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSingleUnits()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/ibm/icu/impl/units/SingleUnitImpl;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    return-object v0
.end method

.method public serialize()V
    .locals 9

    .line 208
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->complexity:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    sget-object v1, Lcom/ibm/icu/util/MeasureUnit$Complexity;->COMPOUND:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    if-ne v0, v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$SingleUnitComparator;

    invoke-direct {v1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$SingleUnitComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 220
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    if-eqz v4, :cond_2

    .line 225
    invoke-virtual {v6}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v7

    if-gez v7, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_1

    .line 228
    :cond_2
    invoke-virtual {v6}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v7

    if-gez v7, :cond_3

    const/4 v5, 0x0

    .line 232
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v7

    sget-object v8, Lcom/ibm/icu/util/MeasureUnit$Complexity;->MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    if-ne v7, v8, :cond_4

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "-and-"

    .line 234
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_6

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "per-"

    .line 239
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v7, "-per-"

    .line 241
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 244
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "-"

    .line 245
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_7
    :goto_2
    invoke-virtual {v6}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getNeutralIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 253
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    return-void
.end method

.method public setComplexity(Lcom/ibm/icu/util/MeasureUnit$Complexity;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->complexity:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    return-void
.end method

.method public takeReciprocal()V
    .locals 3

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->identifier:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->singleUnits:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    .line 90
    invoke-virtual {v1}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v2

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->setDimensionality(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MeasureUnitImpl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl;->build()Lcom/ibm/icu/util/MeasureUnit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
