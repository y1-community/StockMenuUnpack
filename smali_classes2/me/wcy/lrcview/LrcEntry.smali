.class Lme/wcy/lrcview/LrcEntry;
.super Ljava/lang/Object;
.source "LrcEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lme/wcy/lrcview/LrcEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final GRAVITY_CENTER:I = 0x0

.field public static final GRAVITY_LEFT:I = 0x1

.field public static final GRAVITY_RIGHT:I = 0x2


# instance fields
.field private offset:F

.field private secondText:Ljava/lang/String;

.field private staticLayout:Landroid/text/StaticLayout;

.field private text:Ljava/lang/String;

.field private time:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lme/wcy/lrcview/LrcEntry;->offset:F

    .line 39
    iput-wide p1, p0, Lme/wcy/lrcview/LrcEntry;->time:J

    .line 40
    iput-object p3, p0, Lme/wcy/lrcview/LrcEntry;->text:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 33
    iput v0, p0, Lme/wcy/lrcview/LrcEntry;->offset:F

    .line 44
    iput-wide p1, p0, Lme/wcy/lrcview/LrcEntry;->time:J

    .line 45
    iput-object p3, p0, Lme/wcy/lrcview/LrcEntry;->text:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lme/wcy/lrcview/LrcEntry;->secondText:Ljava/lang/String;

    return-void
.end method

.method private getShowText()Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lme/wcy/lrcview/LrcEntry;->secondText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lme/wcy/lrcview/LrcEntry;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lme/wcy/lrcview/LrcEntry;->secondText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcEntry;->text:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcEntry;->compareTo(Lme/wcy/lrcview/LrcEntry;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lme/wcy/lrcview/LrcEntry;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 115
    :cond_0
    iget-wide v0, p0, Lme/wcy/lrcview/LrcEntry;->time:J

    invoke-virtual {p1}, Lme/wcy/lrcview/LrcEntry;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method getHeight()I
    .locals 1

    .line 79
    iget-object v0, p0, Lme/wcy/lrcview/LrcEntry;->staticLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 82
    :cond_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOffset()F
    .locals 1

    .line 86
    iget v0, p0, Lme/wcy/lrcview/LrcEntry;->offset:F

    return v0
.end method

.method getStaticLayout()Landroid/text/StaticLayout;
    .locals 1

    .line 75
    iget-object v0, p0, Lme/wcy/lrcview/LrcEntry;->staticLayout:Landroid/text/StaticLayout;

    return-object v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lme/wcy/lrcview/LrcEntry;->text:Ljava/lang/String;

    return-object v0
.end method

.method getTime()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lme/wcy/lrcview/LrcEntry;->time:J

    return-wide v0
.end method

.method init(Landroid/text/TextPaint;II)V
    .locals 8

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 58
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v4, p3

    goto :goto_1

    .line 62
    :cond_0
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 53
    :cond_1
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 65
    :goto_1
    new-instance p3, Landroid/text/StaticLayout;

    invoke-direct {p0}, Lme/wcy/lrcview/LrcEntry;->getShowText()Ljava/lang/String;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p3, p0, Lme/wcy/lrcview/LrcEntry;->staticLayout:Landroid/text/StaticLayout;

    const/4 p1, 0x1

    .line 67
    iput p1, p0, Lme/wcy/lrcview/LrcEntry;->offset:F

    return-void
.end method

.method public setOffset(F)V
    .locals 0

    .line 90
    iput p1, p0, Lme/wcy/lrcview/LrcEntry;->offset:F

    return-void
.end method

.method setSecondText(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lme/wcy/lrcview/LrcEntry;->secondText:Ljava/lang/String;

    return-void
.end method
