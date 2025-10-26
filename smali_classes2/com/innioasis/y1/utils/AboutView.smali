.class public final Lcom/innioasis/y1/utils/AboutView;
.super Landroid/view/View;
.source "AboutView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000cH\u0002J\u0012\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0015J\u0010\u0010\u001e\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/AboutView;",
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
        "angle",
        "",
        "availableColor",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "paint$delegate",
        "Lkotlin/Lazy;",
        "usedColor",
        "centerToRectF",
        "Landroid/graphics/RectF;",
        "c",
        "Landroid/graphics/PointF;",
        "l",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "setData",
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
.field private angle:F

.field private final availableColor:I

.field private final paint$delegate:Lkotlin/Lazy;

.field private final usedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    sget-object p1, Lcom/innioasis/y1/utils/AboutView$paint$2;->INSTANCE:Lcom/innioasis/y1/utils/AboutView$paint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/AboutView;->paint$delegate:Lkotlin/Lazy;

    const/high16 p1, 0x41f00000    # 30.0f

    .line 30
    iput p1, p0, Lcom/innioasis/y1/utils/AboutView;->angle:F

    const-string p1, "#3CFFDE"

    .line 31
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1/utils/AboutView;->availableColor:I

    const-string p1, "#FFCC23"

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1/utils/AboutView;->usedColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-object p1, Lcom/innioasis/y1/utils/AboutView$paint$2;->INSTANCE:Lcom/innioasis/y1/utils/AboutView$paint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/AboutView;->paint$delegate:Lkotlin/Lazy;

    const/high16 p1, 0x41f00000    # 30.0f

    .line 30
    iput p1, p0, Lcom/innioasis/y1/utils/AboutView;->angle:F

    const-string p1, "#3CFFDE"

    .line 31
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1/utils/AboutView;->availableColor:I

    const-string p1, "#FFCC23"

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1/utils/AboutView;->usedColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget-object p1, Lcom/innioasis/y1/utils/AboutView$paint$2;->INSTANCE:Lcom/innioasis/y1/utils/AboutView$paint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/AboutView;->paint$delegate:Lkotlin/Lazy;

    const/high16 p1, 0x41f00000    # 30.0f

    .line 30
    iput p1, p0, Lcom/innioasis/y1/utils/AboutView;->angle:F

    const-string p1, "#3CFFDE"

    .line 31
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1/utils/AboutView;->availableColor:I

    const-string p1, "#FFCC23"

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1/utils/AboutView;->usedColor:I

    return-void
.end method

.method private final centerToRectF(Landroid/graphics/PointF;F)Landroid/graphics/RectF;
    .locals 4

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    .line 69
    iget v1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, p2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p2

    iget v3, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    .line 68
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/innioasis/y1/utils/AboutView;->paint$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method public static synthetic setData$default(Lcom/innioasis/y1/utils/AboutView;FILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/AboutView;->setData(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    .line 37
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/AboutView;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/AboutView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    sub-float v3, v1, v2

    .line 42
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 43
    new-instance v1, Landroid/graphics/PointF;

    .line 44
    iget v5, v4, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    iget v7, v0, Lcom/innioasis/y1/utils/AboutView;->angle:F

    const/4 v8, 0x2

    int-to-float v9, v8

    div-float/2addr v7, v9

    const/high16 v10, 0x43b40000    # 360.0f

    div-float/2addr v7, v10

    float-to-double v11, v7

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    int-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    float-to-double v13, v2

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v11

    double-to-float v2, v5

    .line 45
    iget v5, v4, Landroid/graphics/PointF;->y:F

    float-to-double v5, v5

    iget v11, v0, Lcom/innioasis/y1/utils/AboutView;->angle:F

    div-float/2addr v11, v9

    div-float/2addr v11, v10

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    mul-double v11, v11, v15

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v13

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v5, v7

    double-to-float v5, v5

    .line 43
    invoke-direct {v1, v2, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 47
    invoke-direct {v0, v4, v3}, Lcom/innioasis/y1/utils/AboutView;->centerToRectF(Landroid/graphics/PointF;F)Landroid/graphics/RectF;

    move-result-object v12

    .line 48
    invoke-direct {v0, v1, v3}, Lcom/innioasis/y1/utils/AboutView;->centerToRectF(Landroid/graphics/PointF;F)Landroid/graphics/RectF;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/AboutView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/innioasis/y1/utils/AboutView;->availableColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget v7, v0, Lcom/innioasis/y1/utils/AboutView;->angle:F

    sub-float v6, v10, v7

    const/4 v8, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/AboutView;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/AboutView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, v0, Lcom/innioasis/y1/utils/AboutView;->usedColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v13, 0x0

    .line 56
    iget v1, v0, Lcom/innioasis/y1/utils/AboutView;->angle:F

    sub-float v14, v10, v1

    const/4 v15, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/AboutView;->getPaint()Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final setData(F)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/innioasis/y1/utils/AboutView;->angle:F

    .line 65
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/AboutView;->invalidate()V

    return-void
.end method
