.class public Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;
.super Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleLocaleKeyFactory"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;

.field private final kind:I

.field private final obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 485
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/ibm/icu/util/ULocale;IZLjava/lang/String;)V
    .locals 0

    .line 489
    invoke-direct {p0, p4, p5}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;-><init>(ZLjava/lang/String;)V

    .line 491
    iput-object p1, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->obj:Ljava/lang/Object;

    .line 492
    invoke-virtual {p2}, Lcom/ibm/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    .line 493
    iput p3, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    return-void
.end method


# virtual methods
.method public create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 2

    .line 501
    instance-of p2, p1, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 505
    :cond_0
    check-cast p1, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    .line 506
    iget p2, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v1

    if-eq p2, v1, :cond_1

    return-object v0

    .line 509
    :cond_1
    iget-object p2, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 513
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->obj:Ljava/lang/Object;

    return-object p1
.end method

.method protected isSupportedID(Ljava/lang/String;)Z
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ", id: "

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind: "

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget v1, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->kind:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateVisibleIDs(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation

    .line 523
    iget-boolean v0, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->visible:Z

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
