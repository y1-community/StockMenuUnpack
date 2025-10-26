.class public Lcom/ibm/icu/util/HebrewHoliday;
.super Lcom/ibm/icu/util/Holiday;
.source "HebrewHoliday.java"


# static fields
.field public static ESTHER:Lcom/ibm/icu/util/HebrewHoliday;

.field public static GEDALIAH:Lcom/ibm/icu/util/HebrewHoliday;

.field public static HANUKKAH:Lcom/ibm/icu/util/HebrewHoliday;

.field public static HOSHANAH_RABBAH:Lcom/ibm/icu/util/HebrewHoliday;

.field public static LAG_BOMER:Lcom/ibm/icu/util/HebrewHoliday;

.field public static PASSOVER:Lcom/ibm/icu/util/HebrewHoliday;

.field public static PESACH_SHEINI:Lcom/ibm/icu/util/HebrewHoliday;

.field public static PURIM:Lcom/ibm/icu/util/HebrewHoliday;

.field public static ROSH_HASHANAH:Lcom/ibm/icu/util/HebrewHoliday;

.field public static SELIHOT:Lcom/ibm/icu/util/HebrewHoliday;

.field public static SHAVUOT:Lcom/ibm/icu/util/HebrewHoliday;

.field public static SHEMINI_ATZERET:Lcom/ibm/icu/util/HebrewHoliday;

.field public static SHUSHAN_PURIM:Lcom/ibm/icu/util/HebrewHoliday;

.field public static SIMCHAT_TORAH:Lcom/ibm/icu/util/HebrewHoliday;

.field public static SUKKOT:Lcom/ibm/icu/util/HebrewHoliday;

.field public static TAMMUZ_17:Lcom/ibm/icu/util/HebrewHoliday;

.field public static TEVET_10:Lcom/ibm/icu/util/HebrewHoliday;

.field public static TISHA_BAV:Lcom/ibm/icu/util/HebrewHoliday;

.field public static TU_BSHEVAT:Lcom/ibm/icu/util/HebrewHoliday;

.field public static YOM_HAATZMAUT:Lcom/ibm/icu/util/HebrewHoliday;

.field public static YOM_HASHOAH:Lcom/ibm/icu/util/HebrewHoliday;

.field public static YOM_HAZIKARON:Lcom/ibm/icu/util/HebrewHoliday;

.field public static YOM_KIPPUR:Lcom/ibm/icu/util/HebrewHoliday;

.field public static YOM_YERUSHALAYIM:Lcom/ibm/icu/util/HebrewHoliday;

