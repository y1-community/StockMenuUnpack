.class public final Lcom/ibm/icu/lang/CharacterProperties;
.super Ljava/lang/Object;
.source "CharacterProperties.java"


# static fields
.field private static final maps:[Lcom/ibm/icu/util/CodePointMap;

.field private static final sets:[Lcom/ibm/icu/text/UnicodeSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x41

    new-array v0, v0, [Lcom/ibm/icu/text/UnicodeSet;

    .line 27
    sput-object v0, Lcom/ibm/icu/lang/CharacterProperties;->sets:[Lcom/ibm/icu/text/UnicodeSet;

    const/16 v0, 0x19

    new-array v0, v0, [Lcom/ibm/icu/util/CodePointMap;

    .line 28
    sput-object v0, Lcom/ibm/icu/lang/CharacterProperties;->maps:[Lcom/ibm/icu/util/CodePointMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBinaryPropertySet(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 3

    if-ltz p0, :cond_1

    const/16 v0, 0x41

    if-le v0, p0, :cond_1

    .line 121
    sget-object v0, Lcom/ibm/icu/lang/CharacterProperties;->sets:[Lcom/ibm/icu/text/UnicodeSet;

    monitor-enter v0

    .line 122
    :try_start_0
    aget-object v1, v0, p0

    if-nez v1, :cond_0

    .line 124
    invoke-static {p0}, Lcom/ibm/icu/lang/CharacterProperties;->makeSet(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    aput-object v1, v0, p0

    .line 126
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a constant for a UProperty binary property"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getIntPropertyMap(I)Lcom/ibm/icu/util/CodePointMap;
    .locals 3

    const/16 v0, 0x1000

    if-lt p0, v0, :cond_1

    const/16 v0, 0x1019

    if-le v0, p0, :cond_1

    .line 151
    sget-object v0, Lcom/ibm/icu/lang/CharacterProperties;->maps:[Lcom/ibm/icu/util/CodePointMap;

    monitor-enter v0

    add-int/lit16 v1, p0, -0x1000

    .line 152
    :try_start_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 154
    invoke-static {p0}, Lcom/ibm/icu/lang/CharacterProperties;->makeMap(I)Lcom/ibm/icu/util/CodePointMap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 156
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a constant for a UProperty int property"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static makeMap(I)Lcom/ibm/icu/util/CodePointMap;
    .locals 11

    const/4 v0, 0x0

    const/16 v1, 0x100a

    if-ne p0, v1, :cond_0

    const/16 v1, 0x67

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 61
    :goto_0
    new-instance v2, Lcom/ibm/icu/util/MutableCodePointTrie;

    invoke-direct {v2, v1, v1}, Lcom/ibm/icu/util/MutableCodePointTrie;-><init>(II)V

    .line 62
    invoke-static {p0}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v4

    move v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    .line 68
    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v7

    .line 69
    invoke-virtual {v3, v0}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v8

    :goto_2
    if-gt v8, v7, :cond_3

    .line 71
    invoke-static {v8, p0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v9

    if-eq v6, v9, :cond_2

    if-eq v6, v1, :cond_1

    add-int/lit8 v10, v8, -0x1

    .line 74
    invoke-virtual {v2, v5, v10, v6}, Lcom/ibm/icu/util/MutableCodePointTrie;->setRange(III)V

    :cond_1
    move v5, v8

    move v6, v9

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    const v0, 0x10ffff

    .line 82
    invoke-virtual {v2, v5, v0, v6}, Lcom/ibm/icu/util/MutableCodePointTrie;->setRange(III)V

    :cond_5
    const/16 v0, 0x1000

    if-eq p0, v0, :cond_7

    const/16 v0, 0x1005

    if-ne p0, v0, :cond_6

    goto :goto_3

    .line 89
    :cond_6
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$Type;->SMALL:Lcom/ibm/icu/util/CodePointTrie$Type;

    goto :goto_4

    .line 87
    :cond_7
    :goto_3
    sget-object v0, Lcom/ibm/icu/util/CodePointTrie$Type;->FAST:Lcom/ibm/icu/util/CodePointTrie$Type;

    .line 93
    :goto_4
    invoke-static {p0}, Lcom/ibm/icu/lang/UCharacter;->getIntPropertyMaxValue(I)I

    move-result p0

    const/16 v1, 0xff

    if-gt p0, v1, :cond_8

    .line 95
    sget-object p0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_8:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    goto :goto_5

    :cond_8
    const v1, 0xffff

    if-gt p0, v1, :cond_9

    .line 97
    sget-object p0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_16:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    goto :goto_5

    .line 99
    :cond_9
    sget-object p0, Lcom/ibm/icu/util/CodePointTrie$ValueWidth;->BITS_32:Lcom/ibm/icu/util/CodePointTrie$ValueWidth;

    .line 101
    :goto_5
    invoke-virtual {v2, v0, p0}, Lcom/ibm/icu/util/MutableCodePointTrie;->buildImmutable(Lcom/ibm/icu/util/CodePointTrie$Type;Lcom/ibm/icu/util/CodePointTrie$ValueWidth;)Lcom/ibm/icu/util/CodePointTrie;

    move-result-object p0

    return-object p0
.end method

.method private static makeSet(I)Lcom/ibm/icu/text/UnicodeSet;
    .locals 9

    .line 31
    new-instance v0, Lcom/ibm/icu/text/UnicodeSet;

    invoke-direct {v0}, Lcom/ibm/icu/text/UnicodeSet;-><init>()V

    .line 32
    invoke-static {p0}, Lcom/ibm/icu/impl/CharacterPropertiesImpl;->getInclusionsForProperty(I)Lcom/ibm/icu/text/UnicodeSet;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/ibm/icu/text/UnicodeSet;->getRangeCount()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    :goto_0
    if-ge v4, v2, :cond_3

    .line 37
    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v6

    .line 38
    invoke-virtual {v1, v4}, Lcom/ibm/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v7

    :goto_1
    if-gt v7, v6, :cond_2

    .line 40
    invoke-static {v7, p0}, Lcom/ibm/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v8

    if-eqz v8, :cond_0

    if-gez v5, :cond_1

    move v5, v7

    goto :goto_2

    :cond_0
    if-ltz v5, :cond_1

    add-int/lit8 v8, v7, -0x1

    .line 47
    invoke-virtual {v0, v5, v8}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    const/4 v5, -0x1

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-ltz v5, :cond_4

    const p0, 0x10ffff

    .line 53
    invoke-virtual {v0, v5, p0}, Lcom/ibm/icu/text/UnicodeSet;->add(II)Lcom/ibm/icu/text/UnicodeSet;

    .line 56
    :cond_4
    invoke-virtual {v0}, Lcom/ibm/icu/text/UnicodeSet;->freeze()Lcom/ibm/icu/text/UnicodeSet;

    move-result-object p0

    return-object p0
.end method
