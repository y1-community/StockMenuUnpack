.class public final enum Lcom/ibm/icu/impl/CalType;
.super Ljava/lang/Enum;
.source "CalType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/impl/CalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/impl/CalType;

.field public static final enum BUDDHIST:Lcom/ibm/icu/impl/CalType;

.field public static final enum CHINESE:Lcom/ibm/icu/impl/CalType;

.field public static final enum COPTIC:Lcom/ibm/icu/impl/CalType;

.field public static final enum DANGI:Lcom/ibm/icu/impl/CalType;

.field public static final enum ETHIOPIC:Lcom/ibm/icu/impl/CalType;

.field public static final enum ETHIOPIC_AMETE_ALEM:Lcom/ibm/icu/impl/CalType;

.field public static final enum GREGORIAN:Lcom/ibm/icu/impl/CalType;

.field public static final enum HEBREW:Lcom/ibm/icu/impl/CalType;

.field public static final enum INDIAN:Lcom/ibm/icu/impl/CalType;

.field public static final enum ISLAMIC:Lcom/ibm/icu/impl/CalType;

.field public static final enum ISLAMIC_CIVIL:Lcom/ibm/icu/impl/CalType;

.field public static final enum ISLAMIC_RGSA:Lcom/ibm/icu/impl/CalType;

.field public static final enum ISLAMIC_TBLA:Lcom/ibm/icu/impl/CalType;

.field public static final enum ISLAMIC_UMALQURA:Lcom/ibm/icu/impl/CalType;

.field public static final enum ISO8601:Lcom/ibm/icu/impl/CalType;

.field public static final enum JAPANESE:Lcom/ibm/icu/impl/CalType;

.field public static final enum PERSIAN:Lcom/ibm/icu/impl/CalType;

.field public static final enum ROC:Lcom/ibm/icu/impl/CalType;

.field public static final enum UNKNOWN:Lcom/ibm/icu/impl/CalType;


