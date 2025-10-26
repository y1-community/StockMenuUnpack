.class public final enum Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;
.super Ljava/lang/Enum;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GMTOffsetPatternType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

.field public static final enum POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;


# instance fields
.field private _defaultPattern:Ljava/lang/String;

.field private _isPositive:Z

.field private _required:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 232
    new-instance v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v1, "POSITIVE_HM"

    const/4 v2, 0x0

    const-string v3, "+H:mm"

    const-string v4, "Hm"

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v6, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 237
    new-instance v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v8, "POSITIVE_HMS"

    const/4 v9, 0x1

    const-string v10, "+H:mm:ss"

    const-string v11, "Hms"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 242
    new-instance v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v14, "NEGATIVE_HM"

    const/4 v15, 0x2

    const-string v16, "-H:mm"

    const-string v17, "Hm"

    const/16 v18, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v1, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 247
    new-instance v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v8, "NEGATIVE_HMS"

    const/4 v9, 0x3

    const-string v10, "-H:mm:ss"

    const-string v11, "Hms"

    const/4 v12, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v2, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HMS:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 252
    new-instance v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v14, "POSITIVE_H"

    const/4 v15, 0x4

    const-string v16, "+H"

    const-string v17, "H"

    const/16 v18, 0x1

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v3, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 257
    new-instance v4, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const-string v8, "NEGATIVE_H"

    const/4 v9, 0x5

    const-string v10, "-H"

    const-string v11, "H"

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V

    sput-object v4, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_H:Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    aput-object v2, v5, v0

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v4, v5, v0

    .line 227
    sput-object v5, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 264
    iput-object p3, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_defaultPattern:Ljava/lang/String;

    .line 265
    iput-object p4, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_required:Ljava/lang/String;

    .line 266
    iput-boolean p5, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_isPositive:Z

    return-void
.end method

.method static synthetic access$100(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->defaultPattern()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->required()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Z
    .locals 0

    .line 227
    invoke-direct {p0}, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->isPositive()Z

    move-result p0

    return p0
.end method

.method private defaultPattern()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_defaultPattern:Ljava/lang/String;

    return-object v0
.end method

.method private isPositive()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_isPositive:Z

    return v0
.end method

.method private required()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->_required:Ljava/lang/String;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .locals 1

    .line 227
    const-class v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    .locals 1

    .line 227
    sget-object v0, Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->$VALUES:[Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    return-object v0
.end method
