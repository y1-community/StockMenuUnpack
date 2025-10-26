.class public Lcom/ibm/icu/util/DangiCalendar;
.super Lcom/ibm/icu/util/ChineseCalendar;
.source "DangiCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DANGI_EPOCH_YEAR:I = -0x91c

.field private static final KOREA_ZONE:Lcom/ibm/icu/util/TimeZone;

.field private static final serialVersionUID:J = 0x7130fd50087bac21L


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 64
    new-instance v0, Lcom/ibm/icu/util/InitialTimeZoneRule;

    const-string v1, "GMT+8"

    const v2, 0x1b77400

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    const/4 v1, 0x1

    new-array v8, v1, [J

    const-wide v4, -0x21801858c00L

    aput-wide v4, v8, v3

    new-array v13, v1, [J

    const-wide v4, -0x210a9d46000L

    aput-wide v4, v13, v3

    new-array v1, v1, [J

    const-wide v4, -0x1a9de23f800L

    aput-wide v4, v1, v3

    .line 68
    new-instance v2, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const-string v5, "Korean 1897"

    const v6, 0x1808580

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 70
    new-instance v3, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const-string v10, "Korean 1898-1911"

    const v11, 0x1b77400

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 72
    new-instance v4, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const-string v15, "Korean 1912-"

    const v16, 0x1ee6280

    const/16 v17, 0x0

    const/16 v19, 0x1

    move-object v14, v4

    move-object/from16 v18, v1

    invoke-direct/range {v14 .. v19}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    .line 75
    new-instance v1, Lcom/ibm/icu/util/RuleBasedTimeZone;

    const-string v5, "KOREA_ZONE"

    invoke-direct {v1, v5, v0}, Lcom/ibm/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V

    .line 76
    invoke-virtual {v1, v2}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    .line 77
    invoke-virtual {v1, v3}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    .line 78
    invoke-virtual {v1, v4}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    .line 79
    invoke-virtual {v1}, Lcom/ibm/icu/util/RuleBasedTimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    .line 80
    sput-object v1, Lcom/ibm/icu/util/DangiCalendar;->KOREA_ZONE:Lcom/ibm/icu/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/DangiCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 119
    sget-object v0, Lcom/ibm/icu/util/DangiCalendar;->KOREA_ZONE:Lcom/ibm/icu/util/TimeZone;

    const/16 v1, -0x91c

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/ibm/icu/util/ChineseCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;ILcom/ibm/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getDefault()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/util/ULocale$Category;->FORMAT:Lcom/ibm/icu/util/ULocale$Category;

    invoke-static {v1}, Lcom/ibm/icu/util/ULocale;->getDefault(Lcom/ibm/icu/util/ULocale$Category;)Lcom/ibm/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/ibm/icu/util/DangiCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/DangiCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "dangi"

    return-object v0
.end method