# instance fields
.field id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 11
    new-instance v0, Lcom/ibm/icu/impl/CalType;

    const-string v1, "GREGORIAN"

    const/4 v2, 0x0

    const-string v3, "gregorian"

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/impl/CalType;->GREGORIAN:Lcom/ibm/icu/impl/CalType;

    .line 12
    new-instance v1, Lcom/ibm/icu/impl/CalType;

    const-string v3, "ISO8601"

    const/4 v4, 0x1

    const-string v5, "iso8601"

    invoke-direct {v1, v3, v4, v5}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/ibm/icu/impl/CalType;->ISO8601:Lcom/ibm/icu/impl/CalType;

    .line 14
    new-instance v3, Lcom/ibm/icu/impl/CalType;

    const-string v5, "BUDDHIST"

    const/4 v6, 0x2

    const-string v7, "buddhist"

    invoke-direct {v3, v5, v6, v7}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/ibm/icu/impl/CalType;->BUDDHIST:Lcom/ibm/icu/impl/CalType;

    .line 15
    new-instance v5, Lcom/ibm/icu/impl/CalType;

    const-string v7, "CHINESE"

    const/4 v8, 0x3

    const-string v9, "chinese"

    invoke-direct {v5, v7, v8, v9}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/ibm/icu/impl/CalType;->CHINESE:Lcom/ibm/icu/impl/CalType;

    .line 16
    new-instance v7, Lcom/ibm/icu/impl/CalType;

    const-string v9, "COPTIC"

    const/4 v10, 0x4

    const-string v11, "coptic"

    invoke-direct {v7, v9, v10, v11}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/ibm/icu/impl/CalType;->COPTIC:Lcom/ibm/icu/impl/CalType;

    .line 17
    new-instance v9, Lcom/ibm/icu/impl/CalType;

    const-string v11, "DANGI"

    const/4 v12, 0x5

    const-string v13, "dangi"

    invoke-direct {v9, v11, v12, v13}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/ibm/icu/impl/CalType;->DANGI:Lcom/ibm/icu/impl/CalType;

    .line 18
    new-instance v11, Lcom/ibm/icu/impl/CalType;

    const-string v13, "ETHIOPIC"

    const/4 v14, 0x6

    const-string v15, "ethiopic"

    invoke-direct {v11, v13, v14, v15}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/ibm/icu/impl/CalType;->ETHIOPIC:Lcom/ibm/icu/impl/CalType;

    .line 19
    new-instance v13, Lcom/ibm/icu/impl/CalType;

    const-string v15, "ETHIOPIC_AMETE_ALEM"

    const/4 v14, 0x7

    const-string v12, "ethiopic-amete-alem"

    invoke-direct {v13, v15, v14, v12}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/ibm/icu/impl/CalType;->ETHIOPIC_AMETE_ALEM:Lcom/ibm/icu/impl/CalType;

    .line 20
    new-instance v12, Lcom/ibm/icu/impl/CalType;

    const-string v15, "HEBREW"

    const/16 v14, 0x8

    const-string v10, "hebrew"

    invoke-direct {v12, v15, v14, v10}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/ibm/icu/impl/CalType;->HEBREW:Lcom/ibm/icu/impl/CalType;

    .line 21
    new-instance v10, Lcom/ibm/icu/impl/CalType;

    const-string v15, "INDIAN"

    const/16 v14, 0x9

    const-string v8, "indian"

    invoke-direct {v10, v15, v14, v8}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/ibm/icu/impl/CalType;->INDIAN:Lcom/ibm/icu/impl/CalType;

    .line 22
    new-instance v8, Lcom/ibm/icu/impl/CalType;

    const-string v15, "ISLAMIC"

    const/16 v14, 0xa

    const-string v6, "islamic"

    invoke-direct {v8, v15, v14, v6}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/ibm/icu/impl/CalType;->ISLAMIC:Lcom/ibm/icu/impl/CalType;

    .line 23
    new-instance v6, Lcom/ibm/icu/impl/CalType;

    const-string v15, "ISLAMIC_CIVIL"

    const/16 v14, 0xb

    const-string v4, "islamic-civil"

    invoke-direct {v6, v15, v14, v4}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/ibm/icu/impl/CalType;->ISLAMIC_CIVIL:Lcom/ibm/icu/impl/CalType;

    .line 24
    new-instance v4, Lcom/ibm/icu/impl/CalType;

    const-string v15, "ISLAMIC_RGSA"

    const/16 v14, 0xc

    const-string v2, "islamic-rgsa"

    invoke-direct {v4, v15, v14, v2}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/ibm/icu/impl/CalType;->ISLAMIC_RGSA:Lcom/ibm/icu/impl/CalType;

    .line 25
    new-instance v2, Lcom/ibm/icu/impl/CalType;

    const-string v15, "ISLAMIC_TBLA"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "islamic-tbla"

    invoke-direct {v2, v15, v14, v4}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/ibm/icu/impl/CalType;->ISLAMIC_TBLA:Lcom/ibm/icu/impl/CalType;

    .line 26
    new-instance v4, Lcom/ibm/icu/impl/CalType;

    const-string v15, "ISLAMIC_UMALQURA"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "islamic-umalqura"

    invoke-direct {v4, v15, v14, v2}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/ibm/icu/impl/CalType;->ISLAMIC_UMALQURA:Lcom/ibm/icu/impl/CalType;

    .line 27
    new-instance v2, Lcom/ibm/icu/impl/CalType;

    const-string v15, "JAPANESE"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "japanese"

    invoke-direct {v2, v15, v14, v4}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/ibm/icu/impl/CalType;->JAPANESE:Lcom/ibm/icu/impl/CalType;

    .line 28
    new-instance v4, Lcom/ibm/icu/impl/CalType;

    const-string v15, "PERSIAN"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "persian"

    invoke-direct {v4, v15, v14, v2}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/ibm/icu/impl/CalType;->PERSIAN:Lcom/ibm/icu/impl/CalType;

    .line 29
    new-instance v2, Lcom/ibm/icu/impl/CalType;

    const-string v15, "ROC"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "roc"

    invoke-direct {v2, v15, v14, v4}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/ibm/icu/impl/CalType;->ROC:Lcom/ibm/icu/impl/CalType;

    .line 31
    new-instance v4, Lcom/ibm/icu/impl/CalType;

    const-string v15, "UNKNOWN"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "unknown"

    invoke-direct {v4, v15, v14, v2}, Lcom/ibm/icu/impl/CalType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/ibm/icu/impl/CalType;->UNKNOWN:Lcom/ibm/icu/impl/CalType;

    const/16 v2, 0x13

    new-array v2, v2, [Lcom/ibm/icu/impl/CalType;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    aput-object v4, v2, v14

    .line 10
    sput-object v2, Lcom/ibm/icu/impl/CalType;->$VALUES:[Lcom/ibm/icu/impl/CalType;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/ibm/icu/impl/CalType;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/impl/CalType;
    .locals 1

    .line 10
    const-class v0, Lcom/ibm/icu/impl/CalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/impl/CalType;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/impl/CalType;
    .locals 1

    .line 10
    sget-object v0, Lcom/ibm/icu/impl/CalType;->$VALUES:[Lcom/ibm/icu/impl/CalType;

    invoke-virtual {v0}, [Lcom/ibm/icu/impl/CalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/impl/CalType;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/ibm/icu/impl/CalType;->id:Ljava/lang/String;

    return-object v0
.end method
