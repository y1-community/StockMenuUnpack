.class Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;
.super Lcom/ibm/icu/text/LocaleDisplayNames;
.source "LocaleDisplayNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/LocaleDisplayNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastResortLocaleDisplayNames"
.end annotation


# instance fields
.field private contexts:[Lcom/ibm/icu/text/DisplayContext;

.field private locale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)V
    .locals 1

    .line 456
    invoke-direct {p0}, Lcom/ibm/icu/text/LocaleDisplayNames;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Lcom/ibm/icu/util/ULocale;

    .line 458
    sget-object p1, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    if-ne p2, p1, :cond_0

    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->DIALECT_NAMES:Lcom/ibm/icu/text/DisplayContext;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    :goto_0
    const/4 p2, 0x1

    new-array p2, p2, [Lcom/ibm/icu/text/DisplayContext;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    .line 460
    iput-object p2, p0, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Lcom/ibm/icu/text/DisplayContext;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;Lcom/ibm/icu/text/LocaleDisplayNames$1;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;)V

    return-void
.end method

.method private varargs constructor <init>(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/text/DisplayContext;)V
    .locals 2

    .line 463
    invoke-direct {p0}, Lcom/ibm/icu/text/LocaleDisplayNames;-><init>()V

    .line 464
    iput-object p1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Lcom/ibm/icu/util/ULocale;

    .line 465
    array-length p1, p2

    new-array p1, p1, [Lcom/ibm/icu/text/DisplayContext;

    iput-object p1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Lcom/ibm/icu/text/DisplayContext;

    .line 466
    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/text/DisplayContext;Lcom/ibm/icu/text/LocaleDisplayNames$1;)V
    .locals 0

    .line 451
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;-><init>(Lcom/ibm/icu/util/ULocale;[Lcom/ibm/icu/text/DisplayContext;)V

    return-void
.end method


# virtual methods
.method public getContext(Lcom/ibm/icu/text/DisplayContext$Type;)Lcom/ibm/icu/text/DisplayContext;
    .locals 6

    .line 490
    sget-object v0, Lcom/ibm/icu/text/DisplayContext;->STANDARD_NAMES:Lcom/ibm/icu/text/DisplayContext;

    .line 491
    iget-object v1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Lcom/ibm/icu/text/DisplayContext;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 492
    invoke-virtual {v4}, Lcom/ibm/icu/text/DisplayContext;->type()Lcom/ibm/icu/text/DisplayContext$Type;

    move-result-object v5

    if-ne v5, p1, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getDialectHandling()Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;
    .locals 7

    .line 476
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->STANDARD_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    .line 477
    iget-object v1, p0, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->contexts:[Lcom/ibm/icu/text/DisplayContext;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 478
    invoke-virtual {v4}, Lcom/ibm/icu/text/DisplayContext;->type()Lcom/ibm/icu/text/DisplayContext$Type;

    move-result-object v5

    sget-object v6, Lcom/ibm/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Lcom/ibm/icu/text/DisplayContext$Type;

    if-ne v5, v6, :cond_0

    .line 479
    invoke-virtual {v4}, Lcom/ibm/icu/text/DisplayContext;->value()I

    move-result v4

    sget-object v5, Lcom/ibm/icu/text/DisplayContext;->DIALECT_NAMES:Lcom/ibm/icu/text/DisplayContext;

    invoke-virtual {v5}, Lcom/ibm/icu/text/DisplayContext;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 480
    sget-object v0, Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;->DIALECT_NAMES:Lcom/ibm/icu/text/LocaleDisplayNames$DialectHandling;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getLocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/ibm/icu/text/LocaleDisplayNames$LastResortLocaleDisplayNames;->locale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public getUiListCompareWholeItems(Ljava/util/Set;Ljava/util/Comparator;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;",
            "Ljava/util/Comparator<",
            "Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/LocaleDisplayNames$UiListItem;",
            ">;"
        }
    .end annotation

    .line 552
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public keyDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public keyValueDisplayName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public languageDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public localeDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 0

    .line 502
    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public localeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 512
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public localeDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 507
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public regionDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public scriptDisplayName(I)Ljava/lang/String;
    .locals 0

    .line 527
    invoke-static {p1}, Lcom/ibm/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public scriptDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public variantDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
