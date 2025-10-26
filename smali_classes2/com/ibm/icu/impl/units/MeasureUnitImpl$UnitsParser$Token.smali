.class Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final fMatch:I

.field private final type:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 661
    const-class v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 667
    iput p1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    .line 668
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->calculateType(I)Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->type:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-void
.end method

.method private calculateType(I)Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
    .locals 1

    if-lez p1, :cond_4

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 713
    sget-object p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_PREFIX:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object p1

    :cond_0
    const/16 v0, 0xc0

    if-ge p1, v0, :cond_1

    .line 716
    sget-object p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_COMPOUND_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object p1

    :cond_1
    const/16 v0, 0x100

    if-ge p1, v0, :cond_2

    .line 719
    sget-object p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_INITIAL_COMPOUND_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object p1

    :cond_2
    const/16 v0, 0x200

    if-ge p1, v0, :cond_3

    .line 722
    sget-object p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_POWER_PART:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object p1

    .line 725
    :cond_3
    sget-object p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;->TYPE_SIMPLE_UNIT:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object p1

    .line 709
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "fMatch must have a positive value"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public getInitialCompoundPart()Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;
    .locals 1

    .line 692
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    invoke-static {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;->getInitialCompoundPartFromTrieIndex(I)Lcom/ibm/icu/impl/units/MeasureUnitImpl$InitialCompoundPart;

    move-result-object v0

    return-object v0
.end method

.method public getMatch()I
    .locals 1

    .line 683
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    return v0
.end method

.method public getPower()I
    .locals 1

    .line 697
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    invoke-static {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$PowerPart;->getPowerFromTrieIndex(I)I

    move-result v0

    return v0
.end method

.method public getPrefix()Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;
    .locals 1

    .line 677
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    invoke-static {v0}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser;->access$100(I)Lcom/ibm/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v0

    return-object v0
.end method

.method public getSimpleUnitIndex()I
    .locals 1

    .line 702
    iget v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->fMatch:I

    add-int/lit16 v0, v0, -0x200

    return v0
.end method

.method public getType()Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token;->type:Lcom/ibm/icu/impl/units/MeasureUnitImpl$UnitsParser$Token$Type;

    return-object v0
.end method
