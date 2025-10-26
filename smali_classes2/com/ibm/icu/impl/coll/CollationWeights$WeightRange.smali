.class final Lcom/ibm/icu/impl/coll/CollationWeights$WeightRange;
.super Ljava/lang/Object;
.source "CollationWeights.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/coll/CollationWeights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WeightRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ibm/icu/impl/coll/CollationWeights$WeightRange;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field end:J

.field length:I

.field start:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/impl/coll/CollationWeights$1;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/ibm/icu/impl/coll/CollationWeights$WeightRange;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/impl/coll/CollationWeights$WeightRange;)I
    .locals 4

    .line 165
    iget-wide v0, p0, Lcom/ibm/icu/impl/coll/CollationWeights$WeightRange;->start:J

    .line 166
    iget-wide v2, p1, Lcom/ibm/icu/impl/coll/CollationWeights$WeightRange;->start:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 159
    check-cast p1, Lcom/ibm/icu/impl/coll/CollationWeights$WeightRange;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/impl/coll/CollationWeights$WeightRange;->compareTo(Lcom/ibm/icu/impl/coll/CollationWeights$WeightRange;)I

    move-result p1

    return p1
.end method
