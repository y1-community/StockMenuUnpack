.class public final Lcom/innioasis/y1/utils/ClockView;
.super Landroid/view/View;
.source "ClockView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010!\u001a\u00020\"2\u0006\u0010\u0012\u001a\u00020\tH\u0002J\u0010\u0010#\u001a\u00020\"2\u0006\u0010\u0018\u001a\u00020\tH\u0002J\u0012\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0015J\u0016\u0010(\u001a\u00020%2\u0006\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tR#\u0010\u000b\u001a\n \r*\u0004\u0018\u00010\u000c0\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0012\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0018\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0019\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0011\u001a\u0004\u0008\u001a\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u0011\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006)"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/ClockView;",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "attrs",
        "Landroid/util/AttributeSet;",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "bg",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
        "getBg",
        "()Landroid/graphics/Bitmap;",
        "bg$delegate",
        "Lkotlin/Lazy;",
        "h",
        "hL",
        "",
        "getHL",
        "()F",
        "hL$delegate",
        "m",
        "mL",
        "getML",
        "mL$delegate",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "paint$delegate",
        "getAngleH",
        "",
        "getAngleM",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "setTime",
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


# instance fields
.field private final bg$delegate:Lkotlin/Lazy;

.field private h:I

.field private final hL$delegate:Lkotlin/Lazy;

.field private m:I

.field private final mL$delegate:Lkotlin/Lazy;

