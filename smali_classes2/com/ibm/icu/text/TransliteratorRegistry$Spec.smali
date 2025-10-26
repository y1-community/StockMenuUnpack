.class Lcom/ibm/icu/text/TransliteratorRegistry$Spec;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Spec"
.end annotation


# instance fields
.field private isNextLocale:Z

.field private isSpecLocale:Z

.field private nextSpec:Ljava/lang/String;

.field private res:Lcom/ibm/icu/impl/ICUResourceBundle;

.field private scriptName:Ljava/lang/String;

.field private spec:Ljava/lang/String;

.field private top:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 110
    :try_start_0
    invoke-static {p1}, Lcom/ibm/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    move-result p1

    .line 113
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v1}, Lcom/ibm/icu/lang/UScript;->getCode(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 115
    aget v1, v1, v2

    invoke-static {v1}, Lcom/ibm/icu/lang/UScript;->getName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 122
    :cond_0
    iput-boolean v2, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    .line 123
    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->res:Lcom/ibm/icu/impl/ICUResourceBundle;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 126
    iget-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {p1}, Lcom/ibm/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    const-string v1, "com/ibm/icu/impl/data/icudt69b/translit"

    .line 127
    invoke-static {v1, p1}, Lcom/ibm/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/util/Locale;)Lcom/ibm/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/impl/ICUResourceBundle;

    iput-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->res:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz p1, :cond_1

    .line 129
    invoke-virtual {p1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/ibm/icu/impl/LocaleUtility;->isFallbackOf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 130
    iput-boolean p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    .line 141
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->reset()V

    return-void
.end method

.method private setupNext()V
    .locals 3

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    .line 158
    iget-boolean v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iput-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    const/16 v2, 0x5f

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    const/4 v0, 0x1

    .line 165
    iput-boolean v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->scriptName:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    return-object v0
.end method

.method public getBundle()Ljava/util/ResourceBundle;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->res:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/ibm/icu/impl/ICUResourceBundle;->getULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->res:Lcom/ibm/icu/impl/ICUResourceBundle;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTop()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    return-object v0
.end method

.method public hasFallback()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLocale()Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->nextSpec:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    .line 185
    iget-boolean v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isNextLocale:Z

    iput-boolean v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    .line 186
    invoke-direct {p0}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->setupNext()V

    .line 187
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->top:Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->spec:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->res:Lcom/ibm/icu/impl/ICUResourceBundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->isSpecLocale:Z

    .line 152
    invoke-direct {p0}, Lcom/ibm/icu/text/TransliteratorRegistry$Spec;->setupNext()V

    :cond_1
    return-void
.end method
