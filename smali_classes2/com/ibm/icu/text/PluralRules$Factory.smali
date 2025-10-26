.class public abstract Lcom/ibm/icu/text/PluralRules$Factory;
.super Ljava/lang/Object;
.source "PluralRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Factory"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultFactory()Lcom/ibm/icu/impl/PluralRulesLoader;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    sget-object v0, Lcom/ibm/icu/impl/PluralRulesLoader;->loader:Lcom/ibm/icu/impl/PluralRulesLoader;

    return-object v0
.end method


# virtual methods
.method public final forLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/text/PluralRules;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    sget-object v0, Lcom/ibm/icu/text/PluralRules$PluralType;->CARDINAL:Lcom/ibm/icu/text/PluralRules$PluralType;

    invoke-virtual {p0, p1, v0}, Lcom/ibm/icu/text/PluralRules$Factory;->forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;

    move-result-object p1

    return-object p1
.end method

.method public abstract forLocale(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/text/PluralRules$PluralType;)Lcom/ibm/icu/text/PluralRules;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAvailableULocales()[Lcom/ibm/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getFunctionalEquivalent(Lcom/ibm/icu/util/ULocale;[Z)Lcom/ibm/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasOverride(Lcom/ibm/icu/util/ULocale;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
