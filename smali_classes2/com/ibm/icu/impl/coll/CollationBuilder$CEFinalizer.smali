.class final Lcom/ibm/icu/impl/coll/CollationBuilder$CEFinalizer;
.super Ljava/lang/Object;
.source "CollationBuilder.java"

# interfaces
.implements Lcom/ibm/icu/impl/coll/CollationDataBuilder$CEModifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/coll/CollationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CEFinalizer"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private finalCEs:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1322
    const-class v0, Lcom/ibm/icu/impl/coll/CollationBuilder;

    return-void
.end method

.method constructor <init>([J)V
    .locals 0

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1324
    iput-object p1, p0, Lcom/ibm/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    return-void
.end method


# virtual methods
.method public modifyCE(J)J
    .locals 5

    .line 1338
    invoke-static {p1, p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->access$200(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    invoke-static {p1, p2}, Lcom/ibm/icu/impl/coll/CollationBuilder;->access$300(J)I

    move-result v1

    aget-wide v1, v0, v1

    const-wide/32 v3, 0xc000

    and-long/2addr p1, v3

    or-long/2addr p1, v1

    return-wide p1

    :cond_0
    const-wide p1, 0x101000100L

    return-wide p1
.end method

.method public modifyCE32(I)J
    .locals 5

    .line 1329
    invoke-static {p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->access$000(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/ibm/icu/impl/coll/CollationBuilder$CEFinalizer;->finalCEs:[J

    invoke-static {p1}, Lcom/ibm/icu/impl/coll/CollationBuilder;->access$100(I)I

    move-result v1

    aget-wide v1, v0, v1

    and-int/lit16 p1, p1, 0xc0

    shl-int/lit8 p1, p1, 0x8

    int-to-long v3, p1

    or-long/2addr v1, v3

    return-wide v1

    :cond_0
    const-wide v0, 0x101000100L

    return-wide v0
.end method
