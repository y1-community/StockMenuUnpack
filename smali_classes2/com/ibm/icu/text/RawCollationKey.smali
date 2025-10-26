.class public final Lcom/ibm/icu/text/RawCollationKey;
.super Lcom/ibm/icu/util/ByteArrayWrapper;
.source "RawCollationKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/ibm/icu/util/ByteArrayWrapper;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/ibm/icu/util/ByteArrayWrapper;-><init>()V

    .line 64
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/ibm/icu/text/RawCollationKey;->bytes:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/ibm/icu/util/ByteArrayWrapper;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/ibm/icu/text/RawCollationKey;->bytes:[B

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/ByteArrayWrapper;-><init>([BI)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/text/RawCollationKey;)I
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/ibm/icu/util/ByteArrayWrapper;->compareTo(Lcom/ibm/icu/util/ByteArrayWrapper;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
