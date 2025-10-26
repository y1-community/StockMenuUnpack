.class public final Lcom/ibm/icu/impl/duration/TimeUnit;
.super Ljava/lang/Object;
.source "TimeUnit.java"


# static fields
.field public static final DAY:Lcom/ibm/icu/impl/duration/TimeUnit;

.field public static final HOUR:Lcom/ibm/icu/impl/duration/TimeUnit;

.field public static final MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

.field public static final MINUTE:Lcom/ibm/icu/impl/duration/TimeUnit;

.field public static final MONTH:Lcom/ibm/icu/impl/duration/TimeUnit;

.field public static final SECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

.field public static final WEEK:Lcom/ibm/icu/impl/duration/TimeUnit;

.field public static final YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;

.field static final approxDurations:[J

.field static final units:[Lcom/ibm/icu/impl/duration/TimeUnit;


# instance fields
.field final name:Ljava/lang/String;

.field final ordinal:B


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 35
    new-instance v0, Lcom/ibm/icu/impl/duration/TimeUnit;

    const-string v1, "year"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 38
    new-instance v1, Lcom/ibm/icu/impl/duration/TimeUnit;

    const-string v3, "month"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->MONTH:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 41
    new-instance v3, Lcom/ibm/icu/impl/duration/TimeUnit;

    const-string v5, "week"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/impl/duration/TimeUnit;->WEEK:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 44
    new-instance v5, Lcom/ibm/icu/impl/duration/TimeUnit;

    const-string v7, "day"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/impl/duration/TimeUnit;->DAY:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 47
    new-instance v7, Lcom/ibm/icu/impl/duration/TimeUnit;

    const-string v9, "hour"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/impl/duration/TimeUnit;->HOUR:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 50
    new-instance v9, Lcom/ibm/icu/impl/duration/TimeUnit;

    const-string v11, "minute"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/impl/duration/TimeUnit;->MINUTE:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 53
    new-instance v11, Lcom/ibm/icu/impl/duration/TimeUnit;

    const-string v13, "second"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/impl/duration/TimeUnit;->SECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    .line 56
    new-instance v13, Lcom/ibm/icu/impl/duration/TimeUnit;

    const-string v15, "millisecond"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;

    const/16 v15, 0x8

    new-array v14, v15, [Lcom/ibm/icu/impl/duration/TimeUnit;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    aput-object v9, v14, v12

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    .line 69
    sput-object v14, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    new-array v0, v15, [J

    .line 84
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->approxDurations:[J

    return-void

    :array_0
    .array-data 8
        0x758fac300L
        0x9cd00b00L
        0x240c8400
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
        0x1
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;

    int-to-byte p1, p2

    .line 26
    iput-byte p1, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    return-void
.end method


# virtual methods
.method public larger()Lcom/ibm/icu/impl/duration/TimeUnit;
    .locals 2

    .line 60
    iget-byte v0, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method public ordinal()I
    .locals 1

    .line 75
    iget-byte v0, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    return v0
.end method

.method public smaller()Lcom/ibm/icu/impl/duration/TimeUnit;
    .locals 3

    .line 65
    iget-byte v0, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B

    sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;

    return-object v0
.end method
