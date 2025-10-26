.class public final enum Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;
.super Ljava/lang/Enum;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayWidth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

.field public static final enum ABBREVIATED:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

.field private static COUNT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NARROW:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

.field public static final enum WIDE:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;


# instance fields
.field private final cldrKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1215
    new-instance v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    const-string v1, "WIDE"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->WIDE:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 1221
    new-instance v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    const-string v3, "ABBREVIATED"

    const/4 v4, 0x1

    const-string v5, "-short"

    invoke-direct {v1, v3, v4, v5}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->ABBREVIATED:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 1227
    new-instance v3, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    const-string v5, "NARROW"

    const/4 v6, 0x2

    const-string v7, "-narrow"

    invoke-direct {v3, v5, v6, v7}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->NARROW:Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 1210
    sput-object v5, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->$VALUES:[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    .line 1234
    invoke-static {}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->values()[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->COUNT:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1237
    iput-object p3, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->cldrKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .line 1210
    sget v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->COUNT:I

    return v0
.end method

.method static synthetic access$1100(Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;)Ljava/lang/String;
    .locals 0

    .line 1210
    invoke-direct {p0}, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->cldrKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cldrKey()Ljava/lang/String;
    .locals 1

    .line 1240
    iget-object v0, p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->cldrKey:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;
    .locals 1

    .line 1210
    const-class v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;
    .locals 1

    .line 1210
    sget-object v0, Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->$VALUES:[Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/DateTimePatternGenerator$DisplayWidth;

    return-object v0
.end method
