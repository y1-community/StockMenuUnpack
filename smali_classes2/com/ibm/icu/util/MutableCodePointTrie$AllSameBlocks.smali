.class final Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;
.super Ljava/lang/Object;
.source "MutableCodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/MutableCodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllSameBlocks"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CAPACITY:I = 0x20

.field static final NEW_UNIQUE:I = -0x1

.field static final OVERFLOW:I = -0x2


# instance fields
.field private indexes:[I

.field private length:I

.field private mostRecent:I

.field private refCounts:[I

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 650
    const-class v0, Lcom/ibm/icu/util/MutableCodePointTrie;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 654
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 717
    iput-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    new-array v1, v0, [I

    .line 718
    iput-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->values:[I

    new-array v0, v0, [I

    .line 719
    iput-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    const/4 v0, -0x1

    .line 655
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    return-void
.end method


# virtual methods
.method add(III)V
    .locals 5

    const/4 v0, -0x1

    const v1, 0x11000

    const/4 v2, 0x0

    .line 685
    :goto_0
    iget v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    if-ge v2, v3, :cond_1

    .line 687
    iget-object v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aget v4, v3, v2

    if-ge v4, v1, :cond_0

    .line 689
    aget v0, v3, v2

    move v1, v0

    move v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 693
    :cond_1
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    .line 694
    iget-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    aput p1, v1, v0

    .line 695
    iget-object p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->values:[I

    aput p3, p1, v0

    .line 696
    iget-object p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aput p2, p1, v0

    return-void
.end method

.method findMostUsed()I
    .locals 5

    .line 700
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 703
    :goto_0
    iget v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    if-ge v0, v3, :cond_2

    .line 704
    iget-object v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aget v4, v3, v0

    if-le v4, v1, :cond_1

    .line 706
    aget v1, v3, v0

    move v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_2
    iget-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    aget v0, v0, v2

    return v0
.end method

.method findOrAdd(III)I
    .locals 2

    .line 659
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->values:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    .line 660
    iget-object p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aget p3, p1, v0

    add-int/2addr p3, p2

    aput p3, p1, v0

    .line 661
    iget-object p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    aget p1, p1, v0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 663
    :goto_0
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    if-ge v0, v1, :cond_2

    .line 664
    iget-object v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->values:[I

    aget v1, v1, v0

    if-ne v1, p3, :cond_1

    .line 665
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    .line 666
    iget-object p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    aget p3, p1, v0

    add-int/2addr p3, p2

    aput p3, p1, v0

    .line 667
    iget-object p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    aget p1, p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x20

    if-ne v1, v0, :cond_3

    const/4 p1, -0x2

    return p1

    .line 673
    :cond_3
    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->mostRecent:I

    .line 674
    iget-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->indexes:[I

    aput p1, v0, v1

    .line 675
    iget-object p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->values:[I

    aput p3, p1, v1

    .line 676
    iget-object p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->refCounts:[I

    add-int/lit8 p3, v1, 0x1

    iput p3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$AllSameBlocks;->length:I

    aput p2, p1, v1

    const/4 p1, -0x1

    return p1
.end method
