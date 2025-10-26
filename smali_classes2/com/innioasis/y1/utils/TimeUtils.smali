.class public final Lcom/innioasis/y1/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010 \u001a\u0004\u0018\u00010\u00112\u0006\u0010!\u001a\u00020\"J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020$J\u0012\u0010\'\u001a\u0004\u0018\u00010\u00112\u0008\u0010!\u001a\u0004\u0018\u00010\u0011J\u000e\u0010(\u001a\u00020\u00112\u0006\u0010)\u001a\u00020*J\u000e\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020$J\u0010\u0010!\u001a\u00020\u00112\u0006\u0010-\u001a\u00020\"H\u0007J\u0012\u0010.\u001a\u0004\u0018\u00010\u00112\u0006\u0010/\u001a\u00020$H\u0002R\u001e\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0011\u0010\u0016\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0013R\u0011\u0010\u0018\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u0013R\u0011\u0010\u001a\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0013R\u0011\u0010\u001c\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0013R\u0011\u0010\u001e\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0013\u00a8\u00060"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/TimeUtils;",
        "",
        "()V",
        "mFormatBuilder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "getMFormatBuilder",
        "()Ljava/lang/StringBuilder;",
        "setMFormatBuilder",
        "(Ljava/lang/StringBuilder;)V",
        "mFormatter",
        "Ljava/util/Formatter;",
        "getMFormatter",
        "()Ljava/util/Formatter;",
        "setMFormatter",
        "(Ljava/util/Formatter;)V",
        "nowDate",
        "",
        "getNowDate",
        "()Ljava/lang/String;",
        "nowDateTime",
        "getNowDateTime",
        "nowTime",
        "getNowTime",
        "nowTimeDetail",
        "getNowTimeDetail",
        "nowTimeHM12",
        "getNowTimeHM12",
        "nowTimeHM24",
        "getNowTimeHM24",
        "nowTimeM",
        "getNowTimeM",
        "formatTime",
        "time",
        "",
        "getMonthDay",
        "",
        "y",
        "m",
        "getStringTimestamp",
        "getWeekOfDate",
        "resources",
        "Landroid/content/res/Resources;",
        "stringForTime",
        "timeMs",
        "millionSeconds",
        "unitFormat",
        "i",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

.field private static mFormatBuilder:Ljava/lang/StringBuilder;

