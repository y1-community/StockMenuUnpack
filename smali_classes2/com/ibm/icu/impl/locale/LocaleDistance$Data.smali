.class public final Lcom/ibm/icu/impl/locale/LocaleDistance$Data;
.super Ljava/lang/Object;
.source "LocaleDistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/impl/locale/LocaleDistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field public distances:[I

.field public paradigmLSRs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ibm/icu/impl/locale/LSR;",
            ">;"
        }
    .end annotation
.end field

.field public partitionArrays:[Ljava/lang/String;

.field public regionToPartitionsIndex:[B

.field public trie:[B


# direct methods
.method public constructor <init>([B[B[Ljava/lang/String;Ljava/util/Set;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/ibm/icu/impl/locale/LSR;",
            ">;[I)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->trie:[B

    .line 116
    iput-object p2, p0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->regionToPartitionsIndex:[B

    .line 117
    iput-object p3, p0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->partitionArrays:[Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->paradigmLSRs:Ljava/util/Set;

    .line 119
    iput-object p5, p0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->distances:[I

    return-void
.end method

.method private static getValue(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/impl/UResource$Value;
    .locals 1

    .line 124
    invoke-interface {p0, p1, p2}, Lcom/ibm/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p2

    .line 125
    :cond_0
    new-instance p0, Ljava/util/MissingResourceException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "match/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "langInfo.res missing data"

    const-string v0, ""

    invoke-direct {p0, p2, v0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public static load()Lcom/ibm/icu/impl/locale/LocaleDistance$Data;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/ibm/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    sget-object v1, Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;

    const-string v2, "com/ibm/icu/impl/data/icudt69b"

    const-string v3, "langInfo"

    invoke-static {v2, v3, v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Lcom/ibm/icu/impl/ICUResourceBundle$OpenType;)Lcom/ibm/icu/impl/ICUResourceBundle;

    move-result-object v0

    const-string v1, "match"

    .line 136
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/ICUResourceBundle;->getValueWithFallback(Ljava/lang/String;)Lcom/ibm/icu/impl/UResource$Value;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/ibm/icu/impl/UResource$Value;->getTable()Lcom/ibm/icu/impl/UResource$Table;

    move-result-object v1

    const-string v2, "trie"

    .line 139
    invoke-static {v1, v2, v0}, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->getValue(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/impl/UResource$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/impl/UResource$Value;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 140
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v5, v3, [B

    .line 141
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string v2, "regionToPartitions"

    .line 143
    invoke-static {v1, v2, v0}, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->getValue(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/impl/UResource$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ibm/icu/impl/UResource$Value;->getBinary()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v6, v3, [B

    .line 145
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string v2, ""

    const/16 v4, 0x68d

    if-lt v3, v4, :cond_3

    const-string v3, "partitions"

    .line 151
    invoke-static {v1, v3, v0}, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->getValue(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/impl/UResource$Value;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ibm/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v7

    const-string v3, "paradigms"

    .line 154
    invoke-interface {v1, v3, v0}, Lcom/ibm/icu/impl/UResource$Table;->findValue(Ljava/lang/CharSequence;Lcom/ibm/icu/impl/UResource$Value;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/ibm/icu/impl/UResource$Value;->getStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 157
    new-instance v4, Ljava/util/LinkedHashSet;

    array-length v8, v3

    div-int/lit8 v8, v8, 0x3

    invoke-direct {v4, v8}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 158
    :goto_0
    array-length v10, v3

    if-ge v9, v10, :cond_0

    .line 159
    new-instance v10, Lcom/ibm/icu/impl/locale/LSR;

    aget-object v11, v3, v9

    add-int/lit8 v12, v9, 0x1

    aget-object v12, v3, v12

    add-int/lit8 v13, v9, 0x2

    aget-object v13, v3, v13

    invoke-direct {v10, v11, v12, v13, v8}, Lcom/ibm/icu/impl/locale/LSR;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x3

    goto :goto_0

    :cond_0
    move-object v8, v4

    goto :goto_1

    .line 163
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    move-object v8, v3

    :goto_1
    const-string v3, "distances"

    .line 166
    invoke-static {v1, v3, v0}, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->getValue(Lcom/ibm/icu/impl/UResource$Table;Ljava/lang/String;Lcom/ibm/icu/impl/UResource$Value;)Lcom/ibm/icu/impl/UResource$Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibm/icu/impl/UResource$Value;->getIntVector()[I

    move-result-object v9

    .line 167
    array-length v0, v9

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 172
    new-instance v0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;-><init>([B[B[Ljava/lang/String;Ljava/util/Set;[I)V

    return-object v0

    .line 168
    :cond_2
    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "langInfo.res intvector too short"

    const-string v3, "match/distances"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_3
    new-instance v0, Ljava/util/MissingResourceException;

    const-string v1, "langInfo.res binary data too short"

    const-string v3, "match/regionToPartitions"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    check-cast p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;

    .line 180
    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->trie:[B

    iget-object v3, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->trie:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->regionToPartitionsIndex:[B

    iget-object v3, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->regionToPartitionsIndex:[B

    .line 181
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->partitionArrays:[Ljava/lang/String;

    iget-object v3, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->partitionArrays:[Ljava/lang/String;

    .line 182
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->paradigmLSRs:Ljava/util/Set;

    iget-object v3, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->paradigmLSRs:Ljava/util/Set;

    .line 183
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->distances:[I

    iget-object p1, p1, Lcom/ibm/icu/impl/locale/LocaleDistance$Data;->distances:[I

    .line 184
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
