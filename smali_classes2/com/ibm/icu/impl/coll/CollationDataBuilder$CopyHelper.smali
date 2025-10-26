.class final Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;
.super Ljava/lang/Object;
.source "CollationDataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/coll/CollationDataBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CopyHelper"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

.field modifiedCEs:[J

.field modifier:Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;

.field src:Lcom/ibm/icu/impl/coll/CollationDataBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 669
    const-class v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/impl/coll/CollationDataBuilder;Lcom/ibm/icu/impl/coll/CollationDataBuilder;Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;)V
    .locals 1

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    new-array v0, v0, [J

    .line 783
    iput-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    .line 672
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    .line 673
    iput-object p2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    .line 674
    iput-object p3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;

    return-void
.end method


# virtual methods
.method copyCE32(I)I
    .locals 14

    .line 686
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v0

    const-wide v1, 0x101000100L

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;

    invoke-interface {v0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE32(I)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_11

    .line 689
    iget-object p1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {p1, v3, v4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeOneCE(J)I

    move-result p1

    goto/16 :goto_8

    .line 692
    :cond_0
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->tagFromCE32(I)I

    move-result v0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v3, :cond_8

    .line 694
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce32s:Lcom/ibm/icu/impl/coll/UVector32;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector32;->getBuffer()[I

    move-result-object v0

    .line 695
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    .line 696
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, p1, :cond_6

    add-int v8, v3, v6

    .line 701
    aget v8, v0, v8

    .line 703
    invoke-static {v8}, Lcom/ibm/icu/impl/coll/Collation;->isSpecialCE32(I)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;

    .line 704
    invoke-interface {v9, v8}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE32(I)J

    move-result-wide v9

    cmp-long v11, v9, v1

    if-nez v11, :cond_1

    goto :goto_2

    :cond_1
    if-nez v7, :cond_3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    .line 711
    iget-object v8, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    add-int v11, v3, v7

    aget v11, v0, v11

    invoke-static {v11}, Lcom/ibm/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v11

    aput-wide v11, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    .line 715
    :cond_3
    iget-object v8, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    aput-wide v9, v8, v6

    goto :goto_3

    :cond_4
    :goto_2
    if-eqz v7, :cond_5

    .line 706
    iget-object v9, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    invoke-static {v8}, Lcom/ibm/icu/impl/coll/Collation;->ceFromCE32(I)J

    move-result-wide v10

    aput-wide v10, v9, v6

    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    if-eqz v7, :cond_7

    .line 719
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result p1

    goto/16 :goto_8

    .line 721
    :cond_7
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v1, v0, v3, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeExpansion32([III)I

    move-result p1

    goto/16 :goto_8

    :cond_8
    const/4 v3, 0x6

    if-ne v0, v3, :cond_f

    .line 724
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->ce64s:Lcom/ibm/icu/impl/coll/UVector64;

    invoke-virtual {v0}, Lcom/ibm/icu/impl/coll/UVector64;->getBuffer()[J

    move-result-object v0

    .line 725
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->indexFromCE32(I)I

    move-result v3

    .line 726
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/Collation;->lengthFromCE32(I)I

    move-result p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v6, p1, :cond_d

    add-int v8, v3, v6

    .line 731
    aget-wide v8, v0, v8

    .line 732
    iget-object v10, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifier:Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;

    invoke-interface {v10, v8, v9}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;->modifyCE(J)J

    move-result-wide v10

    cmp-long v12, v10, v1

    if-nez v12, :cond_9

    if-eqz v7, :cond_c

    .line 735
    iget-object v10, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    aput-wide v8, v10, v6

    goto :goto_6

    :cond_9
    if-nez v7, :cond_b

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v6, :cond_a

    .line 740
    iget-object v8, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    add-int v9, v3, v7

    aget-wide v12, v0, v9

    aput-wide v12, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_a
    const/4 v7, 0x1

    .line 744
    :cond_b
    iget-object v8, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    aput-wide v10, v8, v6

    :cond_c
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    if-eqz v7, :cond_e

    .line 748
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->modifiedCEs:[J

    invoke-virtual {v0, v1, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeCEs([JI)I

    move-result p1

    goto :goto_8

    .line 750
    :cond_e
    iget-object v1, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v1, v0, v3, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->encodeExpansion([JII)I

    move-result p1

    goto :goto_8

    :cond_f
    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    .line 754
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32ForCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p1

    .line 756
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v1, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    iget v2, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 757
    invoke-virtual {p0, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    move-result v2

    .line 756
    invoke-virtual {v0, v1, v2}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v0

    .line 758
    invoke-static {v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->makeBuilderContextCE32(I)I

    move-result v1

    .line 759
    :goto_7
    iget v2, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    if-ltz v2, :cond_10

    .line 760
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->src:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget p1, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    invoke-virtual {v2, p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object p1

    .line 761
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    invoke-virtual {v2, v0}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->getConditionalCE32(I)Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;

    move-result-object v0

    .line 762
    iget-object v2, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v3, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    iget v4, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->ce32:I

    .line 763
    invoke-virtual {p0, v4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    move-result v4

    .line 762
    invoke-virtual {v2, v3, v4}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->addConditionalCE32(Ljava/lang/String;I)I

    move-result v2

    .line 764
    invoke-virtual {p1}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->prefixLength()I

    move-result v3

    add-int/2addr v3, v5

    .line 765
    iget-object v4, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v4, v4, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->unsafeBackwardSet:Lcom/ibm/icu/text/UnicodeSet;

    iget-object v6, p1, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->context:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ibm/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/UnicodeSet;

    .line 766
    iput v2, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$ConditionalCE32;->next:I

    move v0, v2

    goto :goto_7

    :cond_10
    move p1, v1

    :cond_11
    :goto_8
    return p1
.end method

.method copyRangeCE32(III)V
    .locals 2

    .line 678
    invoke-virtual {p0, p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->copyCE32(I)I

    move-result p3

    .line 679
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object v0, v0, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->trie:Lcom/ibm/icu/impl/Trie2Writable;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/ibm/icu/impl/Trie2Writable;->setRange(IIIZ)Lcom/ibm/icu/impl/Trie2Writable;

    .line 680
    invoke-static {p3}, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->isBuilderContextCE32(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 681
    iget-object p3, p0, Lcom/ibm/icu/impl/coll/CollationDataBuilder$CopyHelper;->dest:Lcom/ibm/icu/impl/coll/CollationDataBuilder;

    iget-object p3, p3, Lcom/ibm/icu/impl/coll/CollationDataBuilder;->contextChars:Lcom/ibm/icu/text/UnicodeSet;

    invoke-virtual {p3, p1, p2}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method
