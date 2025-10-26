.class public final enum Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelativeDateTimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum DAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum FRIDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum HOUR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum MINUTE:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum MONDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum MONTH:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum QUARTER:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum SATURDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum SECOND:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum SUNDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum THURSDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum TUESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum WEDNESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum WEEK:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

.field public static final enum YEAR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 320
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v1, "YEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->YEAR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 326
    new-instance v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v3, "QUARTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->QUARTER:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 332
    new-instance v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v5, "MONTH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->MONTH:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 338
    new-instance v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v7, "WEEK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->WEEK:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 344
    new-instance v7, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v9, "DAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->DAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 350
    new-instance v9, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v11, "HOUR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->HOUR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 356
    new-instance v11, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v13, "MINUTE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->MINUTE:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 362
    new-instance v13, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v15, "SECOND"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->SECOND:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 368
    new-instance v15, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v14, "SUNDAY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->SUNDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 374
    new-instance v14, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v12, "MONDAY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->MONDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 380
    new-instance v12, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v10, "TUESDAY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->TUESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 386
    new-instance v10, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v8, "WEDNESDAY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->WEDNESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 392
    new-instance v8, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v6, "THURSDAY"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->THURSDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 398
    new-instance v6, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v4, "FRIDAY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->FRIDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    .line 404
    new-instance v4, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const-string v2, "SATURDAY"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->SATURDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    const/16 v16, 0x0

    aput-object v0, v2, v16

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

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 314
    sput-object v2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->$VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;
    .locals 1

    .line 314
    const-class v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;
    .locals 1

    .line 314
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->$VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeDateTimeUnit;

    return-object v0
.end method
