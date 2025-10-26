.class public Lcom/ibm/icu/impl/units/UnitsData$Categories;
.super Ljava/lang/Object;
.source "UnitsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/UnitsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Categories"
.end annotation


# static fields
.field static baseUnitToIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static indexToCategory:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com/ibm/icu/impl/data/icudt69b"

    const-string v1, "units"

    .line 188
    invoke-static {v0, v1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUResourceBundle;

    .line 189
    new-instance v1, Lcom/ibm/icu/impl/units/UnitsData$CategoriesSink;

    invoke-direct {v1}, Lcom/ibm/icu/impl/units/UnitsData$CategoriesSink;-><init>()V

    const-string v2, "unitQuantities"

    .line 190
    invoke-virtual {v0, v2, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Sink;)V

    .line 191
    iget-object v0, v1, Lcom/ibm/icu/impl/units/UnitsData$CategoriesSink;->mapFromUnitToIndex:Ljava/util/HashMap;

    sput-object v0, Lcom/ibm/icu/impl/units/UnitsData$Categories;->baseUnitToIndex:Ljava/util/HashMap;

    .line 192
    iget-object v0, v1, Lcom/ibm/icu/impl/units/UnitsData$CategoriesSink;->categories:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/ibm/icu/impl/units/UnitsData$Categories;->indexToCategory:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
