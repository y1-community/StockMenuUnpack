.class public final Lcom/ibm/icu/util/LocaleMatcher$Result;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field private final desiredIndex:I

.field private final desiredLocale:Ljava/util/Locale;

.field private final desiredULocale:Lcom/ibm/icu/util/ULocale;

.field private final supportedIndex:I

.field private final supportedLocale:Ljava/util/Locale;

.field private final supportedULocale:Lcom/ibm/icu/util/ULocale;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;II)V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->desiredULocale:Lcom/ibm/icu/util/ULocale;

    .line 202
    iput-object p2, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->supportedULocale:Lcom/ibm/icu/util/ULocale;

    .line 203
    iput-object p3, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->desiredLocale:Ljava/util/Locale;

    .line 204
    iput-object p4, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->supportedLocale:Ljava/util/Locale;

    .line 205
    iput p5, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->desiredIndex:I

    .line 206
    iput p6, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->supportedIndex:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;IILcom/ibm/icu/util/LocaleMatcher$1;)V
    .locals 0

    .line 190
    invoke-direct/range {p0 .. p6}, Lcom/ibm/icu/util/LocaleMatcher$Result;-><init>(Lcom/ibm/icu/util/ULocale;Lcom/ibm/icu/util/ULocale;Ljava/util/Locale;Ljava/util/Locale;II)V

    return-void
.end method


# virtual methods
.method public getDesiredIndex()I
    .locals 1

    .line 260
    iget v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->desiredIndex:I

    return v0
.end method

.method public getDesiredLocale()Ljava/util/Locale;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->desiredLocale:Ljava/util/Locale;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->desiredULocale:Lcom/ibm/icu/util/ULocale;

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDesiredULocale()Lcom/ibm/icu/util/ULocale;
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->desiredULocale:Lcom/ibm/icu/util/ULocale;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->desiredLocale:Ljava/util/Locale;

    if-eqz v1, :cond_0

    .line 218
    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSupportedIndex()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->supportedIndex:I

    return v0
.end method

.method public getSupportedLocale()Ljava/util/Locale;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->supportedLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getSupportedULocale()Lcom/ibm/icu/util/ULocale;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->supportedULocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method

.method public makeResolvedLocale()Ljava/util/Locale;
    .locals 1

    .line 332
    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$Result;->makeResolvedULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public makeResolvedULocale()Lcom/ibm/icu/util/ULocale;
    .locals 5

    .line 287
    invoke-virtual {p0}, Lcom/ibm/icu/util/LocaleMatcher$Result;->getDesiredULocale()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    .line 288
    iget-object v1, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->supportedULocale:Lcom/ibm/icu/util/ULocale;

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 289
    invoke-virtual {v1, v0}, Lcom/ibm/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 292
    :cond_0
    new-instance v1, Lcom/ibm/icu/util/ULocale$Builder;

    invoke-direct {v1}, Lcom/ibm/icu/util/ULocale$Builder;-><init>()V

    iget-object v2, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->supportedULocale:Lcom/ibm/icu/util/ULocale;

    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/ULocale$Builder;->setLocale(Lcom/ibm/icu/util/ULocale;)Lcom/ibm/icu/util/ULocale$Builder;

    move-result-object v1

    .line 295
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 297
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/ULocale$Builder;->setRegion(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;

    .line 303
    :cond_1
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 305
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/ULocale$Builder;->setVariant(Ljava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;

    .line 312
    :cond_2
    invoke-virtual {v0}, Lcom/ibm/icu/util/ULocale;->getExtensionKeys()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 313
    invoke-virtual {v0, v3}, Lcom/ibm/icu/util/ULocale;->getExtension(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/ibm/icu/util/ULocale$Builder;->setExtension(CLjava/lang/String;)Lcom/ibm/icu/util/ULocale$Builder;

    goto :goto_0

    .line 315
    :cond_3
    invoke-virtual {v1}, Lcom/ibm/icu/util/ULocale$Builder;->build()Lcom/ibm/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 290
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/ibm/icu/util/LocaleMatcher$Result;->supportedULocale:Lcom/ibm/icu/util/ULocale;

    return-object v0
.end method
