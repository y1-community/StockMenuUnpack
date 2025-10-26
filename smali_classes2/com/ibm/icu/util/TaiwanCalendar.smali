.class public Lcom/ibm/icu/util/TaiwanCalendar;
.super Lcom/ibm/icu/util/GregorianCalendar;
.source "TaiwanCalendar.java"


# static fields
.field public static final BEFORE_MINGUO:I = 0x0

.field private static final GREGORIAN_EPOCH:I = 0x7b2

.field public static final MINGUO:I = 0x1

.field private static final Taiwan_ERA_START:I = 0x777

.field private static final serialVersionUID:J = 0x23d8ad9d780a23d7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(III)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 176
    invoke-direct/range {p0 .. p6}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/ibm/icu/util/TaiwanCalendar;-><init>()V

    .line 140
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/TaiwanCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "roc"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 2

    .line 219
    invoke-super {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->handleComputeFields(I)V

    const/16 p1, 0x13

    .line 220
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/TaiwanCalendar;->internalGet(I)I

    move-result p1

    add-int/lit16 p1, p1, -0x777

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/TaiwanCalendar;->internalSet(II)V

    .line 223
    invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/util/TaiwanCalendar;->internalSet(II)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/util/TaiwanCalendar;->internalSet(II)V

    rsub-int/lit8 p1, p1, 0x1

    .line 226
    invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/util/TaiwanCalendar;->internalSet(II)V

    :goto_0
    return-void
.end method

.method protected handleGetExtendedYear()I
    .locals 4

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/TaiwanCalendar;->newerField(II)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 201
    invoke-virtual {p0, v0, v3}, Lcom/ibm/icu/util/TaiwanCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/16 v1, 0x7b2

    .line 202
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/TaiwanCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/ibm/icu/util/TaiwanCalendar;->internalGet(II)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 206
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/TaiwanCalendar;->internalGet(II)I

    move-result v0

    add-int/lit16 v0, v0, 0x777

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/TaiwanCalendar;->internalGet(II)I

    move-result v0

    sub-int/2addr v1, v0

    add-int/lit16 v0, v1, 0x777

    :goto_0
    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 0

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 244
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result p1

    return p1
.end method
