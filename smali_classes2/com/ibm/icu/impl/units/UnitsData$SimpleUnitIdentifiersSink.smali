.class public Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "UnitsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/units/UnitsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleUnitIdentifiersSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field simpleUnitCategories:[I

.field simpleUnits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 90
    const-class v0, Lcom/ibm/icu/impl/units/UnitsData;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnits:[Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnitCategories:[I

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 6

    .line 99
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 102
    :goto_0
    invoke-interface {p3, v3, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "kilogram"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v4

    const-string v5, "target"

    .line 114
    invoke-interface {v4, v5, p2}, Lcom/ibm/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    .line 123
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v5, Lcom/ibm/icu/impl/units/UnitsData$Categories;->baseUnitToIndex:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p1, v2, [Ljava/lang/String;

    .line 127
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnits:[Ljava/lang/String;

    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnitCategories:[I

    .line 129
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 130
    :goto_2
    iget-object p2, p0, Lcom/ibm/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnitCategories:[I

    array-length p3, p2

    if-ge v2, p3, :cond_3

    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    aput p3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method