.field private static final gCalendar:Lcom/ibm/icu/util/HebrewCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 20
    new-instance v0, Lcom/ibm/icu/util/HebrewCalendar;

    invoke-direct {v0}, Lcom/ibm/icu/util/HebrewCalendar;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->gCalendar:Lcom/ibm/icu/util/HebrewCalendar;

    .line 44
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "Rosh Hashanah"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->ROSH_HASHANAH:Lcom/ibm/icu/util/HebrewHoliday;

    .line 49
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/4 v2, 0x3

    const-string v4, "Fast of Gedaliah"

    invoke-direct {v0, v1, v2, v4}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->GEDALIAH:Lcom/ibm/icu/util/HebrewHoliday;

    .line 54
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v4, 0xa

    const-string v5, "Yom Kippur"

    invoke-direct {v0, v1, v4, v5}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->YOM_KIPPUR:Lcom/ibm/icu/util/HebrewHoliday;

    .line 59
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v5, 0xf

    const/4 v6, 0x6

    const-string v7, "Sukkot"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->SUKKOT:Lcom/ibm/icu/util/HebrewHoliday;

    .line 64
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v7, 0x15

    const-string v8, "Hoshanah Rabbah"

    invoke-direct {v0, v1, v7, v8}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->HOSHANAH_RABBAH:Lcom/ibm/icu/util/HebrewHoliday;

    .line 69
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v8, 0x16

    const-string v9, "Shemini Atzeret"

    invoke-direct {v0, v1, v8, v9}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->SHEMINI_ATZERET:Lcom/ibm/icu/util/HebrewHoliday;

    .line 74
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v8, 0x17

    const-string v9, "Simchat Torah"

    invoke-direct {v0, v1, v8, v9}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->SIMCHAT_TORAH:Lcom/ibm/icu/util/HebrewHoliday;

    .line 79
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v1, 0x19

    const-string v8, "Hanukkah"

    invoke-direct {v0, v3, v1, v8}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->HANUKKAH:Lcom/ibm/icu/util/HebrewHoliday;

    .line 84
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const-string v1, "Fast of Tevet 10"

    invoke-direct {v0, v2, v4, v1}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->TEVET_10:Lcom/ibm/icu/util/HebrewHoliday;

    .line 89
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/4 v1, 0x4

    const-string v2, "Tu B\'Shevat"

    invoke-direct {v0, v1, v5, v2}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->TU_BSHEVAT:Lcom/ibm/icu/util/HebrewHoliday;

    .line 94
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v2, 0xd

    const-string v8, "Fast of Esther"

    invoke-direct {v0, v6, v2, v8}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->ESTHER:Lcom/ibm/icu/util/HebrewHoliday;

    .line 99
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v2, 0xe

    const-string v8, "Purim"

    invoke-direct {v0, v6, v2, v8}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->PURIM:Lcom/ibm/icu/util/HebrewHoliday;

    .line 104
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const-string v8, "Shushan Purim"

    invoke-direct {v0, v6, v5, v8}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->SHUSHAN_PURIM:Lcom/ibm/icu/util/HebrewHoliday;

    .line 109
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/4 v8, 0x7

    const/16 v9, 0x8

    const-string v10, "Passover"

    invoke-direct {v0, v8, v5, v9, v10}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->PASSOVER:Lcom/ibm/icu/util/HebrewHoliday;

    .line 114
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v5, 0x1b

    const-string v10, "Yom Hashoah"

    invoke-direct {v0, v8, v5, v10}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->YOM_HASHOAH:Lcom/ibm/icu/util/HebrewHoliday;

    .line 119
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const-string v5, "Yom Hazikaron"

    invoke-direct {v0, v9, v1, v5}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->YOM_HAZIKARON:Lcom/ibm/icu/util/HebrewHoliday;

    .line 124
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/4 v1, 0x5

    const-string v5, "Yom Ha\'Atzmaut"

    invoke-direct {v0, v9, v1, v5}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->YOM_HAATZMAUT:Lcom/ibm/icu/util/HebrewHoliday;

    .line 129
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const-string v1, "Pesach Sheini"

    invoke-direct {v0, v9, v2, v1}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->PESACH_SHEINI:Lcom/ibm/icu/util/HebrewHoliday;

    .line 134
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v1, 0x12

    const-string v2, "Lab B\'Omer"

    invoke-direct {v0, v9, v1, v2}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->LAG_BOMER:Lcom/ibm/icu/util/HebrewHoliday;

    .line 139
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v1, 0x1c

    const-string v2, "Yom Yerushalayim"

    invoke-direct {v0, v9, v1, v2}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->YOM_YERUSHALAYIM:Lcom/ibm/icu/util/HebrewHoliday;

    .line 144
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v1, 0x9

    const-string v2, "Shavuot"

    invoke-direct {v0, v1, v6, v3, v2}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->SHAVUOT:Lcom/ibm/icu/util/HebrewHoliday;

    .line 149
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v2, 0x11

    const-string v3, "Fast of Tammuz 17"

    invoke-direct {v0, v4, v2, v3}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->TAMMUZ_17:Lcom/ibm/icu/util/HebrewHoliday;

    .line 154
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v2, 0xb

    const-string v3, "Fast of Tisha B\'Av"

    invoke-direct {v0, v2, v1, v3}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->TISHA_BAV:Lcom/ibm/icu/util/HebrewHoliday;

    .line 159
    new-instance v0, Lcom/ibm/icu/util/HebrewHoliday;

    const/16 v1, 0xc

    const-string v2, "Selihot"

    invoke-direct {v0, v1, v7, v2}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IILjava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/util/HebrewHoliday;->SELIHOT:Lcom/ibm/icu/util/HebrewHoliday;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 1

    .line 38
    new-instance p3, Lcom/ibm/icu/util/SimpleDateRule;

    sget-object v0, Lcom/ibm/icu/util/HebrewHoliday;->gCalendar:Lcom/ibm/icu/util/HebrewCalendar;

    invoke-direct {p3, p1, p2, v0}, Lcom/ibm/icu/util/SimpleDateRule;-><init>(IILcom/ibm/icu/util/Calendar;)V

    invoke-direct {p0, p4, p3}, Lcom/ibm/icu/util/Holiday;-><init>(Ljava/lang/String;Lcom/ibm/icu/util/DateRule;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/ibm/icu/util/HebrewHoliday;-><init>(IIILjava/lang/String;)V

    return-void
.end method
