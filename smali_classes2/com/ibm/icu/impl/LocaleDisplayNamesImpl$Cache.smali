.class Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private cache:Lcom/ibm/icu/text/LocaleDisplayNames;

.field private capitalization:Lcom/ibm/icu/text/DisplayContext;

.field private dialectHandling:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

.field private locale:Lcom/ibm/icu/util/ULocale;

.field private nameLength:Lcom/ibm/icu/text/DisplayContext;

.field private substituteHandling:Lcom/ibm/icu/text/DisplayContext;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$1;)V
    .locals 0

    .line 720
    invoke-direct {p0}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)Lcom/ibm/icu/text/LocaleDisplayNames;
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->LENGTH_FULL:Lcom/ibm/icu/text/DisplayContext;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    iget-object v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Lcom/ibm/icu/text/DisplayContext;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Lcom/ibm/icu/util/ULocale;

    .line 730
    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 731
    :cond_0
    iput-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Lcom/ibm/icu/util/ULocale;

    .line 732
    iput-object p2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    .line 733
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Lcom/ibm/icu/text/DisplayContext;

    .line 734
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->LENGTH_FULL:Lcom/ibm/icu/text/DisplayContext;

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    .line 735
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Lcom/ibm/icu/text/DisplayContext;

    .line 736
    new-instance v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Lcom/ibm/icu/text/LocaleDisplayNames;

    .line 738
    :cond_1
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Lcom/ibm/icu/text/LocaleDisplayNames;

    return-object p1
.end method

.method public varargs get(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/text/DisplayContext;)Lcom/ibm/icu/text/LocaleDisplayNames;
    .locals 9

    .line 741
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    .line 742
    sget-object v1, Lcom/ibm/icu/text/DisplayContext;->CAPITALIZATION_NONE:Lcom/ibm/icu/text/DisplayContext;

    .line 743
    sget-object v2, Lcom/ibm/icu/text/DisplayContext;->LENGTH_FULL:Lcom/ibm/icu/text/DisplayContext;

    .line 744
    sget-object v3, Lcom/ibm/icu/text/DisplayContext;->SUBSTITUTE:Lcom/ibm/icu/text/DisplayContext;

    .line 745
    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, p2, v5

    .line 746
    sget-object v7, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$com$ibm$icu$text$DisplayContext$Type:[I

    invoke-virtual {v6}, Lcom/ibm/icu/text/DisplayContext;->type()Lcom/ibm/icu/text/DisplayContext$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ibm/icu/text/DisplayContext$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_1

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v6

    goto :goto_1

    :cond_1
    move-object v2, v6

    goto :goto_1

    :cond_2
    move-object v1, v6

    goto :goto_1

    .line 748
    :cond_3
    invoke-virtual {v6}, Lcom/ibm/icu/text/DisplayContext;->value()I

    move-result v0

    sget-object v6, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v6}, Lcom/ibm/icu/text/DisplayContext;->value()I

    move-result v6

    if-ne v0, v6, :cond_4

    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 764
    :cond_5
    iget-object v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne v0, v4, :cond_6

    iget-object v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Lcom/ibm/icu/text/DisplayContext;

    if-ne v1, v4, :cond_6

    iget-object v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    if-ne v2, v4, :cond_6

    iget-object v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Lcom/ibm/icu/text/DisplayContext;

    if-ne v3, v4, :cond_6

    iget-object v4, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Lcom/ibm/icu/util/ULocale;

    .line 766
    invoke-virtual {p1, v4}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 767
    :cond_6
    iput-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->locale:Lcom/ibm/icu/util/ULocale;

    .line 768
    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->dialectHandling:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    .line 769
    iput-object v1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->capitalization:Lcom/ibm/icu/text/DisplayContext;

    .line 770
    iput-object v2, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->nameLength:Lcom/ibm/icu/text/DisplayContext;

    .line 771
    iput-object v3, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->substituteHandling:Lcom/ibm/icu/text/DisplayContext;

    .line 772
    new-instance v0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl;-><init>(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/text/DisplayContext;)V

    iput-object v0, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Lcom/ibm/icu/text/LocaleDisplayNames;

    .line 774
    :cond_7
    iget-object p1, p0, Lcom/ibm/icu/impl/LocaleDisplayNamesImpl$Cache;->cache:Lcom/ibm/icu/text/LocaleDisplayNames;

    return-object p1
.end method
