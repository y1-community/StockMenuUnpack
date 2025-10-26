.class public final Lcom/ibm/icu/util/CopticCalendar;
.super Lcom/ibm/icu/util/CECalendar;
.source "CopticCalendar.java"


# static fields
.field public static final AMSHIR:I = 0x5

.field public static final BABA:I = 0x1

.field public static final BARAMHAT:I = 0x6

.field public static final BARAMOUDA:I = 0x7

.field public static final BASHANS:I = 0x8

.field private static final BCE:I = 0x0

.field private static final CE:I = 0x1

.field public static final EPEP:I = 0xa

.field public static final HATOR:I = 0x2

.field private static final JD_EPOCH_OFFSET:I = 0x1bd799

.field public static final KIAHK:I = 0x3

.field public static final MESRA:I = 0xb

.field public static final NASIE:I = 0xc

.field public static final PAONA:I = 0x9

.field public static final TOBA:I = 0x4

.field public static final TOUT:I = 0x0

.field private static final serialVersionUID:J = 0x51ee93e0021d7b7fL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/ibm/icu/util/CECalendar;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/ibm/icu/util/CECalendar;-><init>(III)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 233
    invoke-direct/range {p0 .. p6}, Lcom/ibm/icu/util/CECalendar;-><init>(IIIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Lcom/ibm/icu/util/ULocale;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/CECalendar;-><init>(Lcom/ibm/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/CECalendar;-><init>(Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lcom/ibm/icu/util/CECalendar;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static copticToJD(JII)I
    .locals 1

    const v0, 0x1bd799

    .line 324
    invoke-static {p0, p1, p2, p3, v0}, Lcom/ibm/icu/util/CopticCalendar;->ceToJD(JIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected getJDEpochOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x1bd799

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "coptic"

    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 278
    invoke-virtual {p0}, Lcom/ibm/icu/util/CopticCalendar;->getJDEpochOffset()I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/ibm/icu/util/CopticCalendar;->jdToCE(II[I)V

    const/4 p1, 0x0

    aget v1, v0, p1

    const/4 v2, 0x1

    if-gtz v1, :cond_0

    aget v1, v0, p1

    rsub-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    aget v1, v0, p1

    const/4 v3, 0x1

    :goto_0
    const/16 v4, 0x13

    aget v5, v0, p1

    .line 292
    invoke-virtual {p0, v4, v5}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 293
    invoke-virtual {p0, p1, v3}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    .line 294
    invoke-virtual {p0, v2, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    aget p1, v0, v2

    const/4 v1, 0x2

    .line 295
    invoke-virtual {p0, v1, p1}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    const/4 p1, 0x5

    aget v3, v0, v1

    .line 296
    invoke-virtual {p0, p1, v3}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    const/4 p1, 0x6

    aget v2, v0, v2

    mul-int/lit8 v2, v2, 0x1e

    aget v0, v0, v1

    add-int/2addr v2, v0

    .line 297
    invoke-virtual {p0, p1, v2}, Lcom/ibm/icu/util/CopticCalendar;->internalSet(II)V

    return-void
.end method

.method protected handleGetExtendedYear()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x13

    const/4 v1, 0x1

    .line 254
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CopticCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 255
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, v0, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 260
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/ibm/icu/util/CopticCalendar;->internalGet(II)I

    move-result v0

    :goto_0
    return v0
.end method
