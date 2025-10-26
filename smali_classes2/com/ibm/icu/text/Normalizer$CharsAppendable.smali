.class final Lcom/ibm/icu/text/Normalizer$CharsAppendable;
.super Ljava/lang/Object;
.source "Normalizer.java"

# interfaces
.implements Ljava/lang/Appendable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Normalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharsAppendable"
.end annotation


# instance fields
.field private final chars:[C

.field private final limit:I

.field private offset:I

.field private final start:I


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    .line 2513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2514
    iput-object p1, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->chars:[C

    .line 2515
    iput p2, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->offset:I

    iput p2, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->start:I

    .line 2516
    iput p3, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->limit:I

    return-void
.end method


# virtual methods
.method public append(C)Ljava/lang/Appendable;
    .locals 2

    .line 2528
    iget v0, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->offset:I

    iget v1, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->limit:I

    if-ge v0, v1, :cond_0

    .line 2529
    iget-object v1, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->chars:[C

    aput-char p1, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 2531
    iput v0, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->offset:I

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 2

    .line 2536
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 3

    sub-int v0, p3, p2

    .line 2541
    iget v1, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->limit:I

    iget v2, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->offset:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 2543
    iget-object v0, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->chars:[C

    iget v1, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->offset:I

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    aput-char p2, v0, v1

    move p2, v2

    goto :goto_0

    :cond_0
    add-int/2addr v2, v0

    .line 2546
    iput v2, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->offset:I

    :cond_1
    return-object p0
.end method

.method public length()I
    .locals 3

    .line 2519
    iget v0, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->offset:I

    iget v1, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->start:I

    sub-int v1, v0, v1

    .line 2520
    iget v2, p0, Lcom/ibm/icu/text/Normalizer$CharsAppendable;->limit:I

    if-gt v0, v2, :cond_0

    return v1

    .line 2523
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
