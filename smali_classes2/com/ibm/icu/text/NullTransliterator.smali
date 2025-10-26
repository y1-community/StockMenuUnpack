.class Lcom/ibm/icu/text/NullTransliterator;
.super Lcom/ibm/icu/text/Transliterator;
.source "NullTransliterator.java"


# static fields
.field static final SHORT_ID:Ljava/lang/String; = "Null"

.field static final _ID:Ljava/lang/String; = "Any-Null"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Any-Null"

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/text/Transliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/UnicodeFilter;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;Lcom/ibm/icu/text/UnicodeSet;)V
    .locals 0

    return-void
.end method

.method protected handleTransliterate(Lcom/ibm/icu/text/Replaceable;Lcom/ibm/icu/text/Transliterator$Position;Z)V
    .locals 0

    .line 34
    iget p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iput p1, p2, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    return-void
.end method
