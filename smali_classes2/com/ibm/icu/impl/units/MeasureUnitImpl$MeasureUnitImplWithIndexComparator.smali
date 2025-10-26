.class Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureUnitImplWithIndexComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;",
        ">;"
    }
.end annotation


# instance fields
.field private measureUnitImplComparator:Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/impl/units/ConversionRates;)V
    .locals 1

    .line 760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    new-instance v0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;-><init>(Lcom/ibm/icu/impl/units/ConversionRates;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;->measureUnitImplComparator:Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;)I
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;->measureUnitImplComparator:Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;

    iget-object p1, p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    iget-object p2, p2, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Lcom/ibm/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->compare(Lcom/ibm/icu/impl/units/MeasureUnitImpl;Lcom/ibm/icu/impl/units/MeasureUnitImpl;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 757
    check-cast p1, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    check-cast p2, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;->compare(Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;Lcom/ibm/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;)I

    move-result p1

    return p1
.end method
