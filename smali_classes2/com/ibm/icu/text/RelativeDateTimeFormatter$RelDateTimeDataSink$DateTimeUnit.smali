.class final enum Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
.super Ljava/lang/Enum;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DateTimeUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum DAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum FRIDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum HOUR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum MINUTE:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum MONDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum MONTH:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum QUARTER:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum SATURDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum SECOND:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum SUNDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum THURSDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum TUESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum WEDNESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum WEEK:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

.field public static final enum YEAR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;


# instance fields
.field absUnit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

.field relUnit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1194
    new-instance v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->SECONDS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const-string v2, "SECOND"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SECOND:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1195
    new-instance v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MINUTE:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v6, "MINUTE"

    const/4 v7, 0x1

    invoke-direct {v1, v6, v7, v2, v5}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v1, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MINUTE:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1196
    new-instance v2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v6, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->HOUR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v8, "HOUR"

    const/4 v9, 0x2

    invoke-direct {v2, v8, v9, v5, v6}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v2, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->HOUR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1197
    new-instance v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v6, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v8, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->DAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v10, "DAY"

    const/4 v11, 0x3

    invoke-direct {v5, v10, v11, v6, v8}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v5, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->DAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1198
    new-instance v6, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v8, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->WEEKS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v10, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEEK:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v12, "WEEK"

    const/4 v13, 0x4

    invoke-direct {v6, v12, v13, v8, v10}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v6, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->WEEK:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1199
    new-instance v8, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v10, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MONTHS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v12, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONTH:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v14, "MONTH"

    const/4 v15, 0x5

    invoke-direct {v8, v14, v15, v10, v12}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v8, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MONTH:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1200
    new-instance v10, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v12, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->QUARTERS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v14, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->QUARTER:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v15, "QUARTER"

    const/4 v13, 0x6

    invoke-direct {v10, v15, v13, v12, v14}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v10, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->QUARTER:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1201
    new-instance v12, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v14, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;->YEARS:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    sget-object v15, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->YEAR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v13, "YEAR"

    const/4 v11, 0x7

    invoke-direct {v12, v13, v11, v14, v15}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v12, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->YEAR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1202
    new-instance v13, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v14, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v15, "SUNDAY"

    const/16 v11, 0x8

    invoke-direct {v13, v15, v11, v4, v14}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v13, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SUNDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1203
    new-instance v14, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v15, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->MONDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v11, "MONDAY"

    const/16 v9, 0x9

    invoke-direct {v14, v11, v9, v4, v15}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v14, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MONDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1204
    new-instance v11, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v15, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->TUESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v9, "TUESDAY"

    const/16 v7, 0xa

    invoke-direct {v11, v9, v7, v4, v15}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v11, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->TUESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1205
    new-instance v9, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v15, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->WEDNESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v7, "WEDNESDAY"

    const/16 v3, 0xb

    invoke-direct {v9, v7, v3, v4, v15}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v9, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->WEDNESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1206
    new-instance v7, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v15, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->THURSDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v3, "THURSDAY"

    move-object/from16 v16, v9

    const/16 v9, 0xc

    invoke-direct {v7, v3, v9, v4, v15}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v7, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->THURSDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1207
    new-instance v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v15, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->FRIDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v9, "FRIDAY"

    move-object/from16 v17, v7

    const/16 v7, 0xd

    invoke-direct {v3, v9, v7, v4, v15}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v3, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->FRIDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    .line 1208
    new-instance v9, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    sget-object v15, Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    const-string v7, "SATURDAY"

    move-object/from16 v18, v3

    const/16 v3, 0xe

    invoke-direct {v9, v7, v3, v4, v15}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;-><init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V

    sput-object v9, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SATURDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    const/16 v4, 0xf

    new-array v4, v4, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    const/4 v7, 0x0

    aput-object v0, v4, v7

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v6, v4, v0

    const/4 v0, 0x5

    aput-object v8, v4, v0

    const/4 v0, 0x6

    aput-object v10, v4, v0

    const/4 v0, 0x7

    aput-object v12, v4, v0

    const/16 v0, 0x8

    aput-object v13, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v11, v4, v0

    const/16 v0, 0xb

    aput-object v16, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    aput-object v9, v4, v3

    .line 1193
    sput-object v4, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->$VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            ")V"
        }
    .end annotation

    .line 1213
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1214
    iput-object p3, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->relUnit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    .line 1215
    iput-object p4, p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->absUnit:Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    return-void
.end method

.method static synthetic access$200(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    .locals 0

    .line 1193
    invoke-static {p0}, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    move-result-object p0

    return-object p0
.end method

.method private static final orNullFromString(Ljava/lang/CharSequence;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    .locals 2

    .line 1220
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "quarter"

    .line 1262
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 1263
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->QUARTER:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_1
    const-string v0, "minute"

    .line 1255
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MINUTE:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_2
    const-string v0, "second"

    .line 1257
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 1258
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SECOND:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_3
    const-string v0, "month"

    .line 1250
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 1251
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MONTH:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_4
    const-string v0, "hour"

    .line 1241
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1242
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->HOUR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_5
    const-string v0, "week"

    .line 1243
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1244
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->WEEK:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_6
    const-string v0, "year"

    .line 1245
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 1246
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->YEAR:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_7
    const-string v0, "day"

    .line 1222
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1223
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->DAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_8
    const-string v0, "sun"

    .line 1224
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1225
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SUNDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_9
    const-string v0, "mon"

    .line 1226
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1227
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->MONDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_a
    const-string v0, "tue"

    .line 1228
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1229
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->TUESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_b
    const-string v0, "wed"

    .line 1230
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1231
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->WEDNESDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_c
    const-string v0, "thu"

    .line 1232
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1233
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->THURSDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_d
    const-string v0, "fri"

    .line 1234
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1235
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->FRIDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_e
    const-string v0, "sat"

    .line 1236
    invoke-virtual {v0, p0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 1237
    sget-object p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->SATURDAY:Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0

    :cond_f
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    .locals 1

    .line 1193
    const-class v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object p0
.end method

.method public static values()[Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;
    .locals 1

    .line 1193
    sget-object v0, Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->$VALUES:[Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    invoke-virtual {v0}, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelDateTimeDataSink$DateTimeUnit;

    return-object v0
.end method
