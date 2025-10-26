.class Lcom/ibm/icu/text/NormalizationTransliterator$NormalizingTransform;
.super Ljava/lang/Object;
.source "NormalizationTransliterator.java"

# interfaces
.implements Lcom/ibm/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/NormalizationTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NormalizingTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ibm/icu/text/Transform<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final norm2:Lcom/ibm/icu/text/Normalizer2;


# direct methods
.method public constructor <init>(Lcom/ibm/icu/text/Normalizer2;)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/ibm/icu/text/NormalizationTransliterator$NormalizingTransform;->norm2:Lcom/ibm/icu/text/Normalizer2;

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 142
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/NormalizationTransliterator$NormalizingTransform;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/ibm/icu/text/NormalizationTransliterator$NormalizingTransform;->norm2:Lcom/ibm/icu/text/Normalizer2;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
