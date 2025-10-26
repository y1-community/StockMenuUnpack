.class Lcom/ibm/icu/impl/units/MeasureUnitImpl$SingleUnitComparator;
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
    name = "SingleUnitComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/ibm/icu/impl/units/SingleUnitImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/ibm/icu/impl/units/SingleUnitImpl;Lcom/ibm/icu/impl/units/SingleUnitImpl;)I
    .locals 0

    .line 773
    invoke-virtual {p1, p2}, Lcom/ibm/icu/impl/units/SingleUnitImpl;->compareTo(Lcom/ibm/icu/impl/units/SingleUnitImpl;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 770
    check-cast p1, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    check-cast p2, Lcom/ibm/icu/impl/units/SingleUnitImpl;

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/impl/units/MeasureUnitImpl$SingleUnitComparator;->compare(Lcom/ibm/icu/impl/units/SingleUnitImpl;Lcom/ibm/icu/impl/units/SingleUnitImpl;)I

    move-result p1

    return p1
.end method
