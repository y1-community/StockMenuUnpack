.class final Lcom/ibm/icu/text/Collator$KeywordsSink;
.super Lcom/ibm/icu/impl/UResource$Sink;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeywordsSink"
.end annotation


# instance fields
.field hasDefault:Z

.field values:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1018
    invoke-direct {p0}, Lcom/ibm/icu/impl/UResource$Sink;-><init>()V

    .line 1019
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ibm/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 1020
    iput-boolean v0, p0, Lcom/ibm/icu/text/Collator$KeywordsSink;->hasDefault:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/Collator$1;)V
    .locals 0

    .line 1018
    invoke-direct {p0}, Lcom/ibm/icu/text/Collator$KeywordsSink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Lcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;Z)V
    .locals 3

    .line 1024
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 1025
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->getKeyAndValue(ILcom/ibm/icu/impl/UResource$Key;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1026
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 1028
    iget-boolean v1, p0, Lcom/ibm/icu/text/Collator$KeywordsSink;->hasDefault:Z

    if-nez v1, :cond_1

    const-string v1, "default"

    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1029
    invoke-virtual {p2}, Lcom/ibm/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    .line 1030
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1031
    iget-object v2, p0, Lcom/ibm/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1032
    iget-object v2, p0, Lcom/ibm/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 1033
    iput-boolean v1, p0, Lcom/ibm/icu/text/Collator$KeywordsSink;->hasDefault:Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "private-"

    .line 1036
    invoke-virtual {p1, v1}, Lcom/ibm/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1037
    invoke-virtual {p1}, Lcom/ibm/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1038
    iget-object v2, p0, Lcom/ibm/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1039
    iget-object v2, p0, Lcom/ibm/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
