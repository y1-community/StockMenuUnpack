.class Lcom/ibm/icu/text/TransliteratorParser$ParseData;
.super Ljava/lang/Object;
.source "TransliteratorParser.java"

# interfaces
.implements Lcom/ibm/icu/text/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TransliteratorParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ibm/icu/text/TransliteratorParser;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/TransliteratorParser;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/TransliteratorParser;Lcom/ibm/icu/text/TransliteratorParser$1;)V
    .locals 0

    .line 202
    invoke-direct {p0, p1}, Lcom/ibm/icu/text/TransliteratorParser$ParseData;-><init>(Lcom/ibm/icu/text/TransliteratorParser;)V

    return-void
.end method


# virtual methods
.method public isMatcher(I)Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-static {v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$100(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    move-result-object v0

    iget-char v0, v0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-static {v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$200(Lcom/ibm/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-static {v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$200(Lcom/ibm/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/ibm/icu/text/UnicodeMatcher;

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public isReplacer(I)Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-static {v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$100(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    move-result-object v0

    iget-char v0, v0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-static {v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$200(Lcom/ibm/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-static {v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$200(Lcom/ibm/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/ibm/icu/text/UnicodeReplacer;

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public lookup(Ljava/lang/String;)[C
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-static {v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$000(Lcom/ibm/icu/text/TransliteratorParser;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    return-object p1
.end method

.method public lookupMatcher(I)Lcom/ibm/icu/text/UnicodeMatcher;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-static {v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$100(Lcom/ibm/icu/text/TransliteratorParser;)Lcom/ibm/icu/text/RuleBasedTransliterator$Data;

    move-result-object v0

    iget-char v0, v0, Lcom/ibm/icu/text/RuleBasedTransliterator$Data;->variablesBase:C

    sub-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-static {v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$200(Lcom/ibm/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/ibm/icu/text/TransliteratorParser$ParseData;->this$0:Lcom/ibm/icu/text/TransliteratorParser;

    invoke-static {v0}, Lcom/ibm/icu/text/TransliteratorParser;->access$200(Lcom/ibm/icu/text/TransliteratorParser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/UnicodeMatcher;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;
    .locals 4

    .line 232
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 235
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v0, :cond_0

    .line 236
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    :cond_0
    invoke-static {v2}, Lcom/ibm/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v1, v0, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 245
    :cond_3
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 246
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
