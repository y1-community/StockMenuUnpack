.class Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TransliteratorRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompoundRBTEntry"
.end annotation


# instance fields
.field private ID:Ljava/lang/String;

.field private compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

.field private dataVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/RuleBasedTransliterator$Data;",
            ">;"
        }
    .end annotation
.end field

.field private idBlockVector:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ibm/icu/text/RuleBasedTransliterator$Data;",
            ">;",
            "Lcom/ibm/icu/text/UnicodeSet;",
            ")V"
        }
    .end annotation

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->ID:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    .line 259
    iput-object p3, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    .line 260
    iput-object p4, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method


# virtual methods
.method public getInstance()Lcom/ibm/icu/text/Transliterator;
    .locals 9

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v1, :cond_2

    .line 269
    iget-object v5, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 270
    iget-object v5, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->idBlockVector:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 271
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 272
    invoke-static {v5}, Lcom/ibm/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    iget-object v5, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 275
    iget-object v5, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->dataVector:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    .line 276
    new-instance v6, Lcom/ibm/icu/text/RuleBasedTransliterator;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%Pass"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct {v6, v4, v5, v7}, Lcom/ibm/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/RuleBasedTransliterator$Data;Lcom/ibm/icu/text/UnicodeFilter;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    :cond_2
    new-instance v1, Lcom/ibm/icu/text/CompoundTransliterator;

    sub-int/2addr v4, v2

    invoke-direct {v1, v0, v4}, Lcom/ibm/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    .line 281
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->ID:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorRegistry$CompoundRBTEntry;->compoundFilter:Lcom/ibm/icu/text/UnicodeSet;

    if-eqz v0, :cond_3

    .line 283
    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/Transliterator;->setFilter(Lcom/ibm/icu/text/UnicodeFilter;)V

    :cond_3
    return-object v1
.end method
