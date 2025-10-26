.class public Lcom/ibm/icu/util/VTimeZone;
.super Lcom/ibm/icu/util/BasicTimeZone;
.source "VTimeZone.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COLON:Ljava/lang/String; = ":"

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final DEF_DSTSAVINGS:I = 0x36ee80

.field private static final DEF_TZSTARTTIME:J = 0x0L

.field private static final EQUALS_SIGN:Ljava/lang/String; = "="

.field private static final ERR:I = 0x3

.field private static final ICAL_BEGIN:Ljava/lang/String; = "BEGIN"

.field private static final ICAL_BEGIN_VTIMEZONE:Ljava/lang/String; = "BEGIN:VTIMEZONE"

.field private static final ICAL_BYDAY:Ljava/lang/String; = "BYDAY"

.field private static final ICAL_BYMONTH:Ljava/lang/String; = "BYMONTH"

.field private static final ICAL_BYMONTHDAY:Ljava/lang/String; = "BYMONTHDAY"

.field private static final ICAL_DAYLIGHT:Ljava/lang/String; = "DAYLIGHT"

.field private static final ICAL_DOW_NAMES:[Ljava/lang/String;

.field private static final ICAL_DTSTART:Ljava/lang/String; = "DTSTART"

.field private static final ICAL_END:Ljava/lang/String; = "END"

.field private static final ICAL_END_VTIMEZONE:Ljava/lang/String; = "END:VTIMEZONE"

.field private static final ICAL_FREQ:Ljava/lang/String; = "FREQ"

.field private static final ICAL_LASTMOD:Ljava/lang/String; = "LAST-MODIFIED"

.field private static final ICAL_RDATE:Ljava/lang/String; = "RDATE"

.field private static final ICAL_RRULE:Ljava/lang/String; = "RRULE"

.field private static final ICAL_STANDARD:Ljava/lang/String; = "STANDARD"

.field private static final ICAL_TZID:Ljava/lang/String; = "TZID"

.field private static final ICAL_TZNAME:Ljava/lang/String; = "TZNAME"

.field private static final ICAL_TZOFFSETFROM:Ljava/lang/String; = "TZOFFSETFROM"

.field private static final ICAL_TZOFFSETTO:Ljava/lang/String; = "TZOFFSETTO"

.field private static final ICAL_TZURL:Ljava/lang/String; = "TZURL"

.field private static final ICAL_UNTIL:Ljava/lang/String; = "UNTIL"

.field private static final ICAL_VTIMEZONE:Ljava/lang/String; = "VTIMEZONE"

.field private static final ICAL_YEARLY:Ljava/lang/String; = "YEARLY"

.field private static final ICU_TZINFO_PROP:Ljava/lang/String; = "X-TZINFO"

.field private static ICU_TZVERSION:Ljava/lang/String; = null

.field private static final INI:I = 0x0

.field private static final MAX_TIME:J = 0x7fffffffffffffffL

.field private static final MIN_TIME:J = -0x8000000000000000L

.field private static final MONTHLENGTH:[I

.field private static final NEWLINE:Ljava/lang/String; = "\r\n"

.field private static final SEMICOLON:Ljava/lang/String; = ";"

.field private static final TZI:I = 0x2

.field private static final VTZ:I = 0x1

.field private static final serialVersionUID:J = -0x5f154d3410b1aebeL


# instance fields
.field private volatile transient isFrozen:Z

.field private lastmod:Ljava/util/Date;

.field private olsonzid:Ljava/lang/String;

.field private tz:Lcom/ibm/icu/util/BasicTimeZone;

.field private tzurl:Ljava/lang/String;

.field private vtzlines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SU"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MO"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "TU"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "WE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TH"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    .line 446
    sput-object v0, Lcom/ibm/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 450
    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    .line 455
    :try_start_0
    invoke-static {}, Lcom/ibm/icu/util/TimeZone;->getTZDataVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 458
    sput-object v0, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    .line 464
    invoke-direct {p0}, Lcom/ibm/icu/util/BasicTimeZone;-><init>()V

    const/4 v0, 0x0

    .line 397
    iput-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    .line 398
    iput-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    .line 399
    iput-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    const/4 v0, 0x0

    .line 2102
    iput-boolean v0, p0, Lcom/ibm/icu/util/VTimeZone;->isFrozen:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 468
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/BasicTimeZone;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 397
    iput-object p1, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    .line 398
    iput-object p1, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    .line 399
    iput-object p1, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    const/4 p1, 0x0

    .line 2102
    iput-boolean p1, p0, Lcom/ibm/icu/util/VTimeZone;->isFrozen:Z

    return-void
.end method

.method private static appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ";"

    .line 1874
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "UNTIL"

    .line 1875
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    .line 1876
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static beginRRULE(Ljava/io/Writer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "RRULE"

    .line 1857
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1858
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "FREQ"

    .line 1859
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    .line 1860
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "YEARLY"

    .line 1861
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, ";"

    .line 1862
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "BYMONTH"

    .line 1863
    invoke-virtual {p0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    .line 1865
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1866
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BEGIN"

    .line 1804
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1805
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "DAYLIGHT"

    .line 1807
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "STANDARD"

    .line 1809
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const-string p1, "\r\n"

    .line 1811
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "TZOFFSETTO"

    .line 1814
    invoke-virtual {p0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1816
    invoke-static {p4}, Lcom/ibm/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p4, "TZOFFSETFROM"

    .line 1820
    invoke-virtual {p0, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1822
    invoke-static {p3}, Lcom/ibm/icu/util/VTimeZone;->millisToOffset(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1823
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p4, "TZNAME"

    .line 1826
    invoke-virtual {p0, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1827
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1828
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1829
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "DTSTART"

    .line 1832
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    int-to-long p2, p3

    add-long/2addr p5, p2

    .line 1834
    invoke-static {p5, p6}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/io/Reader;)Lcom/ibm/icu/util/VTimeZone;
    .locals 1

    .line 73
    new-instance v0, Lcom/ibm/icu/util/VTimeZone;

    invoke-direct {v0}, Lcom/ibm/icu/util/VTimeZone;-><init>()V

    .line 74
    invoke-direct {v0, p0}, Lcom/ibm/icu/util/VTimeZone;->load(Ljava/io/Reader;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create(Ljava/lang/String;)Lcom/ibm/icu/util/VTimeZone;
    .locals 2

    const/4 v0, 0x1

    .line 52
    invoke-static {p0, v0}, Lcom/ibm/icu/util/TimeZone;->getFrozenICUTimeZone(Ljava/lang/String;Z)Lcom/ibm/icu/util/BasicTimeZone;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    new-instance v1, Lcom/ibm/icu/util/VTimeZone;

    invoke-direct {v1, p0}, Lcom/ibm/icu/util/VTimeZone;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Lcom/ibm/icu/util/BasicTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object p0

    check-cast p0, Lcom/ibm/icu/util/BasicTimeZone;

    iput-object p0, v1, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    .line 58
    invoke-virtual {p0}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    return-object v1
.end method

.method private static createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Lcom/ibm/icu/util/TimeZoneRule;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/ibm/icu/util/TimeZoneRule;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p5, :cond_2

    .line 1223
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1229
    :cond_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [J

    .line 1232
    :try_start_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .line 1233
    invoke-static {p5, p6}, Lcom/ibm/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v2

    aput-wide v2, p3, v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :cond_1
    move-object v5, p3

    goto :goto_2

    :catch_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    :goto_1
    const/4 p5, 0x1

    new-array p5, p5, [J

    aput-wide p3, p5, v0

    move-object v5, p5

    .line 1239
    :goto_2
    new-instance p3, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    const/4 v6, 0x2

    move-object v1, p3

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    return-object p3
.end method

.method private static createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Lcom/ibm/icu/util/TimeZoneRule;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/ibm/icu/util/TimeZoneRule;"
        }
    .end annotation

    move-object/from16 v0, p5

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 863
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_15

    :cond_0
    const/4 v2, 0x0

    .line 867
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v5, v4, [J

    .line 870
    invoke-static {v3, v5}, Lcom/ibm/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    move-result-object v3

    if-nez v3, :cond_1

    return-object v1

    .line 876
    :cond_1
    aget v6, v3, v2

    .line 877
    aget v10, v3, v4

    const/4 v7, 0x2

    .line 878
    aget v9, v3, v7

    const/4 v8, 0x3

    .line 879
    aget v11, v3, v8

    .line 881
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x7

    const/4 v15, -0x1

    if-ne v12, v4, :cond_b

    .line 883
    array-length v0, v3

    const/4 v8, 0x4

    if-le v0, v8, :cond_a

    .line 886
    array-length v0, v3

    const/16 v8, 0xa

    if-ne v0, v8, :cond_9

    if-eq v6, v15, :cond_9

    if-nez v10, :cond_2

    goto :goto_5

    :cond_2
    new-array v0, v14, [I

    const/4 v8, 0x0

    const/16 v11, 0x1f

    :goto_0
    if-ge v8, v14, :cond_5

    add-int/lit8 v12, v8, 0x3

    .line 894
    aget v12, v3, v12

    aput v12, v0, v8

    .line 898
    aget v12, v0, v8

    if-lez v12, :cond_3

    aget v12, v0, v8

    goto :goto_1

    :cond_3
    sget-object v12, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v12, v12, v6

    aget v13, v0, v8

    add-int/2addr v12, v13

    add-int/2addr v12, v4

    :goto_1
    aput v12, v0, v8

    .line 899
    aget v12, v0, v8

    if-ge v12, v11, :cond_4

    aget v11, v0, v8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    :goto_2
    if-ge v3, v14, :cond_a

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v14, :cond_7

    .line 905
    aget v12, v0, v8

    add-int v13, v11, v3

    if-ne v12, v13, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_8

    return-object v1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    :goto_5
    return-object v1

    :cond_a
    move-object v0, v1

    move/from16 v1, p6

    goto/16 :goto_f

    :cond_b
    if-eq v6, v15, :cond_27

    if-eqz v10, :cond_27

    if-nez v11, :cond_c

    goto/16 :goto_14

    .line 927
    :cond_c
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v14, :cond_d

    return-object v1

    .line 936
    :cond_d
    array-length v11, v3

    sub-int/2addr v11, v8

    const/4 v12, 0x0

    const/16 v13, 0x1f

    :goto_6
    if-ge v12, v11, :cond_10

    add-int/lit8 v16, v12, 0x3

    .line 939
    aget v16, v3, v16

    if-lez v16, :cond_e

    goto :goto_7

    .line 940
    :cond_e
    sget-object v17, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v17, v17, v6

    add-int v17, v17, v16

    add-int/lit8 v16, v17, 0x1

    :goto_7
    move/from16 v7, v16

    if-ge v7, v13, :cond_f

    move v13, v7

    :cond_f
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x2

    goto :goto_6

    :cond_10
    move v7, v6

    const/4 v3, 0x1

    const/4 v12, -0x1

    .line 945
    :goto_8
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_1f

    .line 946
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v14, v4, [J

    .line 948
    invoke-static {v1, v14}, Lcom/ibm/icu/util/VTimeZone;->parseRRULE(Ljava/lang/String;[J)[I

    move-result-object v1

    aget-wide v18, v14, v2

    .line 951
    aget-wide v20, v5, v2

    cmp-long v22, v18, v20

    if-lez v22, :cond_11

    move-object v5, v14

    .line 956
    :cond_11
    aget v14, v1, v2

    if-eq v14, v15, :cond_1e

    aget v14, v1, v4

    if-eqz v14, :cond_1e

    aget v14, v1, v8

    if-nez v14, :cond_12

    goto/16 :goto_e

    .line 960
    :cond_12
    array-length v14, v1

    sub-int/2addr v14, v8

    add-int/2addr v11, v14

    const/4 v8, 0x7

    if-le v11, v8, :cond_13

    const/4 v8, 0x0

    return-object v8

    :cond_13
    const/4 v8, 0x0

    .line 967
    aget v15, v1, v4

    if-eq v15, v10, :cond_14

    return-object v8

    .line 971
    :cond_14
    aget v8, v1, v2

    if-eq v8, v6, :cond_1a

    const/4 v8, -0x1

    if-ne v12, v8, :cond_19

    .line 973
    aget v12, v1, v2

    sub-int/2addr v12, v6

    const/16 v15, -0xb

    if-eq v12, v15, :cond_18

    if-ne v12, v8, :cond_15

    goto :goto_a

    :cond_15
    const/16 v8, 0xb

    if-eq v12, v8, :cond_17

    if-ne v12, v4, :cond_16

    goto :goto_9

    :cond_16
    const/4 v8, 0x0

    return-object v8

    .line 982
    :cond_17
    :goto_9
    aget v8, v1, v2

    move v12, v8

    goto :goto_b

    .line 976
    :cond_18
    :goto_a
    aget v7, v1, v2

    move v12, v7

    const/16 v13, 0x1f

    goto :goto_b

    .line 987
    :cond_19
    aget v8, v1, v2

    if-eq v8, v6, :cond_1a

    aget v8, v1, v2

    if-eq v8, v12, :cond_1a

    const/4 v8, 0x0

    return-object v8

    .line 993
    :cond_1a
    :goto_b
    aget v8, v1, v2

    if-ne v8, v7, :cond_1d

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v14, :cond_1d

    add-int/lit8 v15, v8, 0x3

    .line 995
    aget v15, v1, v15

    if-lez v15, :cond_1b

    goto :goto_d

    .line 996
    :cond_1b
    sget-object v20, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v21, v1, v2

    aget v20, v20, v21

    add-int v20, v20, v15

    add-int/lit8 v15, v20, 0x1

    :goto_d
    if-ge v15, v13, :cond_1c

    move v13, v15

    :cond_1c
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x3

    const/4 v14, 0x7

    const/4 v15, -0x1

    goto/16 :goto_8

    :cond_1e
    :goto_e
    const/4 v0, 0x0

    return-object v0

    :cond_1f
    const/4 v0, 0x0

    const/4 v1, 0x7

    if-eq v11, v1, :cond_20

    return-object v0

    :cond_20
    move/from16 v1, p6

    move v6, v7

    move v11, v13

    :goto_f
    int-to-long v7, v1

    add-long v7, p3, v7

    .line 1011
    invoke-static {v7, v8, v0}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v1

    .line 1012
    aget v25, v1, v2

    const/4 v0, -0x1

    if-ne v6, v0, :cond_21

    .line 1015
    aget v0, v1, v4

    move v8, v0

    goto :goto_10

    :cond_21
    move v8, v6

    :goto_10
    if-nez v10, :cond_22

    if-nez v9, :cond_22

    if-nez v11, :cond_22

    const/4 v0, 0x2

    .line 1019
    aget v0, v1, v0

    move v11, v0

    :cond_22
    const/4 v0, 0x5

    .line 1021
    aget v12, v1, v0

    const v0, 0x7fffffff

    .line 1024
    aget-wide v3, v5, v2

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v13, v3, v6

    if-eqz v13, :cond_23

    .line 1025
    aget-wide v3, v5, v2

    invoke-static {v3, v4, v1}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    .line 1026
    aget v0, v1, v2

    move/from16 v26, v0

    goto :goto_11

    :cond_23
    const v26, 0x7fffffff

    :goto_11
    if-nez v10, :cond_24

    if-nez v9, :cond_24

    if-eqz v11, :cond_24

    .line 1033
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    invoke-direct {v0, v8, v11, v12, v2}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIII)V

    :goto_12
    move-object/from16 v24, v0

    goto :goto_13

    :cond_24
    if-eqz v10, :cond_25

    if-eqz v9, :cond_25

    if-nez v11, :cond_25

    .line 1036
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    const/4 v1, 0x0

    move-object v7, v0

    move v11, v12

    move v12, v1

    invoke-direct/range {v7 .. v12}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIII)V

    goto :goto_12

    :cond_25
    if-eqz v10, :cond_26

    if-nez v9, :cond_26

    if-eqz v11, :cond_26

    .line 1040
    new-instance v0, Lcom/ibm/icu/util/DateTimeRule;

    const/4 v1, 0x1

    const/4 v13, 0x0

    move-object v7, v0

    move v9, v11

    move v11, v1

    invoke-direct/range {v7 .. v13}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    goto :goto_12

    .line 1046
    :goto_13
    new-instance v0, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    move-object/from16 v20, v0

    move-object/from16 v21, p0

    move/from16 v22, p1

    move/from16 v23, p2

    invoke-direct/range {v20 .. v26}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    return-object v0

    :cond_26
    const/4 v0, 0x0

    return-object v0

    :cond_27
    :goto_14
    move-object v0, v1

    return-object v0

    :cond_28
    :goto_15
    move-object v0, v1

    return-object v0
.end method

.method private static endZoneProps(Ljava/io/Writer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "END"

    .line 1843
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1844
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p1, "DAYLIGHT"

    .line 1846
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "STANDARD"

    .line 1848
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    const-string p1, "\r\n"

    .line 1850
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static getDateTimeString(J)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1921
    invoke-static {p0, p1, v0}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object p0

    .line 1922
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    .line 1923
    aget v0, p0, v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 1924
    aget v1, p0, v0

    add-int/2addr v1, v0

    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1925
    aget v1, p0, v0

    invoke-static {v1, v0}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    .line 1926
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 1928
    aget p0, p0, v1

    const v1, 0x36ee80

    .line 1929
    div-int v2, p0, v1

    .line 1930
    rem-int/2addr p0, v1

    const v1, 0xea60

    .line 1931
    div-int v3, p0, v1

    .line 1932
    rem-int/2addr p0, v1

    .line 1933
    div-int/lit16 p0, p0, 0x3e8

    .line 1935
    invoke-static {v2, v0}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    invoke-static {v3, v0}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    invoke-static {p0, v0}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 853
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(DST)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 855
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(STD)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUTCDateTimeString(J)Ljava/lang/String;
    .locals 1

    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Z"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isEquivalentDateRule(IIILcom/ibm/icu/util/DateTimeRule;)Z
    .locals 5

    .line 1490
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 1493
    :cond_0
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result p2

    if-eqz p2, :cond_1

    return v1

    .line 1497
    :cond_1
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1498
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result p2

    if-ne p2, p1, :cond_2

    return v0

    .line 1501
    :cond_2
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result p2

    .line 1502
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 1503
    rem-int/lit8 v2, p2, 0x7

    if-ne v2, v0, :cond_3

    add-int/lit8 v2, p2, 0x6

    div-int/lit8 v2, v2, 0x7

    if-ne v2, p1, :cond_3

    return v0

    :cond_3
    if-eq p0, v0, :cond_4

    .line 1506
    sget-object v2, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v2, p0

    sub-int/2addr v3, p2

    rem-int/lit8 v3, v3, 0x7

    const/4 v4, 0x6

    if-ne v3, v4, :cond_4

    aget v2, v2, p0

    sub-int/2addr v2, p2

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x7

    mul-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_4

    return v0

    .line 1511
    :cond_4
    invoke-virtual {p3}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result p3

    const/4 v2, 0x3

    if-ne p3, v2, :cond_6

    .line 1512
    rem-int/lit8 p3, p2, 0x7

    if-nez p3, :cond_5

    div-int/lit8 p3, p2, 0x7

    if-ne p3, p1, :cond_5

    return v0

    :cond_5
    if-eq p0, v0, :cond_6

    .line 1515
    sget-object p3, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v2, p3, p0

    sub-int/2addr v2, p2

    rem-int/lit8 v2, v2, 0x7

    if-nez v2, :cond_6

    aget p0, p3, p0

    sub-int/2addr p0, p2

    div-int/lit8 p0, p0, 0x7

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, -0x1

    if-ne p1, p0, :cond_6

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method private load(Ljava/io/Reader;)Z
    .locals 8

    const/4 v0, 0x0

    .line 484
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 490
    :goto_1
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, -0x1

    const-string v6, "END:VTIMEZONE"

    const/4 v7, 0x1

    if-ne v4, v5, :cond_2

    if-eqz v2, :cond_1

    .line 493
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 494
    iget-object p1, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    const/16 v5, 0xd

    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    const/16 v5, 0xa

    if-eqz v3, :cond_5

    const/16 v3, 0x9

    if-eq v4, v3, :cond_0

    const/16 v3, 0x20

    if-eq v4, v3, :cond_0

    if-eqz v2, :cond_4

    .line 508
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 509
    iget-object v3, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    if-eq v4, v5, :cond_0

    int-to-char v3, v4

    .line 514
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    if-ne v4, v5, :cond_9

    if-eqz v2, :cond_7

    .line 523
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 524
    iget-object p1, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    if-nez v7, :cond_6

    return v0

    .line 549
    :cond_6
    invoke-direct {p0}, Lcom/ibm/icu/util/VTimeZone;->parse()Z

    move-result p1

    return p1

    .line 529
    :cond_7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BEGIN:VTIMEZONE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 530
    iget-object v2, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_9
    int-to-char v4, v4

    .line 537
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    return v0
.end method

.method private static millisToOffset(I)Ljava/lang/String;
    .locals 4

    .line 2062
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ltz p0, :cond_0

    const/16 v1, 0x2b

    .line 2064
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    .line 2066
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-int p0, p0

    .line 2070
    :goto_0
    div-int/lit16 p0, p0, 0x3e8

    .line 2072
    rem-int/lit8 v1, p0, 0x3c

    sub-int/2addr p0, v1

    .line 2073
    div-int/lit8 p0, p0, 0x3c

    .line 2074
    rem-int/lit8 v2, p0, 0x3c

    .line 2075
    div-int/lit8 p0, p0, 0x3c

    const/4 v3, 0x2

    .line 2077
    invoke-static {p0, v3}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2078
    invoke-static {v2, v3}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2079
    invoke-static {v1, v3}, Lcom/ibm/icu/util/VTimeZone;->numToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static numToString(II)Ljava/lang/String;
    .locals 3

    .line 2088
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 2089
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    sub-int p1, v0, p1

    .line 2091
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2093
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    if-ge v0, p1, :cond_1

    const/16 v2, 0x30

    .line 2095
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2097
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2098
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static offsetStrToMillis(Ljava/lang/String;)I
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    goto :goto_2

    .line 2023
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 2029
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_4

    const/4 v5, -0x1

    :goto_0
    const/4 v6, 0x3

    .line 2040
    :try_start_0
    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2041
    :try_start_1
    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v2, v3, :cond_3

    .line 2043
    :try_start_2
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, p0

    :cond_3
    move p0, v1

    move v1, v5

    goto :goto_3

    :catch_0
    const/4 v6, 0x0

    goto :goto_1

    :catch_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :catch_2
    :goto_1
    move v1, v5

    const/4 p0, 0x0

    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p0, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    if-eqz v0, :cond_5

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v7, v6

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v7, p0

    mul-int v1, v1, v7

    mul-int/lit16 v1, v1, 0x3e8

    return v1

    .line 2052
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad offset string"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private parse()Z
    .locals 26

    move-object/from16 v0, p0

    .line 563
    iget-object v1, v0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_15

    .line 579
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide v3, 0x7fffffffffffffffL

    .line 584
    iget-object v5, v0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v6, ":"

    .line 585
    invoke-virtual {v13, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v22, v5

    .line 589
    invoke-virtual {v13, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    .line 590
    invoke-virtual {v13, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v13, "BEGIN"

    if-eqz v10, :cond_21

    const-string v2, "END"

    move/from16 v23, v8

    const/4 v8, 0x1

    if-eq v10, v8, :cond_19

    const/4 v8, 0x2

    if-eq v10, v8, :cond_3

    :cond_2
    move/from16 v24, v14

    move-object/from16 v25, v15

    goto/16 :goto_c

    :cond_3
    const-string v8, "DTSTART"

    .line 635
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v15, v6

    :goto_1
    move/from16 v8, v23

    goto/16 :goto_d

    :cond_4
    const-string v8, "TZNAME"

    .line 637
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v12, v6

    goto :goto_1

    :cond_5
    const-string v8, "TZOFFSETFROM"

    .line 639
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object/from16 v20, v6

    goto :goto_1

    :cond_6
    const-string v8, "TZOFFSETTO"

    .line 641
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object/from16 v21, v6

    goto :goto_1

    :cond_7
    const-string v8, "RDATE"

    .line 643
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v11, :cond_8

    :goto_2
    move/from16 v8, v23

    goto/16 :goto_a

    :cond_8
    if-nez v19, :cond_9

    .line 650
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    :cond_9
    move-object/from16 v2, v19

    .line 654
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v5, v6, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    :goto_3
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 656
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 657
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    move-object/from16 v19, v2

    goto :goto_1

    :cond_b
    const-string v8, "RRULE"

    .line 659
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    if-nez v11, :cond_c

    if-eqz v19, :cond_c

    goto :goto_2

    :cond_c
    if-nez v19, :cond_d

    .line 665
    new-instance v19, Ljava/util/LinkedList;

    invoke-direct/range {v19 .. v19}, Ljava/util/LinkedList;-><init>()V

    :cond_d
    move-object/from16 v2, v19

    .line 668
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v2

    move/from16 v8, v23

    const/4 v2, 0x3

    const/4 v11, 0x1

    goto/16 :goto_e

    .line 669
    :cond_e
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v15, :cond_18

    if-eqz v20, :cond_18

    if-nez v21, :cond_f

    goto/16 :goto_7

    :cond_f
    if-nez v12, :cond_10

    .line 677
    invoke-static {v7, v14}, Lcom/ibm/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    :cond_10
    move-object v2, v12

    .line 689
    :try_start_0
    invoke-static/range {v20 .. v20}, Lcom/ibm/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    move-result v5

    .line 690
    invoke-static/range {v21 .. v21}, Lcom/ibm/icu/util/VTimeZone;->offsetStrToMillis(Ljava/lang/String;)I

    move-result v6

    const v8, 0x36ee80

    if-eqz v14, :cond_12

    sub-int v10, v6, v5

    if-lez v10, :cond_11

    move v13, v5

    goto :goto_4

    :cond_11
    sub-int v10, v6, v8

    move v13, v10

    const v10, 0x36ee80

    goto :goto_4

    :cond_12
    move v13, v6

    const/4 v10, 0x0

    .line 708
    :goto_4
    invoke-static {v15, v5}, Lcom/ibm/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_13

    move-object v12, v2

    move/from16 v24, v14

    move v14, v10

    move-object/from16 v25, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v19

    move/from16 v18, v5

    .line 713
    :try_start_1
    invoke-static/range {v12 .. v18}, Lcom/ibm/icu/util/VTimeZone;->createRuleByRRULE(Ljava/lang/String;IIJLjava/util/List;I)Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v12

    goto :goto_5

    :cond_13
    move/from16 v24, v14

    move-object/from16 v25, v15

    move-object v12, v2

    move v14, v10

    move-wide/from16 v15, v16

    move-object/from16 v17, v19

    move/from16 v18, v5

    .line 715
    invoke-static/range {v12 .. v18}, Lcom/ibm/icu/util/VTimeZone;->createRuleByRDATE(Ljava/lang/String;IIJLjava/util/List;I)Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    if-eqz v12, :cond_16

    const/4 v13, 0x0

    .line 718
    :try_start_2
    invoke-virtual {v12, v5, v13}, Lcom/ibm/icu/util/TimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v14

    .line 719
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    cmp-long v13, v15, v3

    if-gez v13, :cond_16

    .line 721
    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    if-lez v10, :cond_15

    :cond_14
    move v8, v5

    const/4 v9, 0x0

    goto :goto_6

    :cond_15
    sub-int v6, v5, v6

    if-ne v6, v8, :cond_14

    sub-int/2addr v5, v8

    move v8, v5

    const v9, 0x36ee80

    goto :goto_6

    :catch_0
    move/from16 v24, v14

    move-object/from16 v25, v15

    :catch_1
    const/4 v12, 0x0

    :catch_2
    :cond_16
    move/from16 v8, v23

    :goto_6
    if-nez v12, :cond_17

    move-object v12, v2

    goto :goto_9

    .line 747
    :cond_17
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v12, v2

    goto/16 :goto_b

    :cond_18
    :goto_7
    move/from16 v24, v14

    move-object/from16 v25, v15

    goto :goto_8

    :cond_19
    move/from16 v24, v14

    move-object/from16 v25, v15

    const-string v8, "TZID"

    .line 599
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    move-object v7, v6

    goto/16 :goto_c

    :cond_1a
    const-string v8, "TZURL"

    .line 601
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 602
    iput-object v6, v0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    goto/16 :goto_c

    :cond_1b
    const-string v8, "LAST-MODIFIED"

    .line 603
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 606
    new-instance v2, Ljava/util/Date;

    const/4 v5, 0x0

    invoke-static {v6, v5}, Lcom/ibm/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v13

    invoke-direct {v2, v13, v14}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    goto :goto_c

    .line 607
    :cond_1c
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    const-string v2, "DAYLIGHT"

    .line 608
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "STANDARD"

    .line 609
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    if-eqz v2, :cond_1e

    :cond_1d
    if-nez v7, :cond_1f

    :cond_1e
    :goto_8
    move/from16 v8, v23

    :goto_9
    move/from16 v14, v24

    move-object/from16 v15, v25

    :goto_a
    const/4 v2, 0x3

    const/4 v10, 0x3

    goto :goto_e

    :cond_1f
    move v14, v2

    move/from16 v8, v23

    move-object/from16 v15, v25

    const/4 v2, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    goto :goto_e

    .line 629
    :cond_20
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_21
    move/from16 v23, v8

    move/from16 v24, v14

    move-object/from16 v25, v15

    .line 594
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "VTIMEZONE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    move/from16 v8, v23

    :goto_b
    move/from16 v14, v24

    move-object/from16 v15, v25

    const/4 v2, 0x3

    const/4 v10, 0x1

    goto :goto_e

    :cond_22
    :goto_c
    move/from16 v8, v23

    move/from16 v14, v24

    move-object/from16 v15, v25

    :goto_d
    const/4 v2, 0x3

    :goto_e
    if-ne v10, v2, :cond_23

    const/4 v2, 0x0

    .line 754
    iput-object v2, v0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    const/4 v2, 0x0

    return v2

    :cond_23
    move-object/from16 v5, v22

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_24
    move/from16 v23, v8

    .line 760
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_25

    return v2

    .line 765
    :cond_25
    new-instance v3, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-static {v7, v2}, Lcom/ibm/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    move/from16 v8, v23

    invoke-direct {v3, v4, v8, v9}, Lcom/ibm/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 769
    new-instance v2, Lcom/ibm/icu/util/RuleBasedTimeZone;

    invoke-direct {v2, v7, v3}, Lcom/ibm/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 773
    :goto_f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_27

    .line 774
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/util/TimeZoneRule;

    .line 775
    instance-of v10, v6, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v10, :cond_26

    .line 776
    check-cast v6, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v6}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v6

    const v10, 0x7fffffff

    if-ne v6, v10, :cond_26

    add-int/lit8 v5, v5, 0x1

    move v3, v4

    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_27
    const/4 v4, 0x2

    if-le v5, v4, :cond_28

    const/4 v4, 0x0

    return v4

    :cond_28
    const/4 v4, 0x1

    if-ne v5, v4, :cond_2e

    .line 788
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_29

    .line 792
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_13

    .line 795
    :cond_29
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 796
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    .line 797
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    .line 800
    invoke-virtual {v4, v8, v9}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v8

    move-object v10, v8

    const/4 v9, 0x0

    .line 802
    :goto_10
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_2c

    if-ne v3, v9, :cond_2a

    goto :goto_11

    .line 806
    :cond_2a
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ibm/icu/util/TimeZoneRule;

    .line 807
    invoke-virtual {v11, v5, v6}, Lcom/ibm/icu/util/TimeZoneRule;->getFinalStart(II)Ljava/util/Date;

    move-result-object v12

    .line 808
    invoke-virtual {v12, v10}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 809
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    .line 810
    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    .line 811
    invoke-virtual {v11}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    const/16 v16, 0x0

    move-object v10, v4

    move-wide v11, v12

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    .line 809
    invoke-virtual/range {v10 .. v15}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v10

    :cond_2b
    :goto_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    :cond_2c
    if-ne v10, v8, :cond_2d

    .line 818
    new-instance v5, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;

    .line 819
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v12

    .line 820
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v13

    .line 821
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v14

    const/4 v4, 0x1

    new-array v15, v4, [J

    .line 822
    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const/4 v4, 0x0

    aput-wide v8, v15, v4

    const/16 v16, 0x2

    move-object v11, v5

    invoke-direct/range {v11 .. v16}, Lcom/ibm/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    goto :goto_12

    .line 826
    :cond_2d
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v8, 0x0

    invoke-static {v5, v6, v8}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v5

    .line 827
    new-instance v6, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    .line 828
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v9

    .line 829
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v10

    .line 830
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v11

    .line 831
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v12

    .line 832
    invoke-virtual {v4}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v13

    const/4 v4, 0x0

    aget v14, v5, v4

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/ibm/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILcom/ibm/icu/util/DateTimeRule;II)V

    move-object v5, v6

    .line 835
    :goto_12
    invoke-interface {v1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 839
    :cond_2e
    :goto_13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ibm/icu/util/TimeZoneRule;

    .line 840
    invoke-virtual {v2, v3}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    goto :goto_14

    .line 843
    :cond_2f
    iput-object v2, v0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    .line 844
    invoke-virtual {v0, v7}, Lcom/ibm/icu/util/VTimeZone;->setID(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_30
    :goto_15
    const/4 v1, 0x0

    return v1
.end method

.method private static parseDateTimeString(Ljava/lang/String;I)J
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1961
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    const/16 v4, 0xf

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v5, 0x8

    .line 1967
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x54

    if-eq v6, v7, :cond_2

    goto :goto_0

    :cond_2
    if-ne v2, v3, :cond_4

    .line 1972
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    :goto_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    .line 1980
    :try_start_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x6

    .line 1981
    :try_start_1
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v3, v0

    .line 1982
    :try_start_2
    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v7, 0x9

    const/16 v8, 0xb

    .line 1983
    :try_start_3
    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v9, 0xd

    .line 1984
    :try_start_4
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1985
    :try_start_5
    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1991
    invoke-static {v6, v3}, Lcom/ibm/icu/impl/Grego;->monthLength(II)I

    move-result v4

    if-ltz v6, :cond_6

    if-ltz v3, :cond_6

    if-gt v3, v8, :cond_6

    if-lt v5, v0, :cond_6

    if-gt v5, v4, :cond_6

    if-ltz v7, :cond_6

    const/16 v4, 0x18

    if-ge v7, v4, :cond_6

    if-ltz v10, :cond_6

    const/16 v4, 0x3c

    if-ge v10, v4, :cond_6

    if-ltz p0, :cond_6

    if-lt p0, v4, :cond_5

    goto :goto_2

    :cond_5
    move v1, v6

    goto :goto_5

    :cond_6
    :goto_2
    move v1, v6

    goto :goto_4

    :catch_0
    const/4 v3, 0x0

    :catch_1
    const/4 v5, 0x0

    goto :goto_3

    :catch_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :catch_3
    :goto_3
    const/4 v7, 0x0

    :catch_4
    const/4 v10, 0x0

    :catch_5
    move v1, v6

    const/4 p0, 0x0

    :goto_4
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_8

    .line 2004
    invoke-static {v1, v3, v5}, Lcom/ibm/icu/impl/Grego;->fieldsToDay(III)J

    move-result-wide v0

    const-wide/32 v3, 0x5265c00

    mul-long v0, v0, v3

    const v3, 0x36ee80

    mul-int v7, v7, v3

    const v3, 0xea60

    mul-int v10, v10, v3

    add-int/2addr v7, v10

    mul-int/lit16 p0, p0, 0x3e8

    add-int/2addr v7, p0

    int-to-long v3, v7

    add-long/2addr v0, v3

    if-nez v2, :cond_7

    int-to-long p0, p1

    sub-long/2addr v0, p0

    :cond_7
    return-wide v0

    .line 2001
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid date time string format"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseRRULE(Ljava/lang/String;[J)[I
    .locals 16

    .line 1075
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ";"

    move-object/from16 v2, p0

    invoke-direct {v0, v2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1077
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v12, :cond_f

    .line 1079
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    const-string v1, "="

    .line 1080
    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_e

    .line 1082
    invoke-virtual {v12, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 1083
    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v12, "FREQ"

    .line 1089
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v2, "YEARLY"

    .line 1091
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v10, 0x1

    goto/16 :goto_5

    :cond_0
    const-string v12, "UNTIL"

    .line 1097
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1100
    :try_start_0
    invoke-static {v1, v3}, Lcom/ibm/icu/util/VTimeZone;->parseDateTimeString(Ljava/lang/String;I)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-wide v4, v1

    goto/16 :goto_5

    :cond_1
    const-string v12, "BYMONTH"

    .line 1105
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1108
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v14, :cond_2

    goto/16 :goto_6

    .line 1113
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v6, v1, -0x1

    if-ltz v6, :cond_e

    const/16 v1, 0xc

    if-lt v6, v1, :cond_d

    goto/16 :goto_6

    :cond_3
    const-string v12, "BYDAY"

    .line 1122
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1128
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v14, :cond_e

    if-le v2, v13, :cond_4

    goto/16 :goto_6

    :cond_4
    if-le v2, v14, :cond_9

    .line 1136
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x2b

    if-ne v12, v14, :cond_6

    :cond_5
    const/4 v12, 0x1

    goto :goto_1

    .line 1138
    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v14, 0x2d

    if-ne v12, v14, :cond_7

    const/4 v12, -0x1

    goto :goto_1

    :cond_7
    if-ne v2, v13, :cond_5

    goto :goto_6

    :goto_1
    add-int/lit8 v14, v2, -0x3

    add-int/lit8 v2, v2, -0x2

    .line 1145
    :try_start_2
    invoke-virtual {v1, v14, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v14, :cond_e

    if-le v14, v13, :cond_8

    goto :goto_6

    :cond_8
    mul-int v14, v14, v12

    .line 1155
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move v8, v14

    :cond_9
    const/4 v2, 0x0

    .line 1158
    :goto_2
    sget-object v12, Lcom/ibm/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    array-length v14, v12

    if-ge v2, v14, :cond_b

    .line 1159
    aget-object v14, v12, v2

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1163
    :cond_b
    :goto_3
    array-length v1, v12

    if-ge v2, v1, :cond_e

    add-int/lit8 v7, v2, 0x1

    goto :goto_5

    :cond_c
    const-string v12, "BYMONTHDAY"

    .line 1170
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1175
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v9, ","

    invoke-direct {v2, v1, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 1177
    new-array v9, v1, [I

    const/4 v1, 0x0

    .line 1179
    :goto_4
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_d

    add-int/lit8 v12, v1, 0x1

    .line 1181
    :try_start_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aput v13, v9, v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move v1, v12

    goto :goto_4

    :catch_0
    const/4 v11, 0x1

    :cond_d
    :goto_5
    const/4 v2, -0x1

    goto/16 :goto_0

    :catch_1
    :cond_e
    :goto_6
    const/4 v11, 0x1

    :cond_f
    if-eqz v11, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    const/4 v0, 0x0

    if-nez v10, :cond_11

    return-object v0

    .line 1198
    :cond_11
    aput-wide v4, p1, v3

    const/4 v0, 0x3

    if-nez v9, :cond_12

    new-array v1, v13, [I

    aput v3, v1, v0

    goto :goto_8

    .line 1205
    :cond_12
    array-length v1, v9

    add-int/2addr v1, v0

    new-array v1, v1, [I

    const/4 v0, 0x0

    .line 1206
    :goto_7
    array-length v2, v9

    if-ge v0, v2, :cond_13

    add-int/lit8 v2, v0, 0x3

    .line 1207
    aget v4, v9, v0

    aput v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1210
    :cond_13
    :goto_8
    aput v6, v1, v3

    .line 1211
    aput v7, v1, v15

    const/4 v0, 0x2

    .line 1212
    aput v8, v1, v0

    return-object v1
.end method

.method private static toWallTimeRule(Lcom/ibm/icu/util/DateTimeRule;II)Lcom/ibm/icu/util/DateTimeRule;
    .locals 11

    .line 1730
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1733
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v0

    .line 1734
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    add-int/2addr p1, p2

    add-int/2addr v0, p1

    goto :goto_0

    .line 1736
    :cond_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getTimeRuleType()I

    move-result p1

    if-ne p1, v3, :cond_2

    add-int/2addr v0, p2

    :cond_2
    :goto_0
    const p1, 0x5265c00

    const/4 p2, 0x0

    if-gez v0, :cond_3

    add-int/2addr v0, p1

    const/4 p1, -0x1

    move v9, v0

    goto :goto_1

    :cond_3
    if-lt v0, p1, :cond_4

    sub-int/2addr v0, p1

    move v9, v0

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    move v9, v0

    const/4 p1, 0x0

    .line 1750
    :goto_1
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v0

    .line 1751
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v1

    .line 1752
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v4

    .line 1753
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v5

    const/4 v6, 0x7

    if-eqz p1, :cond_c

    if-ne v5, v3, :cond_6

    .line 1758
    invoke-virtual {p0}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result p0

    if-lez p0, :cond_5

    sub-int/2addr p0, v3

    mul-int/lit8 p0, p0, 0x7

    add-int/lit8 v1, p0, 0x1

    const/4 v5, 0x2

    goto :goto_2

    :cond_5
    const/4 v5, 0x3

    .line 1764
    sget-object v1, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, v0

    add-int/2addr p0, v3

    mul-int/lit8 p0, p0, 0x7

    add-int/2addr v1, p0

    :cond_6
    :goto_2
    add-int/2addr v1, p1

    const/16 p0, 0xb

    if-nez v1, :cond_8

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_7

    const/16 v0, 0xb

    .line 1773
    :cond_7
    sget-object p0, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, p0, v0

    goto :goto_3

    .line 1774
    :cond_8
    sget-object v7, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v7, v7, v0

    if-le v1, v7, :cond_a

    add-int/lit8 v0, v0, 0x1

    if-le v0, p0, :cond_9

    const/4 v0, 0x0

    :cond_9
    const/4 v1, 0x1

    :cond_a
    :goto_3
    if-eqz v5, :cond_c

    add-int/2addr v4, p1

    if-ge v4, v3, :cond_b

    move v6, v1

    const/4 v7, 0x7

    goto :goto_4

    :cond_b
    if-le v4, v6, :cond_c

    move v6, v1

    const/4 v7, 0x1

    goto :goto_4

    :cond_c
    move v6, v1

    move v7, v4

    :goto_4
    if-nez v5, :cond_d

    .line 1792
    new-instance p0, Lcom/ibm/icu/util/DateTimeRule;

    invoke-direct {p0, v0, v6, v9, p2}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIII)V

    goto :goto_6

    .line 1794
    :cond_d
    new-instance p0, Lcom/ibm/icu/util/DateTimeRule;

    if-ne v5, v2, :cond_e

    const/4 v8, 0x1

    goto :goto_5

    :cond_e
    const/4 v8, 0x0

    :goto_5
    const/4 v10, 0x0

    move-object v4, p0

    move v5, v0

    invoke-direct/range {v4 .. v10}, Lcom/ibm/icu/util/DateTimeRule;-><init>(IIIZII)V

    :goto_6
    return-object p0
.end method

.method private static writeFinalRule(Ljava/io/Writer;ZLcom/ibm/icu/util/AnnualTimeZoneRule;IIJ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p3

    move/from16 v1, p4

    .line 1692
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/ibm/icu/util/VTimeZone;->toWallTimeRule(Lcom/ibm/icu/util/DateTimeRule;II)Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v2

    .line 1698
    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMillisInDay()I

    move-result v3

    if-gez v3, :cond_0

    rsub-int/lit8 v3, v3, 0x0

    int-to-long v3, v3

    add-long v3, p5, v3

    goto :goto_0

    :cond_0
    const v4, 0x5265c00

    if-lt v3, v4, :cond_1

    const v4, 0x5265bff

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long v3, p5, v3

    goto :goto_0

    :cond_1
    move-wide/from16 v3, p5

    .line 1705
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v6

    add-int v9, v5, v6

    .line 1706
    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getDateRuleType()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    goto/16 :goto_1

    .line 1720
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v7

    add-int v8, v0, v1

    .line 1721
    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v10

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v11

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v12

    const-wide v15, 0x7fffffffffffffffL

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-wide v13, v3

    .line 1720
    invoke-static/range {v5 .. v16}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1

    .line 1716
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v7

    add-int v8, v0, v1

    .line 1717
    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v10

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v11

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v12

    const-wide v15, 0x7fffffffffffffffL

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-wide v13, v3

    .line 1716
    invoke-static/range {v5 .. v16}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1

    .line 1712
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v7

    add-int v8, v0, v1

    .line 1713
    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v10

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleWeekInMonth()I

    move-result v11

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfWeek()I

    move-result v12

    const-wide v15, 0x7fffffffffffffffL

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-wide v13, v3

    .line 1712
    invoke-static/range {v5 .. v16}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_1

    .line 1708
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v7

    add-int v8, v0, v1

    .line 1709
    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleMonth()I

    move-result v10

    invoke-virtual {v2}, Lcom/ibm/icu/util/DateTimeRule;->getRuleDayOfMonth()I

    move-result v11

    const-wide v14, 0x7fffffffffffffffL

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-wide v12, v3

    .line 1708
    invoke-static/range {v5 .. v15}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V

    :goto_1
    return-void
.end method

.method private static writeFooter(Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "END"

    .line 1911
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1912
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "VTIMEZONE"

    .line 1913
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\r\n"

    .line 1914
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeHeader(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BEGIN"

    .line 1885
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, ":"

    .line 1886
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "VTIMEZONE"

    .line 1887
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\r\n"

    .line 1888
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "TZID"

    .line 1889
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1891
    iget-object v2, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v2}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1892
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1893
    iget-object v2, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "TZURL"

    .line 1894
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1896
    iget-object v2, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1899
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    if-eqz v2, :cond_1

    const-string v2, "LAST-MODIFIED"

    .line 1900
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1902
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ibm/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1903
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private writeZone(Ljava/io/Writer;Lcom/ibm/icu/util/BasicTimeZone;[Ljava/lang/String;)V
    .locals 66
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v0, p3

    .line 1247
    invoke-direct/range {p0 .. p1}, Lcom/ibm/icu/util/VTimeZone;->writeHeader(Ljava/io/Writer;)V

    const/4 v14, 0x0

    if-eqz v0, :cond_1

    .line 1249
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 1250
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 1251
    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    .line 1252
    aget-object v2, v0, v1

    invoke-virtual {v12, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v2, "\r\n"

    .line 1253
    invoke-virtual {v12, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x6

    new-array v15, v2, [I

    const/4 v2, 0x0

    move-object v7, v2

    move-object v9, v7

    move-object/from16 v16, v9

    move-object/from16 v17, v16

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    .line 1292
    :goto_1
    invoke-virtual {v13, v0, v1, v14}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object v0

    if-nez v0, :cond_2

    move v8, v2

    move/from16 v53, v4

    move/from16 v54, v5

    move/from16 v55, v6

    move-object v2, v7

    move-object/from16 v57, v9

    move/from16 v10, v18

    move/from16 v0, v20

    move/from16 v5, v23

    move/from16 v7, v24

    move/from16 v6, v25

    move-wide/from16 v60, v28

    move/from16 v13, v33

    move/from16 v15, v34

    move/from16 v14, v35

    const/4 v12, 0x1

    const/16 v43, 0x0

    move v4, v3

    goto/16 :goto_10

    .line 1297
    :cond_2
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v40

    .line 1298
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1299
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 1300
    :goto_2
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v42

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v43

    add-int v8, v42, v43

    .line 1301
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getFrom()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v42

    .line 1302
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/ibm/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v43

    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Lcom/ibm/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v44

    add-int v14, v43, v44

    .line 1303
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v43

    int-to-long v10, v8

    add-long v10, v43, v10

    invoke-static {v10, v11, v15}, Lcom/ibm/icu/impl/Grego;->timeToFields(J[I)[I

    const/16 v43, 0x0

    aget v10, v15, v43

    move/from16 v44, v4

    const/4 v11, 0x1

    aget v4, v15, v11

    const/4 v11, 0x2

    aget v11, v15, v11

    .line 1304
    invoke-static {v10, v4, v11}, Lcom/ibm/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v10

    aget v11, v15, v43

    const v4, 0x7fffffff

    const/16 v45, 0x5

    const/16 v48, 0x3

    if-eqz v1, :cond_f

    if-nez v17, :cond_4

    .line 1308
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    instance-of v1, v1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_4

    .line 1309
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 1310
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    :cond_4
    if-lez v20, :cond_c

    add-int v0, v21, v20

    if-ne v11, v0, :cond_7

    .line 1315
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-ne v6, v8, :cond_7

    if-ne v3, v14, :cond_7

    const/4 v0, 0x1

    aget v1, v15, v0

    move/from16 v4, v23

    if-ne v4, v1, :cond_8

    aget v0, v15, v48

    move/from16 v1, v24

    if-ne v1, v0, :cond_6

    move/from16 v0, v25

    move/from16 v23, v0

    if-ne v0, v10, :cond_5

    aget v0, v15, v45

    move/from16 v24, v1

    move/from16 v1, v39

    if-ne v1, v0, :cond_9

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-wide/from16 v28, v40

    const/16 v20, 0x1

    goto :goto_5

    :cond_5
    move/from16 v24, v1

    goto :goto_4

    :cond_6
    move/from16 v24, v1

    goto :goto_3

    :cond_7
    move/from16 v4, v23

    :cond_8
    :goto_3
    move/from16 v23, v25

    :goto_4
    move/from16 v1, v39

    :cond_9
    move/from16 v0, v20

    const/16 v20, 0x0

    :goto_5
    move/from16 v25, v1

    if-nez v20, :cond_b

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    const/16 v39, 0x1

    const/16 v49, 0x1

    move/from16 v50, v23

    move/from16 v23, v0

    move-object/from16 v0, p1

    const/16 v51, 0x1

    move/from16 v1, v39

    move-object/from16 v52, v2

    move-object v2, v7

    move/from16 v39, v3

    move v3, v6

    move/from16 v53, v44

    move/from16 v44, v4

    move/from16 v4, v39

    move/from16 v54, v5

    move/from16 v55, v6

    move-wide/from16 v5, v26

    move-object/from16 v56, v7

    move/from16 v7, v49

    .line 1329
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    move/from16 v58, v8

    move-object/from16 v57, v9

    move v12, v10

    move v13, v11

    goto :goto_6

    :cond_a
    move-object/from16 v52, v2

    move/from16 v39, v3

    move/from16 v54, v5

    move/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v50, v23

    move/from16 v53, v44

    const/16 v51, 0x1

    move/from16 v23, v0

    move/from16 v44, v4

    const/4 v1, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v56

    move/from16 v3, v55

    move/from16 v4, v39

    move/from16 v5, v44

    move/from16 v6, v50

    move/from16 v7, v24

    move/from16 v58, v8

    move-object/from16 v57, v9

    move-wide/from16 v8, v26

    move v12, v10

    move v13, v11

    move-wide/from16 v10, v28

    .line 1332
    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_6

    :cond_b
    move-object/from16 v52, v2

    move/from16 v39, v3

    move/from16 v54, v5

    move/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v58, v8

    move-object/from16 v57, v9

    move v12, v10

    move v13, v11

    move/from16 v50, v23

    move/from16 v53, v44

    move/from16 v23, v0

    move/from16 v44, v4

    :goto_6
    move/from16 v8, v23

    goto :goto_7

    :cond_c
    move-object/from16 v52, v2

    move/from16 v54, v5

    move/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v58, v8

    move-object/from16 v57, v9

    move v12, v10

    move v13, v11

    move/from16 v50, v25

    move/from16 v25, v39

    move/from16 v53, v44

    move/from16 v39, v3

    move/from16 v44, v23

    move/from16 v8, v20

    const/16 v20, 0x0

    :goto_7
    const/4 v10, 0x1

    if-nez v20, :cond_d

    aget v0, v15, v10

    aget v1, v15, v48

    aget v2, v15, v45

    move/from16 v23, v0

    move/from16 v24, v1

    move/from16 v39, v2

    move/from16 v25, v12

    move/from16 v21, v13

    move v3, v14

    move-wide/from16 v26, v40

    move-wide/from16 v28, v26

    move/from16 v22, v42

    move-object/from16 v7, v52

    move/from16 v6, v58

    const/4 v8, 0x1

    goto :goto_8

    :cond_d
    move/from16 v3, v39

    move/from16 v23, v44

    move/from16 v6, v55

    move-object/from16 v7, v56

    move/from16 v39, v25

    move/from16 v25, v50

    :goto_8
    if-eqz v16, :cond_e

    if-eqz v17, :cond_e

    move v4, v3

    move/from16 v55, v6

    move-object v2, v7

    move v0, v8

    move/from16 v10, v18

    move/from16 v5, v23

    move/from16 v7, v24

    move/from16 v6, v25

    move-wide/from16 v60, v28

    move/from16 v13, v33

    move/from16 v15, v34

    move/from16 v14, v35

    const/4 v8, 0x1

    const/4 v12, 0x1

    goto/16 :goto_10

    :cond_e
    move-object/from16 v1, p2

    move/from16 v20, v8

    move/from16 v0, v39

    move/from16 v4, v53

    move/from16 v5, v54

    move-object/from16 v9, v57

    const/4 v12, 0x1

    move/from16 v39, v3

    const-wide/16 v2, 0x0

    goto/16 :goto_16

    :cond_f
    move-object/from16 v52, v2

    move/from16 v54, v5

    move/from16 v55, v6

    move-object/from16 v56, v7

    move/from16 v58, v8

    move-object/from16 v57, v9

    move v12, v10

    move v13, v11

    move/from16 v50, v25

    move/from16 v25, v39

    move/from16 v53, v44

    const/4 v10, 0x1

    move/from16 v39, v3

    move/from16 v44, v23

    if-nez v16, :cond_10

    .line 1355
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    instance-of v1, v1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    if-eqz v1, :cond_10

    .line 1356
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v1}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v1

    if-ne v1, v4, :cond_10

    .line 1357
    invoke-virtual {v0}, Lcom/ibm/icu/util/TimeZoneTransition;->getTo()Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/ibm/icu/util/AnnualTimeZoneRule;

    :cond_10
    if-lez v18, :cond_1a

    add-int v0, v19, v18

    if-ne v13, v0, :cond_16

    move-object/from16 v11, v52

    move-object/from16 v8, v57

    .line 1362
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move/from16 v7, v54

    move/from16 v9, v58

    if-ne v7, v9, :cond_14

    move/from16 v5, v53

    if-ne v5, v14, :cond_11

    aget v0, v15, v10

    move/from16 v6, v33

    if-ne v6, v0, :cond_12

    aget v0, v15, v48

    move/from16 v4, v34

    move/from16 v3, v35

    if-ne v4, v0, :cond_13

    if-ne v3, v12, :cond_13

    aget v0, v15, v45

    move/from16 v2, v38

    if-ne v2, v0, :cond_17

    add-int/lit8 v18, v18, 0x1

    move/from16 v1, v18

    move-wide/from16 v30, v40

    const/16 v18, 0x1

    goto :goto_b

    :cond_11
    move/from16 v6, v33

    :cond_12
    move/from16 v4, v34

    move/from16 v3, v35

    :cond_13
    move/from16 v2, v38

    goto :goto_a

    :cond_14
    move/from16 v6, v33

    move/from16 v4, v34

    move/from16 v3, v35

    move/from16 v2, v38

    move/from16 v5, v53

    goto :goto_a

    :cond_15
    move/from16 v6, v33

    move/from16 v4, v34

    move/from16 v3, v35

    move/from16 v2, v38

    move/from16 v5, v53

    move/from16 v7, v54

    goto :goto_9

    :cond_16
    move/from16 v6, v33

    move/from16 v4, v34

    move/from16 v3, v35

    move/from16 v2, v38

    move-object/from16 v11, v52

    move/from16 v5, v53

    move/from16 v7, v54

    move-object/from16 v8, v57

    :goto_9
    move/from16 v9, v58

    :cond_17
    :goto_a
    move/from16 v1, v18

    const/16 v18, 0x0

    :goto_b
    if-nez v18, :cond_19

    if-ne v1, v10, :cond_18

    const/16 v23, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v34, v1

    move/from16 v1, v23

    move/from16 v23, v2

    move-object v2, v8

    move/from16 v35, v3

    move v3, v7

    move/from16 v38, v4

    move v4, v5

    move/from16 v46, v5

    move/from16 v47, v6

    move-wide/from16 v5, v36

    move/from16 v49, v7

    move/from16 v7, v33

    .line 1376
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    goto :goto_c

    :cond_18
    move/from16 v34, v1

    move/from16 v23, v2

    move/from16 v35, v3

    move/from16 v38, v4

    move/from16 v46, v5

    move/from16 v47, v6

    move/from16 v49, v7

    const/4 v1, 0x0

    move-object/from16 v0, p1

    move-object v2, v8

    move/from16 v3, v49

    move/from16 v4, v46

    move/from16 v5, v47

    move/from16 v6, v35

    move/from16 v7, v38

    move-object/from16 v51, v8

    move/from16 v33, v9

    move-wide/from16 v8, v36

    move-object/from16 v52, v11

    move/from16 v53, v12

    const/4 v12, 0x1

    move-wide/from16 v10, v30

    .line 1379
    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_d

    :cond_19
    move/from16 v34, v1

    move/from16 v23, v2

    move/from16 v35, v3

    move/from16 v38, v4

    move/from16 v46, v5

    move/from16 v47, v6

    move/from16 v49, v7

    :goto_c
    move-object/from16 v51, v8

    move/from16 v33, v9

    move-object/from16 v52, v11

    move/from16 v53, v12

    const/4 v12, 0x1

    :goto_d
    move/from16 v8, v34

    goto :goto_e

    :cond_1a
    move/from16 v47, v33

    move/from16 v23, v38

    move/from16 v46, v53

    move/from16 v49, v54

    move-object/from16 v51, v57

    move/from16 v33, v58

    move/from16 v53, v12

    move/from16 v38, v34

    const/4 v12, 0x1

    move/from16 v8, v18

    const/16 v18, 0x0

    :goto_e
    if-nez v18, :cond_1b

    aget v0, v15, v12

    aget v34, v15, v48

    aget v38, v15, v45

    move/from16 v19, v13

    move v4, v14

    move/from16 v5, v33

    move-wide/from16 v30, v40

    move-wide/from16 v36, v30

    move/from16 v32, v42

    move-object/from16 v9, v52

    move/from16 v35, v53

    const/4 v8, 0x1

    move/from16 v33, v0

    goto :goto_f

    :cond_1b
    move/from16 v34, v38

    move/from16 v4, v46

    move/from16 v33, v47

    move/from16 v5, v49

    move-object/from16 v9, v51

    move/from16 v38, v23

    :goto_f
    if-eqz v16, :cond_29

    if-eqz v17, :cond_29

    move/from16 v53, v4

    move/from16 v54, v5

    move v10, v8

    move-object/from16 v57, v9

    move/from16 v0, v20

    move/from16 v7, v24

    move-wide/from16 v60, v28

    move/from16 v13, v33

    move/from16 v15, v34

    move/from16 v14, v35

    move/from16 v4, v39

    move/from16 v5, v44

    move/from16 v6, v50

    move-object/from16 v2, v56

    const/4 v8, 0x1

    :goto_10
    if-nez v8, :cond_1d

    move-object/from16 v1, p2

    const-wide/16 v8, 0x0

    .line 1405
    invoke-virtual {v1, v8, v9}, Lcom/ibm/icu/util/BasicTimeZone;->getOffset(J)I

    move-result v4

    .line 1406
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/BasicTimeZone;->getRawOffset()I

    move-result v0

    if-eq v4, v0, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v12, 0x0

    .line 1407
    :goto_11
    invoke-virtual/range {p2 .. p2}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12}, Lcom/ibm/icu/util/VTimeZone;->getDefaultTZName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    int-to-long v0, v4

    sub-long v5, v8, v0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v12

    move v3, v4

    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    goto/16 :goto_15

    :cond_1d
    if-lez v0, :cond_23

    if-nez v17, :cond_1f

    if-ne v0, v12, :cond_1e

    const/4 v1, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move/from16 v3, v55

    move-wide/from16 v5, v26

    .line 1413
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    goto/16 :goto_13

    :cond_1e
    const/4 v1, 0x1

    move-object/from16 v0, p1

    move/from16 v3, v55

    move-wide/from16 v8, v26

    move/from16 v65, v10

    move-wide/from16 v10, v60

    .line 1416
    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_12

    :cond_1f
    move/from16 v65, v10

    if-ne v0, v12, :cond_21

    const/4 v1, 0x1

    sub-int v3, v55, v22

    move-object/from16 v0, p1

    move-object/from16 v2, v17

    move/from16 v4, v22

    move-wide/from16 v5, v26

    .line 1421
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLcom/ibm/icu/util/AnnualTimeZoneRule;IIJ)V

    :cond_20
    :goto_12
    move/from16 v8, v65

    goto :goto_14

    .line 1425
    :cond_21
    invoke-virtual/range {v17 .. v17}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v0

    invoke-static {v5, v6, v7, v0}, Lcom/ibm/icu/util/VTimeZone;->isEquivalentDateRule(IIILcom/ibm/icu/util/DateTimeRule;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v1, 0x1

    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v0, p1

    move/from16 v3, v55

    move-wide/from16 v8, v26

    .line 1426
    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_12

    :cond_22
    const/4 v1, 0x1

    move-object/from16 v0, p1

    move/from16 v3, v55

    move-wide/from16 v8, v26

    move-wide/from16 v10, v60

    .line 1430
    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    sub-int v3, v55, v22

    const/16 v64, 0x0

    move-object/from16 v59, v17

    move/from16 v62, v3

    move/from16 v63, v22

    .line 1433
    invoke-virtual/range {v59 .. v64}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v1, 0x1

    .line 1439
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v0, p1

    move-object/from16 v2, v17

    move/from16 v4, v22

    .line 1438
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLcom/ibm/icu/util/AnnualTimeZoneRule;IIJ)V

    goto :goto_12

    :cond_23
    :goto_13
    move v8, v10

    :goto_14
    if-lez v8, :cond_28

    if-nez v16, :cond_25

    if-ne v8, v12, :cond_24

    const/4 v1, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v57

    move/from16 v3, v54

    move/from16 v4, v53

    move-wide/from16 v5, v36

    .line 1448
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V

    goto/16 :goto_15

    :cond_24
    const/4 v1, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, v57

    move/from16 v3, v54

    move/from16 v4, v53

    move v5, v13

    move v6, v14

    move v7, v15

    move-wide/from16 v8, v36

    move-wide/from16 v10, v30

    .line 1451
    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_15

    :cond_25
    if-ne v8, v12, :cond_26

    const/4 v1, 0x0

    sub-int v3, v54, v32

    move-object/from16 v0, p1

    move-object/from16 v2, v16

    move/from16 v4, v32

    move-wide/from16 v5, v36

    .line 1456
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLcom/ibm/icu/util/AnnualTimeZoneRule;IIJ)V

    goto :goto_15

    .line 1460
    :cond_26
    invoke-virtual/range {v16 .. v16}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getRule()Lcom/ibm/icu/util/DateTimeRule;

    move-result-object v0

    invoke-static {v13, v14, v15, v0}, Lcom/ibm/icu/util/VTimeZone;->isEquivalentDateRule(IIILcom/ibm/icu/util/DateTimeRule;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v1, 0x0

    const-wide v10, 0x7fffffffffffffffL

    move-object/from16 v0, p1

    move-object/from16 v2, v57

    move/from16 v3, v54

    move/from16 v4, v53

    move v5, v13

    move v6, v14

    move v7, v15

    move-wide/from16 v8, v36

    .line 1461
    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_15

    :cond_27
    const/4 v1, 0x0

    move-object/from16 v0, p1

    move-object/from16 v2, v57

    move/from16 v3, v54

    move/from16 v4, v53

    move v5, v13

    move v6, v14

    move v7, v15

    move-wide/from16 v8, v36

    move-wide/from16 v10, v30

    .line 1465
    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    sub-int v9, v54, v32

    const/4 v8, 0x0

    move-object/from16 v3, v16

    move-wide/from16 v4, v30

    move v6, v9

    move/from16 v7, v32

    .line 1468
    invoke-virtual/range {v3 .. v8}, Lcom/ibm/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_28

    const/4 v1, 0x0

    .line 1474
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    move-object/from16 v0, p1

    move-object/from16 v2, v16

    move v3, v9

    move/from16 v4, v32

    .line 1473
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/util/VTimeZone;->writeFinalRule(Ljava/io/Writer;ZLcom/ibm/icu/util/AnnualTimeZoneRule;IIJ)V

    .line 1482
    :cond_28
    :goto_15
    invoke-static/range {p1 .. p1}, Lcom/ibm/icu/util/VTimeZone;->writeFooter(Ljava/io/Writer;)V

    return-void

    :cond_29
    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    move/from16 v18, v8

    move/from16 v0, v25

    move/from16 v23, v44

    move/from16 v25, v50

    move/from16 v6, v55

    move-object/from16 v7, v56

    :goto_16
    move-object/from16 v12, p1

    move-object v13, v1

    move/from16 v3, v39

    const/4 v2, 0x1

    const/4 v14, 0x0

    move/from16 v39, v0

    move-wide/from16 v0, v40

    goto/16 :goto_1
.end method

.method private static writeZonePropsByDOM(Ljava/io/Writer;ZLjava/lang/String;IIIIJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p7

    .line 1543
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    move v0, p5

    .line 1545
    invoke-static {p0, p5}, Lcom/ibm/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string v0, "BYMONTHDAY"

    .line 1546
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    .line 1547
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1548
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p9, v0

    if-eqz v2, :cond_0

    move v0, p3

    int-to-long v0, v0

    add-long v0, p9, v0

    .line 1551
    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_0
    const-string v0, "\r\n"

    .line 1553
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1555
    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method

.method private static writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-wide/from16 v5, p8

    .line 1563
    invoke-static/range {v0 .. v6}, Lcom/ibm/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    move v0, p5

    .line 1565
    invoke-static {p0, p5}, Lcom/ibm/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string v0, "BYDAY"

    .line 1566
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "="

    .line 1567
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1568
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1569
    sget-object v0, Lcom/ibm/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p7, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p10, v0

    if-eqz v2, :cond_0

    move v0, p3

    int-to-long v0, v0

    add-long v0, p10, v0

    .line 1572
    invoke-static {v0, v1}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ibm/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_0
    const-string v0, "\r\n"

    .line 1574
    invoke-virtual {p0, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1576
    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method

.method private static writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v5, p5

    .line 1585
    rem-int/lit8 v0, p6, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    add-int/lit8 v0, p6, 0x6

    .line 1587
    div-int/lit8 v6, v0, 0x7

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_3

    :cond_0
    if-eq v5, v3, :cond_1

    .line 1589
    sget-object v0, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v4, v0, v5

    sub-int v4, v4, p6

    rem-int/2addr v4, v2

    if-ne v4, v1, :cond_1

    .line 1591
    aget v0, v0, v5

    sub-int v0, v0, p6

    add-int/2addr v0, v3

    div-int/2addr v0, v2

    mul-int/lit8 v6, v0, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_3

    :cond_1
    move-object v6, p0

    move v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move-wide/from16 v11, p8

    .line 1595
    invoke-static/range {v6 .. v12}, Lcom/ibm/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    const/16 v0, 0xb

    if-gtz p6, :cond_3

    rsub-int/lit8 v10, p6, 0x1

    rsub-int/lit8 v1, v10, 0x7

    add-int/lit8 v2, v5, -0x1

    if-gez v2, :cond_2

    const/16 v7, 0xb

    goto :goto_0

    :cond_2
    move v7, v2

    :goto_0
    neg-int v8, v10

    const-wide v11, 0x7fffffffffffffffL

    move-object v6, p0

    move/from16 v9, p7

    move/from16 v13, p3

    .line 1611
    invoke-static/range {v6 .. v13}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    move v4, v1

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, p6, 0x6

    .line 1615
    sget-object v3, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v4, v3, v5

    if-le v1, v4, :cond_5

    .line 1618
    aget v2, v3, v5

    sub-int v10, v1, v2

    rsub-int/lit8 v1, v10, 0x7

    add-int/lit8 v2, v5, 0x1

    if-le v2, v0, :cond_4

    const/4 v0, 0x0

    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    move v7, v2

    :goto_1
    const/4 v8, 0x1

    const-wide v11, 0x7fffffffffffffffL

    move-object v6, p0

    move/from16 v9, p7

    move/from16 v13, p3

    .line 1623
    invoke-static/range {v6 .. v13}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    move/from16 v2, p6

    move v4, v1

    goto :goto_2

    :cond_5
    move/from16 v2, p6

    const/4 v4, 0x7

    :goto_2
    move-object v0, p0

    move/from16 v1, p5

    move/from16 v3, p7

    move-wide/from16 v5, p10

    move/from16 v7, p3

    .line 1625
    invoke-static/range {v0 .. v7}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V

    .line 1626
    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    :goto_3
    return-void
.end method

.method private static writeZonePropsByDOW_GEQ_DOM_sub(Ljava/io/Writer;IIIIJI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-gez p2, :cond_1

    if-nez v1, :cond_1

    .line 1640
    sget-object v1, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    add-int/lit8 p2, v1, 0x1

    .line 1642
    :cond_1
    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->beginRRULE(Ljava/io/Writer;I)V

    const-string p1, "BYDAY"

    .line 1643
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, "="

    .line 1644
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1645
    sget-object v1, Lcom/ibm/icu/util/VTimeZone;->ICAL_DOW_NAMES:[Ljava/lang/String;

    sub-int/2addr p3, v0

    aget-object p3, v1, p3

    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p3, ";"

    .line 1646
    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p3, "BYMONTHDAY"

    .line 1647
    invoke-virtual {p0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1650
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_1
    if-ge v0, p4, :cond_2

    const-string p1, ","

    .line 1652
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int p1, p2, v0

    .line 1653
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-wide p1, 0x7fffffffffffffffL

    cmp-long p3, p5, p1

    if-eqz p3, :cond_3

    int-to-long p1, p7

    add-long/2addr p5, p1

    .line 1657
    invoke-static {p5, p6}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->appendUNTIL(Ljava/io/Writer;Ljava/lang/String;)V

    :cond_3
    const-string p1, "\r\n"

    .line 1659
    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method private static writeZonePropsByDOW_LEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v5, p5

    move/from16 v0, p6

    .line 1668
    rem-int/lit8 v1, v0, 0x7

    if-nez v1, :cond_0

    .line 1670
    div-int/lit8 v6, v0, 0x7

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-eq v5, v1, :cond_1

    .line 1672
    sget-object v2, Lcom/ibm/icu/util/VTimeZone;->MONTHLENGTH:[I

    aget v3, v2, v5

    sub-int/2addr v3, v0

    rem-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_1

    .line 1674
    aget v2, v2, v5

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v1

    mul-int/lit8 v6, v2, -0x1

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_0

    :cond_1
    if-ne v5, v1, :cond_2

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_2

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v2, p0

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    .line 1678
    invoke-static/range {v2 .. v13}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v0, -0x6

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    .line 1682
    invoke-static/range {v0 .. v11}, Lcom/ibm/icu/util/VTimeZone;->writeZonePropsByDOW_GEQ_DOM(Ljava/io/Writer;ZLjava/lang/String;IIIIIJJ)V

    :goto_0
    return-void
.end method

.method private static writeZonePropsByTime(Ljava/io/Writer;ZLjava/lang/String;IIJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1528
    invoke-static/range {p0 .. p6}, Lcom/ibm/icu/util/VTimeZone;->beginZoneProps(Ljava/io/Writer;ZLjava/lang/String;IIJ)V

    if-eqz p7, :cond_0

    const-string p2, "RDATE"

    .line 1530
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, ":"

    .line 1531
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    int-to-long p2, p3

    add-long/2addr p5, p2

    .line 1532
    invoke-static {p5, p6}, Lcom/ibm/icu/util/VTimeZone;->getDateTimeString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "\r\n"

    .line 1533
    invoke-virtual {p0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1535
    :cond_0
    invoke-static {p0, p1}, Lcom/ibm/icu/util/VTimeZone;->endZoneProps(Ljava/io/Writer;Z)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/ibm/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 390
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/util/VTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Lcom/ibm/icu/util/TimeZone;
    .locals 2

    .line 2129
    invoke-super {p0}, Lcom/ibm/icu/util/BasicTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/util/VTimeZone;

    .line 2130
    iget-object v1, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v1}, Lcom/ibm/icu/util/BasicTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v1

    check-cast v1, Lcom/ibm/icu/util/BasicTimeZone;

    iput-object v1, v0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    const/4 v1, 0x0

    .line 2131
    iput-boolean v1, v0, Lcom/ibm/icu/util/VTimeZone;->isFrozen:Z

    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/ibm/icu/util/VTimeZone;->cloneAsThawed()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public freeze()Lcom/ibm/icu/util/TimeZone;
    .locals 1

    const/4 v0, 0x1

    .line 2119
    iput-boolean v0, p0, Lcom/ibm/icu/util/VTimeZone;->isFrozen:Z

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/ibm/icu/util/VTimeZone;->freeze()Lcom/ibm/icu/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    return-object v0
.end method

.method public getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/util/BasicTimeZone;->getNextTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object p1

    return-object p1
.end method

.method public getOffset(IIIIII)I
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ibm/icu/util/BasicTimeZone;->getOffset(IIIIII)I

    move-result p1

    return p1
.end method

.method public getOffset(JZ[I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ibm/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    return-void
.end method

.method public getOffsetFromLocal(JLcom/ibm/icu/util/BasicTimeZone$LocalOption;Lcom/ibm/icu/util/BasicTimeZone$LocalOption;[I)V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/BasicTimeZone;->getOffsetFromLocal(JLcom/ibm/icu/util/BasicTimeZone$LocalOption;Lcom/ibm/icu/util/BasicTimeZone$LocalOption;[I)V

    return-void
.end method

.method public getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ibm/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Lcom/ibm/icu/util/TimeZoneTransition;

    move-result-object p1

    return-object p1
.end method

.method public getRawOffset()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/BasicTimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public getTZURL()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/BasicTimeZone;->getTimeZoneRules()[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZoneRules(J)[Lcom/ibm/icu/util/TimeZoneRule;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1, p2}, Lcom/ibm/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object p1

    return-object p1
.end method

.method public hasEquivalentTransitions(Lcom/ibm/icu/util/TimeZone;JJ)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ibm/icu/util/BasicTimeZone;->hasEquivalentTransitions(Lcom/ibm/icu/util/TimeZone;JJ)Z

    move-result p1

    return p1
.end method

.method public hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 166
    :cond_0
    instance-of v0, p1, Lcom/ibm/icu/util/VTimeZone;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    check-cast p1, Lcom/ibm/icu/util/VTimeZone;

    iget-object p1, p1, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z

    move-result p1

    return p1

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->hasSameRules(Lcom/ibm/icu/util/TimeZone;)Z

    move-result p1

    return p1
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public isFrozen()Z
    .locals 1

    .line 2110
    iget-boolean v0, p0, Lcom/ibm/icu/util/VTimeZone;->isFrozen:Z

    return v0
.end method

.method public observesDaylightTime()Z
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/BasicTimeZone;->observesDaylightTime()Z

    move-result v0

    return v0
.end method

.method public setLastModified(Ljava/util/Date;)V
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/ibm/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iput-object p1, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    return-void

    .line 221
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRawOffset(I)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/ibm/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p1}, Lcom/ibm/icu/util/BasicTimeZone;->setRawOffset(I)V

    return-void

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTZURL(Ljava/lang/String;)V
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/ibm/icu/util/VTimeZone;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iput-object p1, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    return-void

    .line 194
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Attempt to modify a frozen VTimeZone instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public useDaylightTime()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0}, Lcom/ibm/icu/util/BasicTimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 236
    iget-object v1, p0, Lcom/ibm/icu/util/VTimeZone;->vtzlines:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 237
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "TZURL:"

    .line 238
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ":"

    const-string v4, "\r\n"

    if-eqz v2, :cond_1

    .line 239
    iget-object v1, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "TZURL"

    .line 240
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/ibm/icu/util/VTimeZone;->tzurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "LAST-MODIFIED:"

    .line 245
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    iget-object v1, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    if-eqz v1, :cond_0

    const-string v1, "LAST-MODIFIED"

    .line 247
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/ibm/icu/util/VTimeZone;->lastmod:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/ibm/icu/util/VTimeZone;->getUTCDateTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "X-TZINFO:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 264
    :cond_5
    iget-object v1, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-direct {p0, p1, v1, v0}, Lcom/ibm/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Lcom/ibm/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public write(Ljava/io/Writer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p2, p3}, Lcom/ibm/icu/util/BasicTimeZone;->getTimeZoneRules(J)[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    .line 284
    new-instance v1, Lcom/ibm/icu/util/RuleBasedTimeZone;

    iget-object v2, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v2}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-direct {v1, v2, v4}, Lcom/ibm/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V

    const/4 v2, 0x1

    const/4 v4, 0x1

    .line 285
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 286
    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 289
    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-TZINFO:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Partial@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    .line 294
    :cond_1
    invoke-direct {p0, p1, v1, v0}, Lcom/ibm/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Lcom/ibm/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    return-void
.end method

.method public writeSimple(Ljava/io/Writer;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v0, p2, p3}, Lcom/ibm/icu/util/BasicTimeZone;->getSimpleTimeZoneRulesNear(J)[Lcom/ibm/icu/util/TimeZoneRule;

    move-result-object v0

    .line 318
    new-instance v1, Lcom/ibm/icu/util/RuleBasedTimeZone;

    iget-object v2, p0, Lcom/ibm/icu/util/VTimeZone;->tz:Lcom/ibm/icu/util/BasicTimeZone;

    invoke-virtual {v2}, Lcom/ibm/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v0, v3

    check-cast v4, Lcom/ibm/icu/util/InitialTimeZoneRule;

    invoke-direct {v1, v2, v4}, Lcom/ibm/icu/util/RuleBasedTimeZone;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/InitialTimeZoneRule;)V

    const/4 v2, 0x1

    const/4 v4, 0x1

    .line 319
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 320
    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Lcom/ibm/icu/util/RuleBasedTimeZone;->addTransitionRule(Lcom/ibm/icu/util/TimeZoneRule;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 323
    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    if-eqz v4, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "X-TZINFO:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ibm/icu/util/VTimeZone;->olsonzid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ibm/icu/util/VTimeZone;->ICU_TZVERSION:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Simple@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    .line 328
    :cond_1
    invoke-direct {p0, p1, v1, v0}, Lcom/ibm/icu/util/VTimeZone;->writeZone(Ljava/io/Writer;Lcom/ibm/icu/util/BasicTimeZone;[Ljava/lang/String;)V

    return-void
.end method
