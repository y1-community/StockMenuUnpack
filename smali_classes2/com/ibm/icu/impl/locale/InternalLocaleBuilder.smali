.class public final Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
.super Ljava/lang/Object;
.source "InternalLocaleBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;,
        Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final JDKIMPL:Z = false

.field private static final PRIVUSE_KEY:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;


# instance fields
.field private _extensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _language:Ljava/lang/String;

.field private _region:Ljava/lang/String;

.field private _script:Ljava/lang/String;

.field private _uattributes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private _ukeywords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _variant:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    const/4 v1, 0x0

    const-string v2, "x"

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    sput-object v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->PRIVUSE_KEY:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 22
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    return-void
.end method

.method private checkVariants(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 544
    new-instance v0, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    invoke-direct {v0, p1, p2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result p1

    if-nez p1, :cond_1

    .line 546
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object p1

    .line 547
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isVariant(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 548
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result p1

    return p1

    .line 550
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method static removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 512
    new-instance v0, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    const-string v1, "-"

    invoke-direct {v0, p0, v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 519
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    .line 526
    :cond_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lvariant"

    invoke-static {v3, v4}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 527
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v2

    .line 529
    :cond_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    return-object p0

    :cond_3
    if-nez v2, :cond_4

    const/4 p0, 0x0

    goto :goto_2

    :cond_4
    sub-int/2addr v2, v4

    .line 536
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private setExtensions(Ljava/util/List;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;"
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    .line 285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 286
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 287
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 288
    new-instance v4, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v4, v5}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    .line 290
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 292
    invoke-virtual {v4}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v5

    invoke-static {v5}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 293
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_1
    iget-object v5, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 296
    new-instance v5, Ljava/util/HashMap;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v5, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 298
    :cond_2
    iget-object v5, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 303
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 305
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez p1, :cond_4

    .line 306
    new-instance p1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 308
    :cond_4
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    new-instance v2, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {v2, v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object p0
.end method

.method private setUnicodeLocaleExtension(Ljava/lang/String;)V
    .locals 9

    .line 562
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 566
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 569
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    const-string v1, "-"

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_4

    .line 573
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 576
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-nez v1, :cond_3

    .line 577
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iput-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    .line 579
    :cond_3
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    new-instance v2, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x0

    const/4 v3, -0x1

    move-object v4, v1

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 588
    :goto_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v7

    if-nez v7, :cond_f

    const-string v7, ""

    if-eqz v4, :cond_a

    .line 590
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-ne v5, v3, :cond_5

    move-object v5, v7

    goto :goto_3

    .line 593
    :cond_5
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 594
    :goto_3
    iget-object v6, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez v6, :cond_6

    .line 595
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 597
    :cond_6
    iget-object v6, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    new-instance v4, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 601
    iget-object v5, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v4, v1

    :cond_7
    const/4 v5, -0x1

    const/4 v6, -0x1

    goto :goto_4

    :cond_8
    if-ne v5, v3, :cond_9

    .line 605
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v5

    .line 607
    :cond_9
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v6

    goto :goto_4

    .line 609
    :cond_a
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 612
    new-instance v4, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    .line 613
    iget-object v8, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v8, :cond_b

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v4, v1

    .line 619
    :cond_b
    :goto_4
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_e

    if-eqz v4, :cond_f

    if-ne v5, v3, :cond_c

    goto :goto_5

    .line 623
    :cond_c
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 624
    :goto_5
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez p1, :cond_d

    .line 625
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 627
    :cond_d
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {p1, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 632
    :cond_e
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    :goto_6
    return-void
.end method


# virtual methods
.method public addUnicodeLocaleAttribute(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 89
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    new-instance v1, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 90
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 1

    const-string v0, ""

    .line 438
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 439
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 440
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 441
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 442
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public clearExtensions()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 451
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    return-object p0
.end method

.method public getBaseLocale()Lcom/ibm/icu/impl/locale/BaseLocale;
    .locals 10

    .line 460
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 462
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 463
    iget-object v3, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 467
    iget-object v4, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz v4, :cond_4

    .line 468
    sget-object v5, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->PRIVUSE_KEY:Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 470
    new-instance v5, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    const-string v6, "-"

    invoke-direct {v5, v4, v6}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 473
    :goto_0
    invoke-virtual {v5}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v8

    const/4 v9, -0x1

    if-nez v8, :cond_2

    if-eqz v7, :cond_0

    .line 475
    invoke-virtual {v5}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v5

    goto :goto_1

    .line 478
    :cond_0
    invoke-virtual {v5}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    const-string v9, "lvariant"

    invoke-static {v8, v9}, Lcom/ibm/icu/impl/locale/AsciiUtil;->caseIgnoreMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    .line 481
    :cond_1
    invoke-virtual {v5}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v5, -0x1

    :goto_1
    if-eq v5, v9, :cond_4

    .line 484
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const-string v8, "_"

    if-eqz v3, :cond_3

    .line 486
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    :cond_4
    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/impl/locale/BaseLocale;->getInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/BaseLocale;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleExtensions()Lcom/ibm/icu/impl/locale/LocaleExtensions;
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    .line 500
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 504
    :cond_2
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;

    iget-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/impl/locale/LocaleExtensions;-><init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V

    return-object v0

    .line 501
    :cond_3
    :goto_0
    sget-object v0, Lcom/ibm/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Lcom/ibm/icu/impl/locale/LocaleExtensions;

    return-object v0
.end method

.method public removeUnicodeLocaleAttribute(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 101
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 105
    new-instance v1, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v1, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 102
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed Unicode locale attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExtension(CLjava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 145
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    new-instance p2, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed extension key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 150
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 151
    :goto_2
    new-instance v2, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-direct {v2, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    if-eqz v1, :cond_6

    .line 154
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result p1

    invoke-static {p1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 156
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 159
    :cond_4
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz p1, :cond_c

    .line 160
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_5

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 164
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_6
    const-string p1, "_"

    const-string v1, "-"

    .line 169
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    new-instance p2, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    invoke-direct {p2, p1, v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_3
    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_9

    .line 172
    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_7

    .line 175
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v3

    goto :goto_4

    .line 177
    :cond_7
    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v3

    :goto_4
    if-eqz v3, :cond_8

    .line 182
    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_3

    .line 180
    :cond_8
    new-instance p1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed extension value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result p2

    invoke-direct {p1, v0, p2}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 185
    :cond_9
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result p2

    invoke-static {p2}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isSingletonChar(C)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 186
    invoke-direct {p0, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setUnicodeLocaleExtension(Ljava/lang/String;)V

    goto :goto_5

    .line 188
    :cond_a
    iget-object p2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez p2, :cond_b

    .line 189
    new-instance p2, Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 191
    :cond_b
    iget-object p2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    invoke-virtual {p2, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_5
    return-object p0
.end method

.method public setExtensions(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "_"

    const-string v1, "-"

    .line 205
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    new-instance v0, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    .line 215
    :goto_0
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_4

    .line 216
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-static {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSingleton(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 218
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v6

    .line 220
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 223
    :goto_1
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v8

    if-nez v8, :cond_1

    .line 224
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v8

    .line 225
    invoke-static {v8}, Lcom/ibm/icu/impl/locale/LanguageTag;->isExtensionSubtag(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 226
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    .line 231
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_1

    :cond_1
    if-lt v2, v6, :cond_3

    if-nez v4, :cond_2

    .line 239
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 241
    :cond_2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_3
    new-instance p1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incomplete extension \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v6}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 246
    :cond_4
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_8

    .line 247
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 248
    invoke-static {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateusePrefix(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 249
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v3

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    .line 253
    :goto_2
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v5

    if-nez v5, :cond_6

    .line 254
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object v5

    .line 255
    invoke-static {v5}, Lcom/ibm/icu/impl/locale/LanguageTag;->isPrivateuseSubtag(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_3

    .line 258
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentEnd()I

    move-result v2

    .line 261
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_2

    :cond_6
    :goto_3
    if-le v2, v3, :cond_7

    .line 266
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 264
    :cond_7
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete privateuse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v3}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 271
    :cond_8
    :goto_4
    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 275
    invoke-direct {p0, v4, v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    move-result-object p1

    return-object p1

    .line 272
    :cond_9
    new-instance v1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ill-formed extension subtags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v0

    invoke-direct {v1, p1, v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 202
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    goto :goto_1

    .line 42
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    :goto_0
    const-string p1, ""

    .line 39
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setLanguageTag(Lcom/ibm/icu/impl/locale/LanguageTag;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 4

    .line 318
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->clear()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    .line 319
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 320
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getExtlangs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 323
    sget-object v2, Lcom/ibm/icu/impl/locale/LanguageTag;->UNDETERMINED:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 324
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 327
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getScript()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getVariants()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 332
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 334
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    const-string v3, "_"

    .line 335
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 340
    :cond_3
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->getPrivateuse()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->setExtensions(Ljava/util/List;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    return-object p0
.end method

.method public setLocale(Lcom/ibm/icu/impl/locale/BaseLocale;Lcom/ibm/icu/impl/locale/LocaleExtensions;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 346
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getRegion()Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {p1}, Lcom/ibm/icu/impl/locale/BaseLocale;->getVariant()Ljava/lang/String;

    move-result-object p1

    .line 380
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-static {v0}, Lcom/ibm/icu/impl/locale/LanguageTag;->isLanguage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    new-instance p1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed language: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 384
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 385
    :cond_2
    new-instance p1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ill-formed script: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 388
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-static {v2}, Lcom/ibm/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 389
    :cond_4
    new-instance p1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ill-formed region: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 392
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    const-string v3, "_"

    .line 393
    invoke-direct {p0, p1, v3}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    goto :goto_3

    .line 395
    :cond_6
    new-instance p2, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed variant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, v3}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 401
    :cond_7
    :goto_3
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_language:Ljava/lang/String;

    .line 402
    iput-object v1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    .line 403
    iput-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    .line 404
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    .line 405
    invoke-virtual {p0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->clearExtensions()Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;

    if-nez p2, :cond_8

    const/4 p1, 0x0

    goto :goto_4

    .line 407
    :cond_8
    invoke-virtual {p2}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getKeys()Ljava/util/Set;

    move-result-object p1

    :goto_4
    if-eqz p1, :cond_f

    .line 410
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    .line 411
    invoke-virtual {p2, v0}, Lcom/ibm/icu/impl/locale/LocaleExtensions;->getExtension(Ljava/lang/Character;)Lcom/ibm/icu/impl/locale/Extension;

    move-result-object v1

    .line 412
    instance-of v2, v1, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;

    const/4 v3, 0x4

    if-eqz v2, :cond_d

    .line 413
    check-cast v1, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;

    .line 414
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 415
    iget-object v4, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    if-nez v4, :cond_a

    .line 416
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(I)V

    iput-object v4, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    .line 418
    :cond_a
    iget-object v4, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_uattributes:Ljava/util/HashSet;

    new-instance v5, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v5, v2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 420
    :cond_b
    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 421
    iget-object v4, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez v4, :cond_c

    .line 422
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 424
    :cond_c
    iget-object v4, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    new-instance v5, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v5, v2}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 427
    :cond_d
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    if-nez v2, :cond_e

    .line 428
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    .line 430
    :cond_e
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_extensions:Ljava/util/HashMap;

    new-instance v3, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {v3, v0}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;-><init>(C)V

    invoke-virtual {v1}, Lcom/ibm/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_f
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    goto :goto_1

    .line 66
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    :goto_0
    const-string p1, ""

    .line 63
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_region:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setScript(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/LanguageTag;->isScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    goto :goto_1

    .line 54
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ill-formed script: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    :goto_0
    const-string p1, ""

    .line 51
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_script:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    .line 111
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    new-instance v0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 117
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    .line 119
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "_"

    const-string v1, "-"

    .line 124
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    new-instance v2, Lcom/ibm/icu/impl/locale/StringTokenIterator;

    invoke-direct {v2, p1, v1}, Lcom/ibm/icu/impl/locale/StringTokenIterator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    .line 128
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->current()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {p1}, Lcom/ibm/icu/impl/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 132
    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->next()Ljava/lang/String;

    goto :goto_0

    .line 130
    :cond_1
    new-instance p1, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed Unicode locale keyword type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Lcom/ibm/icu/impl/locale/StringTokenIterator;->currentStart()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 135
    :cond_2
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    if-nez p1, :cond_3

    .line 136
    new-instance p1, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {p1, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    .line 138
    :cond_3
    iget-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_ukeywords:Ljava/util/HashMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-object p0

    .line 112
    :cond_5
    new-instance p2, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ill-formed Unicode locale keyword key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public setVariant(Ljava/lang/String;)Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/impl/locale/LocaleSyntaxException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "-"

    const-string v1, "_"

    .line 78
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->checkVariants(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 83
    iput-object v0, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    goto :goto_1

    .line 81
    :cond_1
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ill-formed variant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Lcom/ibm/icu/impl/locale/LocaleSyntaxException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    :goto_0
    const-string p1, ""

    .line 75
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/InternalLocaleBuilder;->_variant:Ljava/lang/String;

    :goto_1
    return-object p0
.end method
