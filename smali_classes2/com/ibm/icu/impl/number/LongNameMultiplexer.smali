.class public Lcom/ibm/icu/impl/number/LongNameMultiplexer;
.super Ljava/lang/Object;
.source "LongNameMultiplexer.java"

# interfaces
.implements Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private fMeasureUnits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            ">;"
        }
    .end annotation
.end field

.field private final fParent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->fParent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    return-void
.end method

.method public static forMeasureUnits(Lcom/ibm/icu/util/ULocale;Ljava/util/List;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/LongNameMultiplexer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/util/ULocale;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/MeasureUnit;",
            ">;",
            "Lcom/ibm/icu/number/NumberFormatter$UnitWidth;",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/text/PluralRules;",
            "Lcom/ibm/icu/impl/number/MicroPropsGenerator;",
            ")",
            "Lcom/ibm/icu/impl/number/LongNameMultiplexer;"
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;

    invoke-direct {v0, p5}, Lcom/ibm/icu/impl/number/LongNameMultiplexer;-><init>(Lcom/ibm/icu/impl/number/MicroPropsGenerator;)V

    .line 55
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, v0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->fMeasureUnits:Ljava/util/List;

    .line 56
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, v0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->fHandlers:Ljava/util/List;

    const/4 p5, 0x0

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p5, v1, :cond_1

    .line 60
    invoke-interface {p1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/ibm/icu/util/MeasureUnit;

    .line 61
    iget-object v1, v0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->fMeasureUnits:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-virtual {v3}, Lcom/ibm/icu/util/MeasureUnit;->getComplexity()Lcom/ibm/icu/util/MeasureUnit$Complexity;

    move-result-object v1

    sget-object v2, Lcom/ibm/icu/util/MeasureUnit$Complexity;->MIXED:Lcom/ibm/icu/util/MeasureUnit$Complexity;

    if-ne v1, v2, :cond_0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 64
    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;->forMeasureUnit(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/MixedUnitLongNameHandler;

    move-result-object v1

    .line 65
    iget-object v2, v0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->fHandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 67
    invoke-static/range {v2 .. v7}, Lcom/ibm/icu/impl/number/LongNameHandler;->forMeasureUnit(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/MeasureUnit;Lcom/ibm/icu/number/NumberFormatter$UnitWidth;Ljava/lang/String;Lcom/ibm/icu/text/PluralRules;Lcom/ibm/icu/impl/number/MicroPropsGenerator;)Lcom/ibm/icu/impl/number/LongNameHandler;

    move-result-object v1

    .line 68
    iget-object v2, v0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->fHandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->fParent:Lcom/ibm/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/number/MicroPropsGenerator;->processQuantity(Lcom/ibm/icu/impl/number/DecimalQuantity;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->fHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->fMeasureUnits:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ibm/icu/util/MeasureUnit;

    iget-object v3, v0, Lcom/ibm/icu/impl/number/MicroProps;->outputUnit:Lcom/ibm/icu/util/MeasureUnit;

    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/ibm/icu/impl/number/LongNameMultiplexer;->fHandlers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;

    .line 88
    invoke-interface {v1, p1, v0}, Lcom/ibm/icu/impl/number/LongNameMultiplexer$ParentlessMicroPropsGenerator;->processQuantityWithMicros(Lcom/ibm/icu/impl/number/DecimalQuantity;Lcom/ibm/icu/impl/number/MicroProps;)Lcom/ibm/icu/impl/number/MicroProps;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, " We shouldn\'t receive any outputUnit for which we haven\'t already got a LongNameHandler"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
