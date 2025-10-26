.class final Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;
.super Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RuleBasedCollator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CollationKeyByteSink"
.end annotation


# instance fields
.field private key_:Lcom/ibm/icu/text/RawCollationKey;


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/RawCollationKey;)V
    .locals 1

    .line 1105
    iget-object v0, p1, Lcom/ibm/icu/text/RawCollationKey;->bytes:[B

    invoke-direct {p0, v0}, Lcom/ibm/icu/impl/coll/CollationKeys$SortKeyByteSink;-><init>([B)V

    .line 1106
    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Lcom/ibm/icu/text/RawCollationKey;

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;)Lcom/ibm/icu/text/RawCollationKey;
    .locals 0

    .line 1103
    iget-object p0, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Lcom/ibm/icu/text/RawCollationKey;

    return-object p0
.end method


# virtual methods
.method protected AppendBeyondCapacity([BIII)V
    .locals 1

    .line 1112
    invoke-virtual {p0, p3, p4}, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->Resize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    invoke-static {p1, p2, v0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method protected Resize(II)Z
    .locals 2

    .line 1119
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    move v0, p1

    :cond_0
    const/16 p1, 0xc8

    if-ge v0, p1, :cond_1

    const/16 v0, 0xc8

    .line 1130
    :cond_1
    new-array p1, v0, [B

    .line 1131
    iget-object v0, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1132
    iget-object p2, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->key_:Lcom/ibm/icu/text/RawCollationKey;

    iput-object p1, p2, Lcom/ibm/icu/text/RawCollationKey;->bytes:[B

    iput-object p1, p0, Lcom/ibm/icu/text/RuleBasedCollator$CollationKeyByteSink;->buffer_:[B

    const/4 p1, 0x1

    return p1
.end method
