.class public abstract Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;
.super Ljava/lang/Object;
.source "ICULocaleService.java"

# interfaces
.implements Lcom/ibm/icu/impl/ICUService$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/ICULocaleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LocaleKeyFactory"
.end annotation


# static fields
.field public static final INVISIBLE:Z = false

.field public static final VISIBLE:Z = true


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final visible:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput-boolean p1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    const/4 p1, 0x0

    .line 361
    iput-object p1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-boolean p1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    .line 369
    iput-object p2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Lcom/ibm/icu/impl/ICUService$Key;Lcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 1

    .line 379
    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->handlesKey(Lcom/ibm/icu/impl/ICUService$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    check-cast p1, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;

    .line 381
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->kind()I

    move-result v0

    .line 383
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKey;->currentLocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    .line 384
    invoke-virtual {p0, p1, v0, p2}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDisplayName(Ljava/lang/String;Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    .line 426
    :cond_0
    new-instance v0, Lcom/ibm/icu/util/ULocale;

    invoke-direct {v0, p1}, Lcom/ibm/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, p2}, Lcom/ibm/icu/util/ULocale;->getDisplayName(Lcom/ibm/icu/util/ULocale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSupportedIDs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected handleCreate(Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/impl/ICUService;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected handlesKey(Lcom/ibm/icu/impl/ICUService$Key;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 394
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object p1

    .line 395
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object v0

    .line 396
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected isSupportedID(Ljava/lang/String;)Z
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", name: "

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    iget-object v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", visible: "

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-boolean v1, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateVisibleIDs(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ibm/icu/impl/ICUService$Factory;",
            ">;)V"
        }
    .end annotation

    .line 406
    invoke-virtual {p0}, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->getSupportedIDs()Ljava/util/Set;

    move-result-object v0

    .line 407
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 408
    iget-boolean v2, p0, Lcom/ibm/icu/impl/ICULocaleService$LocaleKeyFactory;->visible:Z

    if-eqz v2, :cond_0

    .line 409
    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 411
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