.field private final paint$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x6

    .line 19
    iput p1, p0, Lcom/innioasis/y1/utils/ClockView;->h:I

    const/16 p1, 0x2d

    .line 20
    iput p1, p0, Lcom/innioasis/y1/utils/ClockView;->m:I

    .line 21
    new-instance p1, Lcom/innioasis/y1/utils/ClockView$hL$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/ClockView$hL$2;-><init>(Lcom/innioasis/y1/utils/ClockView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->hL$delegate:Lkotlin/Lazy;

    .line 25
    new-instance p1, Lcom/innioasis/y1/utils/ClockView$mL$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/ClockView$mL$2;-><init>(Lcom/innioasis/y1/utils/ClockView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->mL$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/innioasis/y1/utils/ClockView$bg$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/ClockView$bg$2;-><init>(Lcom/innioasis/y1/utils/ClockView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->bg$delegate:Lkotlin/Lazy;

    .line 32
    sget-object p1, Lcom/innioasis/y1/utils/ClockView$paint$2;->INSTANCE:Lcom/innioasis/y1/utils/ClockView$paint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->paint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x6

    .line 19
    iput p1, p0, Lcom/innioasis/y1/utils/ClockView;->h:I

    const/16 p1, 0x2d

    .line 20
    iput p1, p0, Lcom/innioasis/y1/utils/ClockView;->m:I

    .line 21
    new-instance p1, Lcom/innioasis/y1/utils/ClockView$hL$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/ClockView$hL$2;-><init>(Lcom/innioasis/y1/utils/ClockView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->hL$delegate:Lkotlin/Lazy;

    .line 25
    new-instance p1, Lcom/innioasis/y1/utils/ClockView$mL$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/ClockView$mL$2;-><init>(Lcom/innioasis/y1/utils/ClockView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->mL$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/innioasis/y1/utils/ClockView$bg$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/ClockView$bg$2;-><init>(Lcom/innioasis/y1/utils/ClockView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->bg$delegate:Lkotlin/Lazy;

    .line 32
    sget-object p1, Lcom/innioasis/y1/utils/ClockView$paint$2;->INSTANCE:Lcom/innioasis/y1/utils/ClockView$paint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->paint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    .line 19
    iput p1, p0, Lcom/innioasis/y1/utils/ClockView;->h:I

    const/16 p1, 0x2d

    .line 20
    iput p1, p0, Lcom/innioasis/y1/utils/ClockView;->m:I

    .line 21
    new-instance p1, Lcom/innioasis/y1/utils/ClockView$hL$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/ClockView$hL$2;-><init>(Lcom/innioasis/y1/utils/ClockView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->hL$delegate:Lkotlin/Lazy;

    .line 25
    new-instance p1, Lcom/innioasis/y1/utils/ClockView$mL$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/ClockView$mL$2;-><init>(Lcom/innioasis/y1/utils/ClockView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->mL$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/innioasis/y1/utils/ClockView$bg$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/ClockView$bg$2;-><init>(Lcom/innioasis/y1/utils/ClockView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->bg$delegate:Lkotlin/Lazy;

    .line 32
    sget-object p1, Lcom/innioasis/y1/utils/ClockView$paint$2;->INSTANCE:Lcom/innioasis/y1/utils/ClockView$paint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/ClockView;->paint$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getAngleH(I)D
    .locals 4

    const/4 v0, 0x3

    const/16 v1, 0xc

    if-gt p1, v1, :cond_0

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0xc

    :cond_0
    neg-int p1, p1

    add-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x41400000    # 12.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const/4 p1, 0x2

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private final getAngleM(I)D
    .locals 4

    const/16 v0, 0xf

    const/16 v1, 0x3c

    if-gt p1, v1, :cond_0

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x3c

    :cond_0
    neg-int p1, p1

    add-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    .line 87
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const/4 p1, 0x2

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    return-wide v0
.end method

.method private final getBg()Landroid/graphics/Bitmap;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/innioasis/y1/utils/ClockView;->bg$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final getHL()F
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/innioasis/y1/utils/ClockView;->hL$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getML()F
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/innioasis/y1/utils/ClockView;->mL$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/innioasis/y1/utils/ClockView;->paint$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/ClockView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/innioasis/y1/utils/ClockView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    .line 50
    new-instance v2, Landroid/graphics/RectF;

    mul-float v1, v1, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 53
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-direct {v1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    if-eqz p1, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/innioasis/y1/utils/ClockView;->getBg()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/innioasis/y1/utils/ClockView;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v0, v4, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 56
    invoke-direct {p0}, Lcom/innioasis/y1/utils/ClockView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    iget v0, p0, Lcom/innioasis/y1/utils/ClockView;->h:I

    const/16 v2, 0xc

    if-lt v0, v2, :cond_0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/innioasis/y1/utils/ClockView;->h:I

    .line 59
    :cond_0
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    .line 60
    iget v0, v1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0}, Lcom/innioasis/y1/utils/ClockView;->getHL()F

    move-result v2

    iget v4, p0, Lcom/innioasis/y1/utils/ClockView;->h:I

    invoke-direct {p0, v4}, Lcom/innioasis/y1/utils/ClockView;->getAngleH(I)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float v2, v2, v4

    add-float v7, v0, v2

    .line 61
    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/innioasis/y1/utils/ClockView;->getHL()F

    move-result v2

    iget v4, p0, Lcom/innioasis/y1/utils/ClockView;->h:I

    invoke-direct {p0, v4}, Lcom/innioasis/y1/utils/ClockView;->getAngleH(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v4, v8

    mul-float v2, v2, v4

    sub-float v8, v0, v2

    .line 62
    invoke-direct {p0}, Lcom/innioasis/y1/utils/ClockView;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    .line 58
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 64
    invoke-direct {p0}, Lcom/innioasis/y1/utils/ClockView;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->y:F

    .line 67
    iget v0, v1, Landroid/graphics/PointF;->x:F

    invoke-direct {p0}, Lcom/innioasis/y1/utils/ClockView;->getML()F

    move-result v2

    iget v3, p0, Lcom/innioasis/y1/utils/ClockView;->m:I

    invoke-direct {p0, v3}, Lcom/innioasis/y1/utils/ClockView;->getAngleM(I)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    add-float v7, v0, v2

    .line 68
    iget v0, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0}, Lcom/innioasis/y1/utils/ClockView;->getML()F

    move-result v1

    iget v2, p0, Lcom/innioasis/y1/utils/ClockView;->m:I

    invoke-direct {p0, v2}, Lcom/innioasis/y1/utils/ClockView;->getAngleM(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    sub-float v8, v0, v1

    .line 69
    invoke-direct {p0}, Lcom/innioasis/y1/utils/ClockView;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    .line 65
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final setTime(II)V
    .locals 1

    .line 40
    iget v0, p0, Lcom/innioasis/y1/utils/ClockView;->h:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/innioasis/y1/utils/ClockView;->m:I

    if-ne v0, p2, :cond_0

    return-void

    .line 41
    :cond_0
    iput p1, p0, Lcom/innioasis/y1/utils/ClockView;->h:I

    .line 42
    iput p2, p0, Lcom/innioasis/y1/utils/ClockView;->m:I

    .line 43
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/ClockView;->invalidate()V

    return-void
.end method
