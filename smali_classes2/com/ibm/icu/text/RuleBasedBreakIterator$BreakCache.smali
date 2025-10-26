.class Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;
.super Ljava/lang/Object;
.source "RuleBasedBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RuleBasedBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BreakCache"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final CACHE_SIZE:I = 0x80

.field static final RetainCachePosition:Z = false

.field static final UpdateCachePosition:Z = true


# instance fields
.field fBoundaries:[I

.field fBufIdx:I

.field fEndBufIdx:I

.field fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

.field fStartBufIdx:I

.field fStatuses:[S

.field fTextIdx:I

.field final synthetic this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1286
    const-class v0, Lcom/ibm/icu/text/RuleBasedBreakIterator;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/RuleBasedBreakIterator;)V
    .locals 1

    .line 1288
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array v0, p1, [I

    .line 1785
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    new-array p1, p1, [S

    .line 1786
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    .line 1788
    new-instance p1, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-direct {p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    .line 1289
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->reset()V

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/RuleBasedBreakIterator;Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;)V
    .locals 1

    .line 1754
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x80

    new-array v0, p1, [I

    .line 1785
    iput-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    new-array p1, p1, [S

    .line 1786
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    .line 1788
    new-instance p1, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-direct {p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    .line 1755
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1756
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1757
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1758
    iget p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1759
    iget-object p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    .line 1760
    iget-object p1, p2, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    invoke-virtual {p1}, [S->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    .line 1761
    new-instance p1, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-direct {p1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    return-void
.end method

.method private final modChunkSize(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x7f

    return p1
.end method


# virtual methods
.method addFollowing(IIZ)V
    .locals 3

    .line 1655
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    .line 1656
    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, v2, 0x6

    .line 1657
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1659
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aput p1, v2, v0

    .line 1660
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    int-to-short p2, p2

    aput-short p2, v2, v0

    .line 1661
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne p3, v1, :cond_1

    .line 1664
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1665
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    :cond_1
    return-void
.end method

.method addPreceding(IIZ)Z
    .locals 4

    .line 1684
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    .line 1685
    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne v0, v2, :cond_1

    .line 1686
    iget v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    if-ne v3, v2, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr v2, v1

    .line 1692
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v2

    iput v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1694
    :cond_1
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aput p1, v2, v0

    .line 1695
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    int-to-short p2, p2

    aput-short p2, v2, v0

    .line 1696
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    if-ne p3, v1, :cond_2

    .line 1698
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1699
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    :cond_2
    return v1
.end method

.method current()I
    .locals 3

    .line 1366
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$302(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    .line 1367
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short v1, v1, v2

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$402(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    .line 1368
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$202(Lcom/ibm/icu/text/RuleBasedBreakIterator;Z)Z

    .line 1369
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    return v0
.end method

.method dumpCache()V
    .locals 7

    .line 1765
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "fTextIdx:%d   fBufIdx:%d%n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1766
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1767
    :goto_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v6, "%d  %d%n"

    invoke-virtual {v2, v6, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1768
    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1766
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    goto :goto_0
.end method

.method following(I)V
    .locals 1

    .line 1334
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1340
    :cond_0
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$202(Lcom/ibm/icu/text/RuleBasedBreakIterator;Z)Z

    .line 1341
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->next()V

    :cond_1
    return-void
.end method

.method next()V
    .locals 3

    .line 1304
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne v0, v1, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->populateFollowing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$202(Lcom/ibm/icu/text/RuleBasedBreakIterator;Z)Z

    .line 1306
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$302(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    .line 1307
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short v1, v1, v2

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$402(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1309
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1310
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aget v0, v2, v0

    invoke-static {v1, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$302(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1311
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short v1, v1, v2

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$402(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    :goto_0
    return-void
.end method

.method populateFollowing()Z
    .locals 8

    .line 1475
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v0, v0, v1

    .line 1476
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    aget-short v1, v2, v1

    .line 1480
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->following(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v0

    iget v0, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v1

    iget v1, v1, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    return v3

    .line 1485
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v2, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$302(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    .line 1486
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$600(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v2, v4, :cond_1

    return v5

    .line 1491
    :cond_1
    iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v6}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$400(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v6

    .line 1492
    iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$800(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v7

    if-lez v7, :cond_2

    .line 1495
    iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v7

    invoke-virtual {v7, v0, v2, v1, v6}, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->populateDictionary(IIII)V

    .line 1496
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->following(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1497
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v0

    iget v0, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v1

    iget v1, v1, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    invoke-virtual {p0, v0, v1, v3}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    return v3

    .line 1508
    :cond_2
    invoke-virtual {p0, v2, v6, v3}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 1514
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$600(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v1

    if-eq v1, v4, :cond_4

    .line 1515
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$800(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_1

    .line 1518
    :cond_3
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$400(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v2

    invoke-virtual {p0, v1, v2, v5}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v3
.end method

.method populateNear(I)Z
    .locals 5

    .line 1398
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v1, v0, v1

    add-int/lit8 v1, v1, -0xf

    const/4 v2, 0x0

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0xf

    if-le p1, v0, :cond_4

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    add-int/lit8 v1, v0, 0x14

    if-le p1, v1, :cond_3

    .line 1402
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v1, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$500(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    move-result v1

    if-le v1, v0, :cond_2

    .line 1410
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$302(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    .line 1411
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$600(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v0

    add-int/lit8 v3, v1, 0x1

    if-eq v0, v3, :cond_1

    add-int/lit8 v3, v1, 0x2

    if-ne v0, v3, :cond_2

    .line 1412
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    .line 1414
    invoke-static {v3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    .line 1415
    invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1418
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$600(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v0

    .line 1421
    :cond_2
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$400(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1423
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->reset(II)V

    .line 1428
    :cond_4
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v1, v0, v1

    const/4 v3, 0x1

    if-ge v1, p1, :cond_8

    .line 1431
    :cond_5
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v4, v0, v1

    if-ge v4, p1, :cond_6

    .line 1432
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->populateFollowing()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 1437
    :cond_6
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1438
    aget v0, v0, v1

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1439
    :goto_1
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-le v0, p1, :cond_7

    .line 1440
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    goto :goto_1

    :cond_7
    return v3

    .line 1445
    :cond_8
    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v0, v0, v1

    if-le v0, p1, :cond_b

    .line 1448
    :goto_2
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v2, v0, v1

    if-le v2, p1, :cond_9

    .line 1449
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->populatePreceding()Z

    goto :goto_2

    .line 1451
    :cond_9
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1452
    aget v0, v0, v1

    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1453
    :goto_3
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-ge v0, p1, :cond_a

    .line 1454
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->next()V

    goto :goto_3

    :cond_a
    if-le v0, p1, :cond_b

    .line 1459
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    :cond_b
    return v3
.end method

.method populatePreceding()Z
    .locals 9

    .line 1529
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 1530
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v1, v1, v2

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    return v2

    .line 1538
    :cond_0
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->preceding(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1539
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v0

    iget v0, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v1

    iget v1, v1, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    invoke-virtual {p0, v0, v1, v4}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->addPreceding(IIZ)Z

    return v4

    :cond_1
    move v3, v1

    :cond_2
    add-int/lit8 v3, v3, -0x1e

    if-gt v3, v0, :cond_3

    move v3, v0

    goto :goto_0

    .line 1551
    :cond_3
    iget-object v5, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v5, v3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$500(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    move-result v3

    :goto_0
    const/4 v5, -0x1

    if-eq v3, v5, :cond_7

    if-ne v3, v0, :cond_4

    goto :goto_1

    .line 1563
    :cond_4
    iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v6, v3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$302(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    .line 1564
    iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v6}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$600(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v6

    add-int/lit8 v7, v3, 0x1

    if-eq v6, v7, :cond_5

    add-int/lit8 v7, v3, 0x2

    if-ne v6, v7, :cond_6

    .line 1565
    iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    .line 1567
    invoke-static {v7}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    .line 1568
    invoke-static {v7}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$000(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/text/CharacterIterator;->next()C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1571
    :cond_5
    iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v6}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$600(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v6

    .line 1573
    :cond_6
    iget-object v7, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$400(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v7

    goto :goto_2

    :cond_7
    :goto_1
    move v6, v0

    const/4 v7, 0x0

    :goto_2
    if-ge v6, v1, :cond_2

    .line 1580
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->removeAllElements()V

    .line 1581
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1582
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, v7}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1585
    :goto_3
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0, v6}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$302(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    move-result v0

    .line 1587
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v3}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$600(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v3

    .line 1588
    iget-object v6, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v6}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$400(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v6

    if-ne v3, v5, :cond_8

    goto :goto_7

    .line 1594
    :cond_8
    iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$800(Lcom/ibm/icu/text/RuleBasedBreakIterator;)I

    move-result v8

    if-eqz v8, :cond_b

    .line 1598
    iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v8

    invoke-virtual {v8, v0, v3, v7, v6}, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->populateDictionary(IIII)V

    const/4 v7, 0x0

    .line 1599
    :goto_4
    iget-object v8, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->following(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1600
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v0

    iget v3, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1601
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$700(Lcom/ibm/icu/text/RuleBasedBreakIterator;)Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v0

    iget v6, v0, Lcom/ibm/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    if-lt v3, v1, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    .line 1608
    :cond_9
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, v3}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1609
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0, v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    move v0, v3

    const/4 v7, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    move v0, v6

    goto :goto_6

    :cond_b
    move v0, v6

    const/4 v7, 0x0

    :goto_6
    move v6, v3

    if-nez v7, :cond_c

    if-ge v6, v1, :cond_c

    .line 1616
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v3, v6}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1617
    iget-object v3, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    :cond_c
    if-lt v6, v1, :cond_10

    .line 1623
    :goto_7
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1624
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    move-result v0

    .line 1625
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    move-result v1

    .line 1626
    invoke-virtual {p0, v1, v0, v4}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->addPreceding(IIZ)Z

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    .line 1630
    :cond_e
    :goto_8
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1631
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    move-result v0

    .line 1632
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;

    invoke-virtual {v1}, Lcom/ibm/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    move-result v1

    .line 1633
    invoke-virtual {p0, v1, v0, v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->addPreceding(IIZ)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_f
    return v4

    :cond_10
    move v7, v0

    goto/16 :goto_3
.end method

.method preceding(I)V
    .locals 1

    .line 1347
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1348
    :cond_0
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-ne p1, v0, :cond_1

    .line 1349
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    goto :goto_0

    .line 1355
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->current()I

    :cond_2
    :goto_0
    return-void
.end method

.method previous()V
    .locals 3

    .line 1316
    iget v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1317
    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    if-ne v0, v1, :cond_0

    .line 1319
    invoke-virtual {p0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->populatePreceding()Z

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    .line 1322
    invoke-direct {p0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v1

    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1323
    iget-object v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aget v1, v2, v1

    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1325
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    if-ne v2, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$202(Lcom/ibm/icu/text/RuleBasedBreakIterator;Z)Z

    .line 1326
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$302(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    .line 1327
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Lcom/ibm/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short v1, v1, v2

    invoke-static {v0, v1}, Lcom/ibm/icu/text/RuleBasedBreakIterator;->access$402(Lcom/ibm/icu/text/RuleBasedBreakIterator;I)I

    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1301
    invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->reset(II)V

    return-void
.end method

.method reset(II)V
    .locals 2

    const/4 v0, 0x0

    .line 1293
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1294
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1295
    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1296
    iput v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1297
    iget-object v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aput p1, v1, v0

    .line 1298
    iget-object p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    int-to-short p2, p2

    aput-short p2, p1, v0

    return-void
.end method

.method seek(I)Z
    .locals 6

    .line 1714
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v2, v0, v1

    const/4 v3, 0x0

    if-lt p1, v2, :cond_6

    iget v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v4, v0, v2

    if-le p1, v4, :cond_0

    goto :goto_2

    .line 1717
    :cond_0
    aget v4, v0, v1

    const/4 v5, 0x1

    if-ne p1, v4, :cond_1

    .line 1719
    iput v1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1720
    aget p1, v0, v1

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    return v5

    .line 1723
    :cond_1
    aget v4, v0, v2

    if-ne p1, v4, :cond_2

    .line 1724
    iput v2, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1725
    aget p1, v0, v2

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    return v5

    :cond_2
    :goto_0
    if-eq v1, v2, :cond_5

    add-int v0, v1, v2

    if-le v1, v2, :cond_3

    const/16 v4, 0x80

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    add-int/2addr v0, v4

    .line 1732
    div-int/lit8 v0, v0, 0x2

    .line 1733
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    .line 1734
    iget-object v4, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aget v4, v4, v0

    if-le v4, p1, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 1737
    invoke-direct {p0, v0}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_5
    sub-int/2addr v2, v5

    .line 1741
    invoke-direct {p0, v2}, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result p1

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1742
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aget p1, v0, p1

    iput p1, p0, Lcom/ibm/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    return v5

    :cond_6
    :goto_2
    return v3
.end method
