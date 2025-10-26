.class public final Lcom/ibm/icu/text/StringPrep;
.super Ljava/lang/Object;
.source "StringPrep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ibm/icu/text/StringPrep$Values;
    }
.end annotation


# static fields
.field public static final ALLOW_UNASSIGNED:I = 0x1

.field private static final CACHE:[Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ibm/icu/text/StringPrep;",
            ">;"
        }
    .end annotation
.end field

.field private static final CHECK_BIDI_ON:I = 0x2

.field public static final DEFAULT:I = 0x0

.field private static final DELETE:I = 0x3

.field private static final FOUR_UCHARS_MAPPING_INDEX_START:I = 0x6

.field private static final INDEX_MAPPING_DATA_SIZE:I = 0x1

.field private static final INDEX_TOP:I = 0x10

.field private static final MAP:I = 0x1

.field private static final MAX_INDEX_VALUE:I = 0x3fbf

.field private static final MAX_PROFILE:I = 0xd

.field private static final NORMALIZATION_ON:I = 0x1

.field private static final NORM_CORRECTNS_LAST_UNI_VERSION:I = 0x2

.field private static final ONE_UCHAR_MAPPING_INDEX_START:I = 0x3

.field private static final OPTIONS:I = 0x7

.field private static final PROFILE_NAMES:[Ljava/lang/String;

.field private static final PROHIBITED:I = 0x2

.field public static final RFC3491_NAMEPREP:I = 0x0

.field public static final RFC3530_NFS4_CIS_PREP:I = 0x3

.field public static final RFC3530_NFS4_CS_PREP:I = 0x1

.field public static final RFC3530_NFS4_CS_PREP_CI:I = 0x2

.field public static final RFC3530_NFS4_MIXED_PREP_PREFIX:I = 0x4

.field public static final RFC3530_NFS4_MIXED_PREP_SUFFIX:I = 0x5

.field public static final RFC3722_ISCSI:I = 0x6

.field public static final RFC3920_NODEPREP:I = 0x7

.field public static final RFC3920_RESOURCEPREP:I = 0x8

.field public static final RFC4011_MIB:I = 0x9

.field public static final RFC4013_SASLPREP:I = 0xa

.field public static final RFC4505_TRACE:I = 0xb

.field public static final RFC4518_LDAP:I = 0xc

.field public static final RFC4518_LDAP_CI:I = 0xd

.field private static final THREE_UCHARS_MAPPING_INDEX_START:I = 0x5

.field private static final TWO_UCHARS_MAPPING_INDEX_START:I = 0x4

.field private static final TYPE_LIMIT:I = 0x4

.field private static final TYPE_THRESHOLD:I = 0xfff0

.field private static final UNASSIGNED:I


# instance fields
.field private bdp:Lcom/ibm/icu/impl/UBiDiProps;

.field private checkBiDi:Z

.field private doNFKC:Z

.field private indexes:[I

.field private mappingData:[C

.field private normCorrVer:Lcom/ibm/icu/util/VersionInfo;

.field private sprepTrie:Lcom/ibm/icu/impl/CharTrie;

.field private sprepUniVer:Lcom/ibm/icu/util/VersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xe

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "rfc3491"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v4, "rfc3530cs"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "rfc3530csci"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v4, "rfc3530mixp"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "rfc3722"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "rfc3920node"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "rfc3920res"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "rfc4011"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "rfc4013"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "rfc4505"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "rfc4518"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "rfc4518ci"

    aput-object v3, v1, v2

    .line 179
    sput-object v1, Lcom/ibm/icu/text/StringPrep;->PROFILE_NAMES:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/ref/WeakReference;

    .line 197
    check-cast v0, [Ljava/lang/ref/WeakReference;

    sput-object v0, Lcom/ibm/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-static {p1}, Lcom/ibm/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ibm/icu/text/StringPrep;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Lcom/ibm/icu/impl/StringPrepDataReader;

    invoke-direct {v0, p1}, Lcom/ibm/icu/impl/StringPrepDataReader;-><init>(Ljava/nio/ByteBuffer;)V

    const/16 v1, 0x10

    .line 280
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/StringPrepDataReader;->readIndexes(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/ibm/icu/text/StringPrep;->indexes:[I

    .line 282
    new-instance v1, Lcom/ibm/icu/impl/CharTrie;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/ibm/icu/impl/CharTrie;-><init>(Ljava/nio/ByteBuffer;Lcom/ibm/icu/impl/Trie$DataManipulate;)V

    iput-object v1, p0, Lcom/ibm/icu/text/StringPrep;->sprepTrie:Lcom/ibm/icu/impl/CharTrie;

    .line 286
    iget-object p1, p0, Lcom/ibm/icu/text/StringPrep;->indexes:[I

    const/4 v1, 0x1

    aget p1, p1, v1

    const/4 v2, 0x2

    div-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/StringPrepDataReader;->read(I)[C

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/StringPrep;->mappingData:[C

    .line 289
    iget-object p1, p0, Lcom/ibm/icu/text/StringPrep;->indexes:[I

    const/4 v3, 0x7

    aget v4, p1, v3

    and-int/2addr v4, v1

    const/4 v5, 0x0

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/ibm/icu/text/StringPrep;->doNFKC:Z

    .line 290
    aget p1, p1, v3

    and-int/2addr p1, v2

    if-lez p1, :cond_1

    const/4 v5, 0x1

    :cond_1
    iput-boolean v5, p0, Lcom/ibm/icu/text/StringPrep;->checkBiDi:Z

    .line 291
    invoke-virtual {v0}, Lcom/ibm/icu/impl/StringPrepDataReader;->getUnicodeVersion()[B

    move-result-object p1

    invoke-static {p1}, Lcom/ibm/icu/text/StringPrep;->getVersionInfo([B)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/StringPrep;->sprepUniVer:Lcom/ibm/icu/util/VersionInfo;

    .line 292
    iget-object p1, p0, Lcom/ibm/icu/text/StringPrep;->indexes:[I

    aget p1, p1, v2

    invoke-static {p1}, Lcom/ibm/icu/text/StringPrep;->getVersionInfo(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/ibm/icu/text/StringPrep;->normCorrVer:Lcom/ibm/icu/util/VersionInfo;

    .line 293
    invoke-static {}, Lcom/ibm/icu/lang/UCharacter;->getUnicodeVersion()Lcom/ibm/icu/util/VersionInfo;

    move-result-object p1

    .line 294
    iget-object v0, p0, Lcom/ibm/icu/text/StringPrep;->sprepUniVer:Lcom/ibm/icu/util/VersionInfo;

    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/VersionInfo;->compareTo(Lcom/ibm/icu/util/VersionInfo;)I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/ibm/icu/text/StringPrep;->normCorrVer:Lcom/ibm/icu/util/VersionInfo;

    .line 295
    invoke-virtual {p1, v0}, Lcom/ibm/icu/util/VersionInfo;->compareTo(Lcom/ibm/icu/util/VersionInfo;)I

    move-result p1

    if-gez p1, :cond_3

    iget-object p1, p0, Lcom/ibm/icu/text/StringPrep;->indexes:[I

    aget p1, p1, v3

    and-int/2addr p1, v1

    if-gtz p1, :cond_2

    goto :goto_1

    .line 298
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Normalization Correction version not supported"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 301
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/ibm/icu/text/StringPrep;->checkBiDi:Z

    if-eqz p1, :cond_4

    .line 302
    sget-object p1, Lcom/ibm/icu/impl/UBiDiProps;->INSTANCE:Lcom/ibm/icu/impl/UBiDiProps;

    iput-object p1, p0, Lcom/ibm/icu/text/StringPrep;->bdp:Lcom/ibm/icu/impl/UBiDiProps;

    :cond_4
    return-void
.end method

.method private getCodePointValue(I)C
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/ibm/icu/text/StringPrep;->sprepTrie:Lcom/ibm/icu/impl/CharTrie;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/impl/CharTrie;->getCodePointValue(I)C

    move-result p1

    return p1
.end method

.method public static getInstance(I)Lcom/ibm/icu/text/StringPrep;
    .locals 4

    if-ltz p0, :cond_3

    const/16 v0, 0xd

    if-gt p0, v0, :cond_3

    const/4 v0, 0x0

    .line 321
    sget-object v1, Lcom/ibm/icu/text/StringPrep;->CACHE:[Ljava/lang/ref/WeakReference;

    monitor-enter v1

    .line 322
    :try_start_0
    aget-object v2, v1, p0

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/StringPrep;

    :cond_0
    if-nez v0, :cond_2

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ibm/icu/text/StringPrep;->PROFILE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".spp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 331
    :try_start_1
    new-instance v0, Lcom/ibm/icu/text/StringPrep;

    invoke-direct {v0, v2}, Lcom/ibm/icu/text/StringPrep;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 333
    :try_start_2
    new-instance v0, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v0, p0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 337
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v2, v1, p0

    .line 340
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 314
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad profile type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final getValues(CLcom/ibm/icu/text/StringPrep$Values;)V
    .locals 3

    .line 356
    invoke-virtual {p1}, Lcom/ibm/icu/text/StringPrep$Values;->reset()V

    if-nez p0, :cond_0

    const/4 p0, 0x4

    .line 363
    iput p0, p1, Lcom/ibm/icu/text/StringPrep$Values;->type:I

    goto :goto_1

    :cond_0
    const v0, 0xfff0

    if-lt p0, v0, :cond_1

    sub-int/2addr p0, v0

    .line 365
    iput p0, p1, Lcom/ibm/icu/text/StringPrep$Values;->type:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 368
    iput v0, p1, Lcom/ibm/icu/text/StringPrep$Values;->type:I

    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 371
    iput-boolean v0, p1, Lcom/ibm/icu/text/StringPrep$Values;->isIndex:Z

    shr-int/lit8 v0, p0, 0x2

    .line 372
    iput v0, p1, Lcom/ibm/icu/text/StringPrep$Values;->value:I

    goto :goto_0

    .line 375
    :cond_2
    iput-boolean v2, p1, Lcom/ibm/icu/text/StringPrep$Values;->isIndex:Z

    shl-int/lit8 v0, p0, 0x10

    shr-int/lit8 v0, v0, 0x10

    .line 376
    iput v0, p1, Lcom/ibm/icu/text/StringPrep$Values;->value:I

    .line 377
    iget v0, p1, Lcom/ibm/icu/text/StringPrep$Values;->value:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/ibm/icu/text/StringPrep$Values;->value:I

    :goto_0
    shr-int/lit8 p0, p0, 0x2

    const/16 v0, 0x3fbf

    if-ne p0, v0, :cond_3

    const/4 p0, 0x3

    .line 382
    iput p0, p1, Lcom/ibm/icu/text/StringPrep$Values;->type:I

    .line 383
    iput-boolean v2, p1, Lcom/ibm/icu/text/StringPrep$Values;->isIndex:Z

    .line 384
    iput v2, p1, Lcom/ibm/icu/text/StringPrep$Values;->value:I

    :cond_3
    :goto_1
    return-void
.end method

.method private static getVersionInfo(I)Lcom/ibm/icu/util/VersionInfo;
    .locals 3

    and-int/lit16 v0, p0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    .line 252
    invoke-static {p0, v2, v1, v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getVersionInfo([B)Lcom/ibm/icu/util/VersionInfo;
    .locals 4

    .line 256
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 259
    aget-byte v0, p0, v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x3

    aget-byte p0, p0, v3

    invoke-static {v0, v1, v2, p0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method private map(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 394
    new-instance v0, Lcom/ibm/icu/text/StringPrep$Values;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/StringPrep$Values;-><init>(Lcom/ibm/icu/text/StringPrep$1;)V

    .line 397
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    and-int/2addr p2, v2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 400
    :goto_0
    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 402
    invoke-direct {p0, v3}, Lcom/ibm/icu/text/StringPrep;->getCodePointValue(I)C

    move-result v4

    .line 403
    invoke-static {v4, v0}, Lcom/ibm/icu/text/StringPrep;->getValues(CLcom/ibm/icu/text/StringPrep$Values;)V

    .line 406
    iget v4, v0, Lcom/ibm/icu/text/StringPrep$Values;->type:I

    const/4 v5, 0x3

    if-nez v4, :cond_2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 407
    :cond_1
    new-instance p2, Lcom/ibm/icu/text/StringPrepParseException;

    .line 409
    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result p1

    const-string v1, "An unassigned code point was found in the input"

    invoke-direct {p2, v1, v5, v0, p1}, Lcom/ibm/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw p2

    .line 410
    :cond_2
    :goto_1
    iget v4, v0, Lcom/ibm/icu/text/StringPrep$Values;->type:I

    if-ne v4, v2, :cond_7

    .line 413
    iget-boolean v4, v0, Lcom/ibm/icu/text/StringPrep$Values;->isIndex:Z

    if-eqz v4, :cond_6

    .line 414
    iget v3, v0, Lcom/ibm/icu/text/StringPrep$Values;->value:I

    .line 415
    iget-object v4, p0, Lcom/ibm/icu/text/StringPrep;->indexes:[I

    aget v6, v4, v5

    const/4 v7, 0x4

    if-lt v3, v6, :cond_3

    aget v6, v4, v7

    if-ge v3, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    .line 418
    :cond_3
    aget v6, v4, v7

    const/4 v7, 0x5

    if-lt v3, v6, :cond_4

    aget v6, v4, v7

    if-ge v3, v6, :cond_4

    const/4 v5, 0x2

    goto :goto_2

    .line 421
    :cond_4
    aget v6, v4, v7

    if-lt v3, v6, :cond_5

    const/4 v6, 0x6

    aget v4, v4, v6

    if-ge v3, v4, :cond_5

    goto :goto_2

    .line 425
    :cond_5
    iget-object v4, p0, Lcom/ibm/icu/text/StringPrep;->mappingData:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v4, v3

    move v8, v5

    move v5, v3

    move v3, v8

    .line 428
    :goto_2
    iget-object v4, p0, Lcom/ibm/icu/text/StringPrep;->mappingData:[C

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 432
    :cond_6
    iget v4, v0, Lcom/ibm/icu/text/StringPrep$Values;->value:I

    sub-int/2addr v3, v4

    goto :goto_3

    .line 434
    :cond_7
    iget v4, v0, Lcom/ibm/icu/text/StringPrep$Values;->type:I

    if-ne v4, v5, :cond_8

    goto :goto_0

    .line 439
    :cond_8
    :goto_3
    invoke-static {v1, v3}, Lcom/ibm/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_9
    return-object v1
.end method

.method private normalize(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3

    .line 447
    new-instance v0, Ljava/lang/StringBuffer;

    .line 449
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/ibm/icu/text/Normalizer;->NFKC:Lcom/ibm/icu/text/Normalizer$Mode;

    const/16 v2, 0x20

    .line 448
    invoke-static {p1, v1, v2}, Lcom/ibm/icu/text/Normalizer;->normalize(Ljava/lang/String;Lcom/ibm/icu/text/Normalizer$Mode;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public prepare(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    .line 601
    invoke-static {p1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/ibm/icu/text/StringPrep;->prepare(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object p1

    .line 602
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ibm/icu/text/StringPrepParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 520
    invoke-direct/range {p0 .. p2}, Lcom/ibm/icu/text/StringPrep;->map(Lcom/ibm/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 523
    iget-boolean v2, v0, Lcom/ibm/icu/text/StringPrep;->doNFKC:Z

    if-eqz v2, :cond_0

    .line 525
    invoke-direct {v0, v1}, Lcom/ibm/icu/text/StringPrep;->normalize(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 530
    :cond_0
    invoke-static {v1}, Lcom/ibm/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Lcom/ibm/icu/text/UCharacterIterator;

    move-result-object v2

    .line 531
    new-instance v3, Lcom/ibm/icu/text/StringPrep$Values;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/ibm/icu/text/StringPrep$Values;-><init>(Lcom/ibm/icu/text/StringPrep$1;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x17

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x17

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v12, 0x17

    .line 537
    :goto_0
    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v13

    const/16 v14, 0xd

    if-eq v13, v5, :cond_6

    .line 538
    invoke-direct {v0, v13}, Lcom/ibm/icu/text/StringPrep;->getCodePointValue(I)C

    move-result v15

    .line 539
    invoke-static {v15, v3}, Lcom/ibm/icu/text/StringPrep;->getValues(CLcom/ibm/icu/text/StringPrep$Values;)V

    .line 541
    iget v15, v3, Lcom/ibm/icu/text/StringPrep$Values;->type:I

    const/4 v5, 0x2

    if-eq v15, v5, :cond_5

    .line 546
    iget-boolean v5, v0, Lcom/ibm/icu/text/StringPrep;->checkBiDi:Z

    if-eqz v5, :cond_4

    .line 547
    iget-object v5, v0, Lcom/ibm/icu/text/StringPrep;->bdp:Lcom/ibm/icu/impl/UBiDiProps;

    invoke-virtual {v5, v13}, Lcom/ibm/icu/impl/UBiDiProps;->getClass(I)I

    move-result v12

    if-ne v9, v6, :cond_1

    move v9, v12

    :cond_1
    if-nez v12, :cond_2

    .line 553
    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v4

    add-int/lit8 v11, v4, -0x1

    const/4 v4, 0x1

    :cond_2
    if-eq v12, v7, :cond_3

    if-ne v12, v14, :cond_4

    .line 557
    :cond_3
    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->getIndex()I

    move-result v5

    add-int/lit8 v10, v5, -0x1

    const/4 v5, -0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, -0x1

    goto :goto_0

    .line 542
    :cond_5
    new-instance v1, Lcom/ibm/icu/text/StringPrepParseException;

    .line 543
    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, v3, Lcom/ibm/icu/text/StringPrep$Values;->value:I

    const-string v4, "A prohibited code point was found in the input"

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/ibm/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    .line 561
    :cond_6
    iget-boolean v3, v0, Lcom/ibm/icu/text/StringPrep;->checkBiDi:Z

    if-ne v3, v7, :cond_c

    const/4 v3, 0x4

    const-string v5, "The input does not conform to the rules for BiDi code points."

    if-ne v4, v7, :cond_8

    if-ne v8, v7, :cond_8

    .line 564
    new-instance v1, Lcom/ibm/icu/text/StringPrepParseException;

    .line 565
    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v2

    if-le v10, v11, :cond_7

    goto :goto_1

    :cond_7
    move v10, v11

    :goto_1
    invoke-direct {v1, v5, v3, v2, v10}, Lcom/ibm/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    :cond_8
    if-ne v8, v7, :cond_c

    if-eq v9, v7, :cond_9

    if-ne v9, v14, :cond_a

    :cond_9
    if-eq v12, v7, :cond_c

    if-eq v12, v14, :cond_c

    .line 574
    :cond_a
    new-instance v1, Lcom/ibm/icu/text/StringPrepParseException;

    .line 575
    invoke-virtual {v2}, Lcom/ibm/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v2

    if-le v10, v11, :cond_b

    goto :goto_2

    :cond_b
    move v10, v11

    :goto_2
    invoke-direct {v1, v5, v3, v2, v10}, Lcom/ibm/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    :cond_c
    return-object v1
.end method
