.class public final Lcom/ibm/icu/util/LocaleMatcher$Builder;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private defaultLocale:Lcom/ibm/icu/util/ULocale;

.field private demotion:Lcom/ibm/icu/util/LocaleMatcher$Demotion;

.field private direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

.field private favor:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

.field private maxDistanceDesired:Lcom/ibm/icu/util/ULocale;

.field private maxDistanceSupported:Lcom/ibm/icu/util/ULocale;

.field private supportedLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private thresholdDistance:I

.field private withDefault:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 363
    iput v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->thresholdDistance:I

    const/4 v0, 0x1

    .line 366
    iput-boolean v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->withDefault:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/LocaleMatcher$1;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/ibm/icu/util/LocaleMatcher$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->maxDistanceSupported:Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Ljava/util/List;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Z
    .locals 0

    .line 361
    iget-boolean p0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->withDefault:Z

    return p0
.end method

.method static synthetic access$500(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/LocaleMatcher$Demotion;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->demotion:Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->favor:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/LocaleMatcher$Direction;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ibm/icu/util/LocaleMatcher$Builder;)I
    .locals 0

    .line 361
    iget p0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->thresholdDistance:I

    return p0
.end method

.method static synthetic access$900(Lcom/ibm/icu/util/LocaleMatcher$Builder;)Lcom/ibm/icu/util/ULocale;
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->maxDistanceDesired:Lcom/ibm/icu/util/ULocale;

    return-object p0
.end method


# virtual methods
.method public addSupportedLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 0

    .line 443
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->addSupportedULocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleMatcher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSupportedULocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/ibm/icu/util/LocaleMatcher;
    .locals 2

    .line 615
    new-instance v0, Lcom/ibm/icu/util/LocaleMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/util/LocaleMatcher;-><init>(Lcom/ibm/icu/util/LocaleMatcher$Builder;Lcom/ibm/icu/util/LocaleMatcher$1;)V

    return-object v0
.end method

.method public internalSetThresholdDistance(I)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    const/16 p1, 0x64

    .line 603
    :cond_0
    iput p1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->thresholdDistance:I

    return-object p0
.end method

.method public setDefaultLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 0

    .line 487
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    const/4 p1, 0x1

    .line 488
    iput-boolean p1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->withDefault:Z

    return-object p0
.end method

.method public setDefaultULocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 0

    .line 471
    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    const/4 p1, 0x1

    .line 472
    iput-boolean p1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->withDefault:Z

    return-object p0
.end method

.method public setDemotionPerDesiredLocale(Lcom/ibm/icu/util/LocaleMatcher$Demotion;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 0

    .line 515
    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->demotion:Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    return-object p0
.end method

.method public setDirection(Lcom/ibm/icu/util/LocaleMatcher$Direction;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->direction:Lcom/ibm/icu/util/LocaleMatcher$Direction;

    return-object p0
.end method

.method public setFavorSubtag(Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->favor:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    return-object p0
.end method

.method public setMaxDistance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 585
    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->maxDistanceDesired:Lcom/ibm/icu/util/ULocale;

    .line 586
    iput-object p2, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->maxDistanceSupported:Lcom/ibm/icu/util/ULocale;

    return-object p0

    .line 583
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "desired/supported locales must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaxDistance(Ljava/util/Locale;Ljava/util/Locale;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 557
    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-static {p2}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->setMaxDistance(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/LocaleMatcher$Builder;

    move-result-object p1

    return-object p1

    .line 555
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "desired/supported locales must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNoDefaultLocale()Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 455
    iput-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->withDefault:Z

    return-object p0
.end method

.method public setSupportedLocales(Ljava/lang/String;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 0

    .line 384
    invoke-static {p1}, Lcom/ibm/icu/util/LocalePriorityList;->add(Ljava/lang/String;)Lcom/ibm/icu/util/LocalePriorityList$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/LocalePriorityList$Builder;->build()Lcom/ibm/icu/util/LocalePriorityList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/LocalePriorityList;->getULocales()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/LocaleMatcher$Builder;->setSupportedULocales(Ljava/util/Collection;)Lcom/ibm/icu/util/LocaleMatcher$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSupportedLocales(Ljava/util/Collection;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Locale;",
            ">;)",
            "Lcom/ibm/icu/util/LocaleMatcher$Builder;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    .line 412
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 413
    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    invoke-static {v0}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setSupportedULocales(Ljava/util/Collection;)Lcom/ibm/icu/util/LocaleMatcher$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/ibm/icu/util/ULocale;",
            ">;)",
            "Lcom/ibm/icu/util/LocaleMatcher$Builder;"
        }
    .end annotation

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{LocaleMatcher.Builder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    const/16 v2, 0x7d

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " supported={"

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->supportedLocales:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    if-eqz v1, :cond_1

    const-string v1, " default="

    .line 629
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->defaultLocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 631
    :cond_1
    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->favor:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    if-eqz v1, :cond_2

    const-string v1, " distance="

    .line 632
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->favor:Lcom/ibm/icu/util/LocaleMatcher$FavorSubtag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 634
    :cond_2
    iget v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->thresholdDistance:I

    if-ltz v1, :cond_3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 635
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const-string v1, " threshold=%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->demotion:Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    if-eqz v1, :cond_4

    const-string v1, " demotion="

    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Builder;->demotion:Lcom/ibm/icu/util/LocaleMatcher$Demotion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 640
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
