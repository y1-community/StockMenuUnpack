.class public final Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndex.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/AlphabeticIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImmutableIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ibm/icu/text/AlphabeticIndex$BucketList<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final collatorPrimaryOnly:Lcom/ibm/icu/text/Collator;


# direct methods
.method private constructor <init>(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;Lcom/ibm/icu/text/Collator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/AlphabeticIndex$BucketList<",
            "TV;>;",
            "Lcom/ibm/icu/text/Collator;",
            ")V"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    .line 178
    iput-object p2, p0, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/Collator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;Lcom/ibm/icu/text/Collator;Lcom/ibm/icu/text/AlphabeticIndex$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;-><init>(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;Lcom/ibm/icu/text/Collator;)V

    return-void
.end method


# virtual methods
.method public getBucket(I)Lcom/ibm/icu/text/AlphabeticIndex$Bucket;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v0}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;->access$200(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v0}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;->access$400(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ibm/icu/text/AlphabeticIndex$Bucket;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBucketCount()I
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    invoke-static {v0}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;->access$200(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;)I

    move-result v0

    return v0
.end method

.method public getBucketIndex(Ljava/lang/CharSequence;)I
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    iget-object v1, p0, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;->collatorPrimaryOnly:Lcom/ibm/icu/text/Collator;

    invoke-static {v0, p1, v1}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;->access$300(Lcom/ibm/icu/text/AlphabeticIndex$BucketList;Ljava/lang/CharSequence;Lcom/ibm/icu/text/Collator;)I

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/ibm/icu/text/AlphabeticIndex$Bucket<",
            "TV;>;>;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/ibm/icu/text/AlphabeticIndex$ImmutableIndex;->buckets:Lcom/ibm/icu/text/AlphabeticIndex$BucketList;

    invoke-virtual {v0}, Lcom/ibm/icu/text/AlphabeticIndex$BucketList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
