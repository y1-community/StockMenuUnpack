.class public final Lcom/ibm/icu/util/CodePointTrie$Small8;
.super Lcom/ibm/icu/util/CodePointTrie$Small;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Small8"
.end annotation


# direct methods
.method constructor <init>([C[BIII)V
    .locals 7

    .line 1223
    new-instance v2, Lcom/ibm/icu/util/CodePointTrie$Data8;

    invoke-direct {v2, p2}, Lcom/ibm/icu/util/CodePointTrie$Data8;-><init>([B)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/CodePointTrie$Small;-><init>([CLcom/ibm/icu/util/CodePointTrie$Data;IIILcom/ibm/icu/util/CodePointTrie$1;)V

    return-void
.end method

.method public static fromBinary(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie$Small8;
    .locals 2

    .line 1236
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$Type;->SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;

    sget-object v1, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_8:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    invoke-static {v0, v1, p0}, Lcom/ibm/icu/util/CodePointTrie;->fromBinary(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/CodePointTrie$Small8;

    return-object p0
.end method
