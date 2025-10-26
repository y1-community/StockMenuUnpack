.class public Lnet/sf/jazzlib/CRC32;
.super Ljava/lang/Object;
.source "CRC32.java"

# interfaces
.implements Lnet/sf/jazzlib/Checksum;


# static fields
.field private static crc_table:[I


# instance fields
.field private crc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    invoke-static {}, Lnet/sf/jazzlib/CRC32;->make_crc_table()[I

    move-result-object v0

    sput-object v0, Lnet/sf/jazzlib/CRC32;->crc_table:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lnet/sf/jazzlib/CRC32;->crc:I

    return-void
.end method

.method private static make_crc_table()[I
    .locals 6

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    const/16 v3, 0x8

    move v4, v2

    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_0

    const v5, -0x12477ce0

    ushr-int/lit8 v4, v4, 0x1

    xor-int/2addr v4, v5

    goto :goto_1

    :cond_0
    ushr-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    :cond_1
    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public getValue()J
    .locals 4

    .line 88
    iget v0, p0, Lnet/sf/jazzlib/CRC32;->crc:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lnet/sf/jazzlib/CRC32;->crc:I

    return-void
.end method

.method public update(I)V
    .locals 2

    .line 108
    iget v0, p0, Lnet/sf/jazzlib/CRC32;->crc:I

    xor-int/lit8 v0, v0, -0x1

    .line 109
    sget-object v1, Lnet/sf/jazzlib/CRC32;->crc_table:[I

    xor-int/2addr p1, v0

    and-int/lit16 p1, p1, 0xff

    aget p1, v1, p1

    ushr-int/lit8 v0, v0, 0x8

    xor-int/2addr p1, v0

    xor-int/lit8 p1, p1, -0x1

    .line 110
    iput p1, p0, Lnet/sf/jazzlib/CRC32;->crc:I

    return-void
.end method

.method public update([B)V
    .locals 2

    .line 136
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lnet/sf/jazzlib/CRC32;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 3

    .line 125
    iget v0, p0, Lnet/sf/jazzlib/CRC32;->crc:I

    xor-int/lit8 v0, v0, -0x1

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    .line 127
    sget-object v1, Lnet/sf/jazzlib/CRC32;->crc_table:[I

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v0

    and-int/lit16 p2, p2, 0xff

    aget p2, v1, p2

    ushr-int/lit8 v0, v0, 0x8

    xor-int/2addr v0, p2

    move p2, v2

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, v0, -0x1

    .line 129
    iput p1, p0, Lnet/sf/jazzlib/CRC32;->crc:I

    return-void
.end method
