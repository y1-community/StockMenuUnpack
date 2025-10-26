.class public Lcom/ibm/icu/util/BuddhistCalendar;
.super Lcom/ibm/icu/util/GregorianCalendar;
.source "BuddhistCalendar.java"


# static fields
.field public static final BE:I = 0x0

.field private static final BUDDHIST_ERA_START:I = -0x21f

.field private static final GREGORIAN_EPOCH:I = 0x7b2

.field private static final serialVersionUID:J = 0x23d8ad9d780a23d7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/ibm/icu/util/GregorianCalendar;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(III)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 177
    invoke-direct/range {p0 .. p6}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/ibm/icu/util/BuddhistCalendar;-><init>()V

    .line 137
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/BuddhistCalendar;->setTime(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "buddhist"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 1

    .line 221
    invoke-super {p0, p1}, Lcom/ibm/icu/util/GregorianCalendar;->handleComputeFields(I)V

    const/16 p1, 0x13

    .line 222
    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/BuddhistCalendar;->internalGet(I)I

    move-result p1

    add-int/lit16 p1, p1, 0x21f

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p0, v0, v0}, Lcom/ibm/icu/util/BuddhistCalendar;->internalSet(II)V

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, v0, p1}, Lcom/ibm/icu/util/BuddhistCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 0

    .line 214
    invoke-super {p0, p1, p2, p3}, Lcom/ibm/icu/util/GregorianCalendar;->handleComputeMonthStart(IIZ)I

    move-result p1

    return p1
.end method

.method protected handleGetExtendedYear()I
    .locals 3

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 200
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/BuddhistCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    const/16 v1, 0x7b2

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/BuddhistCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9d1

    .line 203
    invoke-virtual {p0, v1, v0}, Lcom/ibm/icu/util/BuddhistCalendar;->internalGet(II)I

    move-result v0

    add-int/lit16 v0, v0, -0x21f

    :goto_0
    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 237
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ibm/icu/util/GregorianCalendar;->handleGetLimit(II)I

    move-result p1

    return p1
.end method
