.class Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;
.super Ljava/lang/Object;
.source "TransliteratorIDParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TransliteratorIDParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleID"
.end annotation


# instance fields
.field public basicID:Ljava/lang/String;

.field public canonID:Ljava/lang/String;

.field public filter:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    .line 119
    iput-object p2, p0, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getInstance()Lcom/ibm/icu/text/Transliterator;
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ibm/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;

    move-result-object v0

    goto :goto_1

    .line 128
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    const-string v1, "Any-Null"

    invoke-static {v1, v0}, Lcom/ibm/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    .line 133
    iget-object v1, p0, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 134
    new-instance v1, Lcom/ibm/icu/text/UnicodeSet;

    iget-object v2, p0, Lcom/ibm/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/ibm/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/Transliterator;->setFilter(Lcom/ibm/icu/text/UnicodeFilter;)V

    :cond_2
    return-object v0
.end method
