.class public final Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
.super Ljava/lang/Object;
.source "CurrencyMetaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CurrencyMetaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurrencyFilter"
.end annotation


# static fields
.field private static final ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;


# instance fields
.field public final currency:Ljava/lang/String;

.field public final from:J

.field public final region:Ljava/lang/String;

.field public final tenderOnly:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final to:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 123
    new-instance v8, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    const-wide v5, 0x7fffffffffffffffL

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    sput-object v8, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    .line 117
    iput-wide p3, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    .line 118
    iput-wide p5, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    .line 119
    iput-boolean p7, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    return-void
.end method

.method public static all()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    .line 132
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    return-object v0
.end method

.method private static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 363
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 364
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static now()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 2

    .line 142
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(Ljava/util/Date;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method

.method public static onCurrency(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    .line 164
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withCurrency(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    return-object p0
.end method

.method public static onDate(J)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    .line 198
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(J)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    return-object p0
.end method

.method public static onDate(Ljava/util/Date;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    .line 175
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDate(Ljava/util/Date;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    return-object p0
.end method

.method public static onDateRange(JJ)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    .line 212
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDateRange(JJ)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    return-object p0
.end method

.method public static onDateRange(Ljava/util/Date;Ljava/util/Date;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    .line 189
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withDateRange(Ljava/util/Date;Ljava/util/Date;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    return-object p0
.end method

.method public static onRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    .line 153
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object p0

    return-object p0
.end method

.method public static onTender()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 1

    .line 221
    sget-object v0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->ALL:Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    invoke-virtual {v0}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->withTender()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Z
    .locals 5

    .line 323
    invoke-static {p0, p1}, Lcom/ibm/icu/impl/Utility;->sameObjects(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    .line 324
    invoke-static {v0, v1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-object v1, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    .line 325
    invoke-static {v0, v1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v2, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-wide v2, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    iget-boolean p1, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 312
    instance-of v0, p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    .line 313
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->equals(Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    .line 342
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1f

    .line 344
    iget-wide v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    long-to-int v3, v1

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 346
    iget-wide v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    long-to-int v4, v1

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    ushr-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 348
    iget-boolean v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 359
    invoke-static {p0}, Lcom/ibm/icu/text/CurrencyMetaInfo;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withCurrency(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    .line 245
    new-instance v8, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-wide v3, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v5, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-boolean v7, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v0, v8

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v8
.end method

.method public withDate(J)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    .line 280
    new-instance v8, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v0, v8

    move-wide v3, p1

    move-wide v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v8
.end method

.method public withDate(Ljava/util/Date;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    .line 256
    new-instance v8, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-boolean v7, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v8
.end method

.method public withDateRange(JJ)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    .line 294
    new-instance v8, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v0, v8

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v8
.end method

.method public withDateRange(Ljava/util/Date;Ljava/util/Date;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 10

    if-nez p1, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    if-nez p2, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    goto :goto_1

    .line 269
    :cond_1
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    :goto_1
    move-wide v7, p1

    .line 270
    new-instance p1, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v3, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v4, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object p1
.end method

.method public withRegion(Ljava/lang/String;)Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    .line 233
    new-instance v8, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v2, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-wide v3, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v5, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    iget-boolean v7, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->tenderOnly:Z

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v8
.end method

.method public withTender()Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;
    .locals 9

    .line 303
    new-instance v8, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;

    iget-object v1, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->region:Ljava/lang/String;

    iget-object v2, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->currency:Ljava/lang/String;

    iget-wide v3, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->from:J

    iget-wide v5, p0, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;->to:J

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/ibm/icu/text/CurrencyMetaInfo$CurrencyFilter;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object v8
.end method
