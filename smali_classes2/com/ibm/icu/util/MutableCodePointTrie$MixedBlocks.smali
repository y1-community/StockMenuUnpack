.class final Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;
.super Ljava/lang/Object;
.source "MutableCodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/MutableCodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MixedBlocks"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private blockLength:I

.field private length:I

.field private mask:I

.field private shift:I

.field private table:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 724
    const-class v0, Lcom/ibm/icu/util/MutableCodePointTrie;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/util/MutableCodePointTrie$1;)V
    .locals 0

    .line 724
    invoke-direct {p0}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;-><init>()V

    return-void
.end method

.method private addEntry([I[CIII)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 851
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findEntry([I[C[I[CII)I

    move-result p1

    if-gez p1, :cond_0

    .line 853
    iget-object p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    xor-int/lit8 p1, p1, -0x1

    iget p3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    shl-int p3, p4, p3

    add-int/lit8 p5, p5, 0x1

    or-int/2addr p3, p5

    aput p3, p2, p1

    :cond_0
    return-void
.end method

.method private findEntry([III)I
    .locals 5

    .line 881
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    shl-int v0, p3, v0

    .line 882
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->length:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p3, v1}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->modulo(II)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    move v1, p3

    .line 884
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    xor-int/lit8 p1, v1, -0x1

    return p1

    .line 888
    :cond_0
    iget v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    xor-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v2

    if-ne v4, v0, :cond_1

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 890
    iget v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    invoke-static {p1, v2, v3, p2}, Lcom/ibm/icu/util/MutableCodePointTrie;->access$300([IIII)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    .line 894
    :cond_1
    invoke-direct {p0, p3, v1}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->nextIndex(II)I

    move-result v1

    goto :goto_0
.end method

.method private findEntry([I[C[I[CII)I
    .locals 5

    .line 859
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    shl-int v0, p6, v0

    .line 860
    iget v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->length:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p6, v1}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->modulo(II)I

    move-result p6

    add-int/lit8 p6, p6, 0x1

    move v1, p6

    .line 862
    :goto_0
    iget-object v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget v2, v2, v1

    if-nez v2, :cond_0

    xor-int/lit8 p1, v1, -0x1

    return p1

    .line 866
    :cond_0
    iget v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    xor-int/lit8 v4, v3, -0x1

    and-int/2addr v4, v2

    if-ne v4, v0, :cond_3

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_1

    .line 868
    iget v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    .line 869
    invoke-static {p1, v2, p3, p5, v3}, Lcom/ibm/icu/util/MutableCodePointTrie;->access$000([II[III)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    iget v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    .line 871
    invoke-static {p2, v2, p3, p5, v3}, Lcom/ibm/icu/util/MutableCodePointTrie;->access$100([CI[III)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    .line 872
    invoke-static {p2, v2, p4, p5, v3}, Lcom/ibm/icu/util/MutableCodePointTrie;->access$200([CI[CII)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    return v1

    .line 876
    :cond_3
    invoke-direct {p0, p6, v1}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->nextIndex(II)I

    move-result v1

    goto :goto_0
.end method

.method private makeHashCode(I)I
    .locals 3

    const/4 v0, 0x1

    move v1, p1

    .line 843
    :goto_0
    iget v2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private makeHashCode([CI)I
    .locals 3

    .line 833
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    add-int/2addr v0, p2

    add-int/lit8 v1, p2, 0x1

    .line 834
    aget-char p2, p1, p2

    :goto_0
    mul-int/lit8 p2, p2, 0x25

    add-int/lit8 v2, v1, 0x1

    .line 836
    aget-char v1, p1, v1

    add-int/2addr p2, v1

    if-lt v2, v0, :cond_0

    return p2

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private makeHashCode([II)I
    .locals 3

    .line 824
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    add-int/2addr v0, p2

    add-int/lit8 v1, p2, 0x1

    .line 825
    aget p2, p1, p2

    :goto_0
    mul-int/lit8 p2, p2, 0x25

    add-int/lit8 v2, v1, 0x1

    .line 827
    aget v1, p1, v1

    add-int/2addr p2, v1

    if-lt v2, v0, :cond_0

    return p2

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private modulo(II)I
    .locals 0

    .line 905
    rem-int/2addr p1, p2

    if-gez p1, :cond_0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method private nextIndex(II)I
    .locals 0

    add-int/2addr p2, p1

    .line 900
    iget p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->length:I

    rem-int/2addr p2, p1

    return p2
.end method


# virtual methods
.method extend([CIII)V
    .locals 6

    .line 771
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    sub-int/2addr p3, v0

    if-lt p3, p2, :cond_0

    add-int/lit8 p2, p3, 0x1

    :cond_0
    sub-int/2addr p4, v0

    :goto_0
    if-gt p2, p4, :cond_1

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode([CI)I

    move-result v4

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v5, p2

    .line 779
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->addEntry([I[CIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method extend([IIII)V
    .locals 6

    .line 758
    iget v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    sub-int/2addr p3, v0

    if-lt p3, p2, :cond_0

    add-int/lit8 p2, p3, 0x1

    :cond_0
    sub-int/2addr p4, v0

    :goto_0
    if-gt p2, p4, :cond_1

    .line 765
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode([II)I

    move-result v4

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p2

    .line 766
    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->addEntry([I[CIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method findAllSameBlock([II)I
    .locals 1

    .line 814
    invoke-direct {p0, p2}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode(I)I

    move-result v0

    .line 815
    invoke-direct {p0, p1, p2, v0}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findEntry([III)I

    move-result p1

    if-ltz p1, :cond_0

    .line 817
    iget-object p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget p1, p2, p1

    iget p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    and-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method findBlock([C[CI)I
    .locals 7

    .line 804
    invoke-direct {p0, p2, p3}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode([CI)I

    move-result v6

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    .line 805
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findEntry([I[C[I[CII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 807
    iget-object p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget p1, p2, p1

    iget p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    and-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method findBlock([C[II)I
    .locals 7

    .line 794
    invoke-direct {p0, p2, p3}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode([II)I

    move-result v6

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 795
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findEntry([I[C[I[CII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 797
    iget-object p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget p1, p2, p1

    iget p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    and-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method findBlock([I[II)I
    .locals 7

    .line 784
    invoke-direct {p0, p2, p3}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->makeHashCode([II)I

    move-result v6

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    .line 785
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->findEntry([I[C[I[CII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 787
    iget-object p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    aget p1, p2, p1

    iget p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    and-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method init(II)V
    .locals 2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0xfff

    if-gt p1, v0, :cond_0

    const/16 p1, 0x1777

    const/16 v1, 0xc

    .line 731
    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    .line 732
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x7fff

    if-gt p1, v0, :cond_1

    const p1, 0xc365

    const/16 v1, 0xf

    .line 735
    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    .line 736
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    goto :goto_0

    :cond_1
    const v0, 0x1ffff

    if-gt p1, v0, :cond_2

    const p1, 0x30d43

    const/16 v1, 0x11

    .line 739
    iput v1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    .line 740
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    goto :goto_0

    :cond_2
    const p1, 0x16e367

    const/16 v0, 0x15

    .line 744
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->shift:I

    const v0, 0x1fffff

    .line 745
    iput v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->mask:I

    .line 747
    :goto_0
    iget-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    if-eqz v0, :cond_4

    array-length v1, v0

    if-le p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 750
    invoke-static {v0, v1, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_2

    .line 748
    :cond_4
    :goto_1
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->table:[I

    .line 752
    :goto_2
    iput p1, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->length:I

    .line 754
    iput p2, p0, Lcom/ibm/icu/util/MutableCodePointTrie$MixedBlocks;->blockLength:I

    return-void
.end method