.field private static mFormatter:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/innioasis/y1/utils/TimeUtils;

    invoke-direct {v0}, Lcom/innioasis/y1/utils/TimeUtils;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/innioasis/y1/utils/TimeUtils;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 145
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/innioasis/y1/utils/TimeUtils;->mFormatBuilder:Ljava/lang/StringBuilder;

    check-cast v1, Ljava/lang/Appendable;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/innioasis/y1/utils/TimeUtils;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final time(J)Ljava/lang/String;
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 116
    div-long/2addr p0, v0

    long-to-int p1, p0

    if-gtz p1, :cond_0

    const-string p0, "00:00"

    return-object p0

    .line 122
    :cond_0
    div-int/lit8 p0, p1, 0x3c

    const/16 v0, 0x3a

    const/16 v1, 0x3c

    if-ge p0, v1, :cond_1

    .line 124
    rem-int/2addr p1, v1

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-direct {v2, p0}, Lcom/innioasis/y1/utils/TimeUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Lcom/innioasis/y1/utils/TimeUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 127
    :cond_1
    div-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x63

    if-le v2, v3, :cond_2

    const-string p0, "99:59:59"

    return-object p0

    .line 129
    :cond_2
    rem-int/2addr p0, v1

    mul-int/lit16 v1, v2, 0xe10

    sub-int/2addr p1, v1

    mul-int/lit8 v1, p0, 0x3c

    sub-int/2addr p1, v1

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/innioasis/y1/utils/TimeUtils;->INSTANCE:Lcom/innioasis/y1/utils/TimeUtils;

    invoke-direct {v3, v2}, Lcom/innioasis/y1/utils/TimeUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Lcom/innioasis/y1/utils/TimeUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Lcom/innioasis/y1/utils/TimeUtils;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private final unitFormat(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final formatTime(J)Ljava/lang/String;
    .locals 4

    .line 85
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    const/16 v2, 0x3e8

    int-to-long v2, v2

    mul-long p1, p1, v2

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final getMFormatBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 144
    sget-object v0, Lcom/innioasis/y1/utils/TimeUtils;->mFormatBuilder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final getMFormatter()Ljava/util/Formatter;
    .locals 1

    .line 145
    sget-object v0, Lcom/innioasis/y1/utils/TimeUtils;->mFormatter:Ljava/util/Formatter;

    return-object v0
.end method

.method public final getMonthDay(II)I
    .locals 0

    packed-switch p2, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x1e

    goto :goto_0

    .line 165
    :pswitch_1
    rem-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    rem-int/lit8 p2, p1, 0x64

    if-nez p2, :cond_1

    :cond_0
    rem-int/lit16 p1, p1, 0x190

    if-nez p1, :cond_2

    :cond_1
    const/16 p1, 0x1d

    goto :goto_0

    :cond_2
    const/16 p1, 0x1c

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x1f

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final getNowDate()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdf.format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNowDateTime()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdf.format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNowTime()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdf.format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNowTimeDetail()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdf.format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNowTimeHM12()Ljava/lang/String;
    .locals 3

    .line 50
    sget-object v0, Lcom/innioasis/y1/activity/LanguageActivity;->Companion:Lcom/innioasis/y1/activity/LanguageActivity$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/LanguageActivity$Companion;->getLanguageList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getLanguage()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/LanguageActivity$Companion$Language;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm a"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 52
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdf.format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNowTimeHM24()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 46
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdf.format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNowTimeM()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdf.format(Date())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getStringTimestamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 97
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/16 p1, 0x3e8

    int-to-long v2, p1

    div-long/2addr v0, v2

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getWeekOfDate(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6

    const-string v0, "resources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f1101ae

    .line 66
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resources.getString(R.string.sunday)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1100fb

    .line 67
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resources.getString(R.string.monday)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x7f1101c6

    .line 68
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "resources.getString(R.string.tuesday)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const v2, 0x7f1101d0

    .line 69
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "resources.getString(R.string.wednesday)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const v2, 0x7f1101ba

    .line 70
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "resources.getString(R.string.thursday)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const v2, 0x7f1100b7

    .line 71
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "resources.getString(R.string.friday)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    const v2, 0x7f110170

    .line 72
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "resources.getString(R.string.saturday)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object p1, v1, v2

    .line 65
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    :cond_0
    sget-object v1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u663e\u793a\u661f\u671f   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final setMFormatBuilder(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sput-object p1, Lcom/innioasis/y1/utils/TimeUtils;->mFormatBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final setMFormatter(Ljava/util/Formatter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    sput-object p1, Lcom/innioasis/y1/utils/TimeUtils;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public final stringForTime(I)Ljava/lang/String;
    .locals 7

    .line 147
    div-int/lit16 p1, p1, 0x3e8

    .line 148
    rem-int/lit8 v0, p1, 0x3c

    .line 149
    div-int/lit8 v1, p1, 0x3c

    rem-int/lit8 v1, v1, 0x3c

    .line 150
    div-int/lit16 p1, p1, 0xe10

    .line 151
    sget-object v2, Lcom/innioasis/y1/utils/TimeUtils;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-lez p1, :cond_0

    .line 153
    sget-object v5, Lcom/innioasis/y1/utils/TimeUtils;->mFormatter:Ljava/util/Formatter;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    const-string p1, "%d:%02d:%02d"

    invoke-virtual {v5, p1, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{\n            mFormatter\u2026    .toString()\n        }"

    .line 152
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_0
    sget-object p1, Lcom/innioasis/y1/utils/TimeUtils;->mFormatter:Ljava/util/Formatter;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "%02d:%02d"

    invoke-virtual {p1, v0, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "{\n            mFormatter\u2026nds).toString()\n        }"

    .line 155
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
