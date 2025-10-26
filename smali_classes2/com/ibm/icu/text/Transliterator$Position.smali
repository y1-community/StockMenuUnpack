.class public Lcom/ibm/icu/text/Transliterator$Position;
.super Ljava/lang/Object;
.source "Transliterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/Transliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Position"
.end annotation


# instance fields
.field public contextLimit:I

.field public contextStart:I

.field public limit:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 563
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/ibm/icu/text/Transliterator$Position;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 573
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/ibm/icu/text/Transliterator$Position;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    iput p1, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    .line 584
    iput p2, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    .line 585
    iput p3, p0, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    .line 586
    iput p4, p0, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/text/Transliterator$Position;)V
    .locals 0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 594
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/Transliterator$Position;->set(Lcom/ibm/icu/text/Transliterator$Position;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 614
    instance-of v0, p1, Lcom/ibm/icu/text/Transliterator$Position;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 615
    check-cast p1, Lcom/ibm/icu/text/Transliterator$Position;

    .line 616
    iget v0, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    iget v2, p1, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    iget v2, p1, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iget v2, p1, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iget p1, p1, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 630
    iget v1, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public set(Lcom/ibm/icu/text/Transliterator$Position;)V
    .locals 1

    .line 602
    iget v0, p1, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    iput v0, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    .line 603
    iget v0, p1, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    iput v0, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    .line 604
    iget v0, p1, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    iput v0, p0, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    .line 605
    iget p1, p1, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    iput p1, p0, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[cs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final validate(I)V
    .locals 3

    .line 655
    iget v0, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    if-lt v1, v0, :cond_0

    iget v0, p0, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    if-lt v1, v0, :cond_0

    if-lt p1, v1, :cond_0

    return-void

    .line 660
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Position {cs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ibm/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ibm/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ibm/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "}, len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
