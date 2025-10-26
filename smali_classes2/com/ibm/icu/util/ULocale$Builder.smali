.class public final Lcom/ibm/icu/util/ULocale$Builder;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final _locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3813
    new-instance v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-direct {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    return-void
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
    .locals 2

    .line 4050
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->addUnicodeLocaleAttribute(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4052
    new-instance v0, Lcom/ibm/icu/util/IllformedLocaleException;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public build()Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 4116
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getBaseLocale()Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ibm/icu/util/ULocale;->access$400(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/ibm/icu/util/ULocale$Builder;
    .locals 1

    .line 4089
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->clear()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public clearExtensions()Lcom/ibm/icu/util/ULocale$Builder;
    .locals 1

    .line 4103
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
    .locals 2

    .line 4074
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->removeUnicodeLocaleAttribute(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4076
    new-instance v0, Lcom/ibm/icu/util/IllformedLocaleException;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setExtension(CLjava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
    .locals 1

    .line 3997
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3999
    new-instance p2, Lcom/ibm/icu/util/IllformedLocaleException;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
    .locals 2

    .line 3889
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLanguage(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3891
    new-instance v0, Lcom/ibm/icu/util/IllformedLocaleException;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setLanguageTag(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
    .locals 2

    .line 3862
    new-instance v0, Lcom/ibm/icu/impl/locale/ParseStatus;

    invoke-direct {v0}, Lcom/ibm/icu/impl/locale/ParseStatus;-><init>()V

    .line 3863
    invoke-static {p1, v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->parse(Ljava/lang/String;Lcom/ibm/icu/impl/locale/ParseStatus;)Lcom/ibm/icu/impl/locale/LanguageTag;

    move-result-object p1

    .line 3864
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/ParseStatus;->isError()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3867
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLanguageTag(Lcom/ibm/icu/impl/locale/LanguageTag;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    return-object p0

    .line 3865
    :cond_0
    new-instance p1, Lcom/ibm/icu/util/IllformedLocaleException;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/ParseStatus;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/ParseStatus;->getErrorIndex()I

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public setLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale$Builder;
    .locals 2

    .line 3835
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->access$200(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v1

    invoke-static {p1}, Lcom/ibm/icu/util/ULocale;->access$300(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/impl/locale/LocaleExtensions;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setLocale(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3837
    new-instance v0, Lcom/ibm/icu/util/IllformedLocaleException;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
    .locals 2

    .line 3937
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setRegion(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3939
    new-instance v0, Lcom/ibm/icu/util/IllformedLocaleException;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setScript(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
    .locals 2

    .line 3911
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setScript(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3913
    new-instance v0, Lcom/ibm/icu/util/IllformedLocaleException;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
    .locals 1

    .line 4028
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 4030
    new-instance p2, Lcom/ibm/icu/util/IllformedLocaleException;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p1

    invoke-direct {p2, v0, p1}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw p2
.end method

.method public setVariant(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;
    .locals 2

    .line 3964
    :try_start_0
    iget-object v0, p0, Lcom/ibm/icu/util/ULocale$Builder;->_locbld:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setVariant(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    :try_end_0
    .catch Lcom/ibm/icu/impl/locale/LocaleSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 3966
    new-instance v0, Lcom/ibm/icu/util/IllformedLocaleException;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;->getErrorIndex()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/ibm/icu/util/IllformedLocaleException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
