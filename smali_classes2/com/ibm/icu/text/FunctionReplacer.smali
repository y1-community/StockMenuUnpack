.class Lcom/ibm/icu/text/FunctionReplacer;
.super Ljava/lang/Object;
.source "FunctionReplacer.java"

# interfaces
.implements Lcom/ibm/icu/text/UnicodeReplacer;


# instance fields
.field private replacer:Lcom/ibm/icu/text/UnicodeReplacer;

.field private translit:Lcom/ibm/icu/text/Transliterator;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/Transliterator;Lcom/ibm/icu/text/UnicodeReplacer;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/ibm/icu/text/FunctionReplacer;->translit:Lcom/ibm/icu/text/Transliterator;

    .line 43
    iput-object p2, p0, Lcom/ibm/icu/text/FunctionReplacer;->replacer:Lcom/ibm/icu/text/UnicodeReplacer;

    return-void
.end method


# virtual methods
.method public addReplacementSetTo(Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/ibm/icu/text/FunctionReplacer;->translit:Lcom/ibm/icu/text/Transliterator;

    invoke-virtual {v0}, Lcom/ibm/icu/text/Transliterator;->getTargetSet()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Lcom/ibm/icu/text/UnicodeSet;)Lcom/ibm/icu/text/UnicodeSet;

    return-void
.end method

.method public replace(Lcom/ibm/icu/text/Replaceable;II[I)I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ibm/icu/text/FunctionReplacer;->replacer:Lcom/ibm/icu/text/UnicodeReplacer;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ibm/icu/text/UnicodeReplacer;->replace(Lcom/ibm/icu/text/Replaceable;II[I)I

    move-result p3

    add-int/2addr p3, p2

    .line 60
    iget-object p4, p0, Lcom/ibm/icu/text/FunctionReplacer;->translit:Lcom/ibm/icu/text/Transliterator;

    invoke-virtual {p4, p1, p2, p3}, Lcom/ibm/icu/text/Transliterator;->transliterate(Lcom/ibm/icu/text/Replaceable;II)I

    move-result p1

    sub-int/2addr p1, p2

    return p1
.end method

.method public toReplacerPattern(Z)Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/ibm/icu/text/FunctionReplacer;->translit:Lcom/ibm/icu/text/Transliterator;

    invoke-virtual {v1}, Lcom/ibm/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "( "

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/ibm/icu/text/FunctionReplacer;->replacer:Lcom/ibm/icu/text/UnicodeReplacer;

    invoke-interface {v1, p1}, Lcom/ibm/icu/text/UnicodeReplacer;->toReplacerPattern(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
