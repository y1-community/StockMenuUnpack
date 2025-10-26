.class final Lcom/ibm/icu/text/NormalizationTransliterator$3;
.super Ljava/lang/Object;
.source "NormalizationTransliterator.java"

# interfaces
.implements Lcom/ibm/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ibm/icu/text/NormalizationTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/Transliterator;
    .locals 3

    .line 45
    new-instance p1, Lcom/ibm/icu/text/NormalizationTransliterator;

    invoke-static {}, Lcom/ibm/icu/text/Normalizer2;->getNFKCInstance()Lcom/ibm/icu/text/Normalizer2;

    move-result-object v0

    const-string v1, "NFKC"

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/ibm/icu/text/NormalizationTransliterator;-><init>(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer2;Lcom/ibm/icu/text/NormalizationTransliterator$1;)V

    return-object p1
.end method
