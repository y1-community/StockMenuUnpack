.class public final Lcom/ibm/icu/util/CodePointTrie$Fast16;
.super Lcom/ibm/icu/util/CodePointTrie$Fast;
.source "CodePointTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/util/CodePointTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fast16"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final dataArray:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 999
    const-class v0, Lcom/ibm/icu/util/CodePointTrie;

    return-void
.end method

.method constructor <init>([C[CIII)V
    .locals 7

    .line 1004
    new-instance v2, Lcom/ibm/icu/util/CodePointTrie$Data16;

    invoke-direct {v2, p2}, Lcom/ibm/icu/util/CodePointTrie$Data16;-><init>([C)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/ibm/icu/util/CodePointTrie$Fast;-><init>([CLcom/ibm/icu/util/CodePointTrie$Data;IIILcom/ibm/icu/util/CodePointTrie$1;)V

    .line 1005
    iput-object p2, p0, Lcom/ibm/icu/util/CodePointTrie$Fast16;->dataArray:[C

    return-void
.end method

.method public static fromBinary(Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie$Fast16;
    .locals 2

    .line 1018
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    sget-object v1, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_16:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    invoke-static {v0, v1, p0}, Lcom/ibm/icu/util/CodePointTrie;->fromBinary(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;Ljava/nio/ByteBuffer;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/CodePointTrie$Fast16;

    return-object p0
.end method


# virtual methods
.method public final bmpGet(I)I
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast16;->dataArray:[C

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->fastIndex(I)I

    move-result p1

    aget-char p1, v0, p1

    return p1
.end method

.method public final get(I)I
    .locals 1

    .line 1027
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast16;->dataArray:[C

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->cpIndex(I)I

    move-result p1

    aget-char p1, v0, p1

    return p1
.end method

.method public final suppGet(I)I
    .locals 2

    .line 1047
    iget-object v0, p0, Lcom/ibm/icu/util/CodePointTrie$Fast16;->dataArray:[C

    sget-object v1, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/util/CodePointTrie$Fast16;->smallIndex(Lcom/ibm/icu/util/CodePointTrie$Type;I)I

    move-result p1

    aget-char p1, v0, p1

    return p1
.end method
