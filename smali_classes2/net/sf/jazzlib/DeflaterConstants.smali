.class interface abstract Lnet/sf/jazzlib/DeflaterConstants;
.super Ljava/lang/Object;
.source "DeflaterConstants.java"


# static fields
.field public static final COMPR_FUNC:[I

.field public static final DEBUGGING:Z = false

.field public static final DEFAULT_MEM_LEVEL:I = 0x8

.field public static final DEFLATE_FAST:I = 0x1

.field public static final DEFLATE_SLOW:I = 0x2

.field public static final DEFLATE_STORED:I = 0x0

.field public static final DYN_TREES:I = 0x2

.field public static final GOOD_LENGTH:[I

.field public static final HASH_BITS:I = 0xf

.field public static final HASH_MASK:I = 0x7fff

.field public static final HASH_SHIFT:I = 0x5

.field public static final HASH_SIZE:I = 0x8000

.field public static final MAX_BLOCK_SIZE:I

.field public static final MAX_CHAIN:[I

.field public static final MAX_DIST:I = 0x7efa

.field public static final MAX_LAZY:[I

.field public static final MAX_MATCH:I = 0x102

.field public static final MAX_WBITS:I = 0xf

.field public static final MIN_LOOKAHEAD:I = 0x106

.field public static final MIN_MATCH:I = 0x3

.field public static final NICE_LENGTH:[I

.field public static final PENDING_BUF_SIZE:I = 0x10000

.field public static final PRESET_DICT:I = 0x20

.field public static final STATIC_TREES:I = 0x1

.field public static final STORED_BLOCK:I = 0x0

.field public static final WMASK:I = 0x7fff

.field public static final WSIZE:I = 0x8000


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0xffff

    const v1, 0xfffb

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lnet/sf/jazzlib/DeflaterConstants;->MAX_BLOCK_SIZE:I

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 72
    fill-array-data v1, :array_0

    sput-object v1, Lnet/sf/jazzlib/DeflaterConstants;->GOOD_LENGTH:[I

    new-array v1, v0, [I

    .line 73
    fill-array-data v1, :array_1

    sput-object v1, Lnet/sf/jazzlib/DeflaterConstants;->MAX_LAZY:[I

    new-array v1, v0, [I

    .line 74
    fill-array-data v1, :array_2

    sput-object v1, Lnet/sf/jazzlib/DeflaterConstants;->NICE_LENGTH:[I

    new-array v1, v0, [I

    .line 75
    fill-array-data v1, :array_3

    sput-object v1, Lnet/sf/jazzlib/DeflaterConstants;->MAX_CHAIN:[I

    new-array v0, v0, [I

    .line 76
    fill-array-data v0, :array_4

    sput-object v0, Lnet/sf/jazzlib/DeflaterConstants;->COMPR_FUNC:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x4
        0x4
        0x4
        0x8
        0x8
        0x8
        0x20
        0x20
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4
        0x5
        0x6
        0x4
        0x10
        0x10
        0x20
        0x80
        0x102
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x8
        0x10
        0x20
        0x10
        0x20
        0x80
        0x80
        0x102
        0x102
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x4
        0x8
        0x20
        0x10
        0x20
        0x80
        0x100
        0x400
        0x1000
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method
