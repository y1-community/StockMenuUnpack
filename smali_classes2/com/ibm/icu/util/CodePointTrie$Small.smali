.class public abstract Lcom/ibm/icu/util/CodePointTrie$Small;
.super Lcom/ibm/icu/util/CodePointTrie;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Small"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;
    }
.end annotation


# direct methods
.method private constructor <init>([CLcom/ibm/icu/util/CodePointTrie$Data;III)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 885
    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/CodePointTrie;-><init>([CLcom/ibm/icu/util/CodePointTrie$Data;IIILcom/ibm/icu/util/CodePointTrie$1;)V

    return-void
.end method

.method synthetic constructor <init>([CLcom/ibm/icu/util/CodePointTrie$Data;IIILcom/ibm/icu/util/CodePointTrie$1;)V
    .locals 0

    .line 882
    invoke-direct/range {p0 .. p5}, Lcom/ibm/icu/util/CodePointTrie$Small;-><init>([CLcom/ibm/icu/util/CodePointTrie$Data;III)V

    return-void
.end method

.method public static fromBinary(Lcom/ibm/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie$Small;
    .locals 1

    .line 901
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$Type;->SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;

    invoke-static {v0, p0, p1}, Lcom/ibm/icu/util/CodePointTrie;->fromBinary(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/CodePointTrie$Small;

    return-object p0
.end method


# virtual methods
.method protected final cpIndex(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p1, :cond_1

    const/16 v0, 0xfff

    if-gt p1, v0, :cond_0

    .line 920
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CodePointTrie$Small;->fastIndex(I)I

    move-result p1

    return p1

    :cond_0
    const v0, 0x10ffff

    if-gt p1, v0, :cond_1

    .line 922
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$Type;->SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;

    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/CodePointTrie$Small;->smallIndex(Lcom/ibm/icu/util/CodePointTrie$Type;I)I

    move-result p1

    return p1

    .line 925
    :cond_1
    iget p1, p0, Lcom/ibm/icu/util/CodePointTrie$Small;->dataLength:I

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final getType()Lcom/ibm/icu/util/CodePointTrie$Type;
    .locals 1

    .line 909
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$Type;->SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;

    return-object v0
.end method

.method public final stringIterator(Ljava/lang/CharSequence;I)Lcom/ibm/icu/util/CodePointMap$StringIterator;
    .locals 2

    .line 934
    new-instance v0, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ibm/icu/util/CodePointTrie$Small$SmallStringIterator;-><init>(Lcom/ibm/icu/util/CodePointTrie$Small;Ljava/lang/CharSequence;ILcom/ibm/icu/util/CodePointTrie$1;)V

    return-object v0
.end method
