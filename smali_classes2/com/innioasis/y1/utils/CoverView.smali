.class public final Lcom/innioasis/y1/utils/CoverView;
.super Landroid/view/View;
.source "CoverView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\"\u001a\u00020#2\u0008\u0010$\u001a\u0004\u0018\u00010%H\u0015J\u0010\u0010&\u001a\u00020#2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000cJ\u001a\u0010(\u001a\u00020#2\u0008\u0010\'\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\tJ\u000e\u0010)\u001a\u00020#2\u0006\u0010\u001d\u001a\u00020\tJ\u0006\u0010*\u001a\u00020#R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0015\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0010R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0012\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u001d\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/CoverView;",
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
        "circularCover",
        "Landroid/graphics/Bitmap;",
        "cover",
        "defaultCover",
        "getDefaultCover",
        "()Landroid/graphics/Bitmap;",
        "defaultCover$delegate",
        "Lkotlin/Lazy;",
        "isMusicPlayer",
        "",
        "note",
        "getNote",
        "note$delegate",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "paint$delegate",
        "progress",
        "progressBar",
        "",
        "progressBg",
        "progressDot",
        "onDraw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "setCover",
        "bitmap",
        "setData",
        "setProgress",
        "setTemp",
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
.field private circularCover:Landroid/graphics/Bitmap;

.field private cover:Landroid/graphics/Bitmap;

.field private final defaultCover$delegate:Lkotlin/Lazy;

.field private isMusicPlayer:Z

.field private final note$delegate:Lkotlin/Lazy;

.field private final paint$delegate:Lkotlin/Lazy;

.field private progress:I

.field private progressBar:Ljava/lang/String;

.field private progressBg:Ljava/lang/String;

.field private progressDot:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Lcom/innioasis/y1/utils/CoverView$defaultCover$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/CoverView$defaultCover$2;-><init>(Lcom/innioasis/y1/utils/CoverView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->defaultCover$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/innioasis/y1/utils/CoverView$note$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/CoverView$note$2;-><init>(Lcom/innioasis/y1/utils/CoverView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->note$delegate:Lkotlin/Lazy;

    .line 32
    invoke-direct {p0}, Lcom/innioasis/y1/utils/CoverView;->getDefaultCover()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->cover:Landroid/graphics/Bitmap;

    .line 34
    sget-object p1, Lcom/innioasis/y1/utils/CoverView$paint$2;->INSTANCE:Lcom/innioasis/y1/utils/CoverView$paint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->paint$delegate:Lkotlin/Lazy;

    const-string p1, "#FFEB95"

    .line 143
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->progressBg:Ljava/lang/String;

    const-string p1, "#3E59FF"

    .line 144
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->progressBar:Ljava/lang/String;

    const-string p1, "#0429FF"

    .line 145
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->progressDot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance p1, Lcom/innioasis/y1/utils/CoverView$defaultCover$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/CoverView$defaultCover$2;-><init>(Lcom/innioasis/y1/utils/CoverView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->defaultCover$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/innioasis/y1/utils/CoverView$note$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/CoverView$note$2;-><init>(Lcom/innioasis/y1/utils/CoverView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->note$delegate:Lkotlin/Lazy;

    .line 32
    invoke-direct {p0}, Lcom/innioasis/y1/utils/CoverView;->getDefaultCover()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->cover:Landroid/graphics/Bitmap;

    .line 34
    sget-object p1, Lcom/innioasis/y1/utils/CoverView$paint$2;->INSTANCE:Lcom/innioasis/y1/utils/CoverView$paint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->paint$delegate:Lkotlin/Lazy;

    const-string p1, "#FFEB95"

    .line 143
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->progressBg:Ljava/lang/String;

    const-string p1, "#3E59FF"

    .line 144
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->progressBar:Ljava/lang/String;

    const-string p1, "#0429FF"

    .line 145
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->progressDot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Lcom/innioasis/y1/utils/CoverView$defaultCover$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/CoverView$defaultCover$2;-><init>(Lcom/innioasis/y1/utils/CoverView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->defaultCover$delegate:Lkotlin/Lazy;

    .line 29
    new-instance p1, Lcom/innioasis/y1/utils/CoverView$note$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/CoverView$note$2;-><init>(Lcom/innioasis/y1/utils/CoverView;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->note$delegate:Lkotlin/Lazy;

    .line 32
    invoke-direct {p0}, Lcom/innioasis/y1/utils/CoverView;->getDefaultCover()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->cover:Landroid/graphics/Bitmap;

    .line 34
    sget-object p1, Lcom/innioasis/y1/utils/CoverView$paint$2;->INSTANCE:Lcom/innioasis/y1/utils/CoverView$paint$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->paint$delegate:Lkotlin/Lazy;

    const-string p1, "#FFEB95"

    .line 143
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->progressBg:Ljava/lang/String;

    const-string p1, "#3E59FF"

    .line 144
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->progressBar:Ljava/lang/String;

    const-string p1, "#0429FF"

    .line 145
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->progressDot:Ljava/lang/String;

    return-void
.end method

.method private final getDefaultCover()Landroid/graphics/Bitmap;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/innioasis/y1/utils/CoverView;->defaultCover$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-defaultCover>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final getNote()Landroid/graphics/Bitmap;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/innioasis/y1/utils/CoverView;->note$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-note>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/innioasis/y1/utils/CoverView;->paint$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method public static synthetic setData$default(Lcom/innioasis/y1/utils/CoverView;Landroid/graphics/Bitmap;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 124
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/y1/utils/CoverView;->setData(Landroid/graphics/Bitmap;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 42
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 49
    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ef0a3d7    # 0.47f

    mul-float v1, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v2

    invoke-direct {v8, v1, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ea3d70a    # 0.32f

    mul-float v1, v1, v2

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ec7ae14    # 0.39f

    mul-float v9, v2, v3

    .line 52
    new-instance v10, Landroid/graphics/RectF;

    .line 53
    iget v2, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v9

    .line 54
    iget v3, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v9

    .line 55
    iget v4, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v9

    .line 56
    iget v5, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v9

    .line 52
    invoke-direct {v10, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 59
    new-instance v11, Landroid/graphics/RectF;

    .line 60
    iget v2, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v1

    .line 61
    iget v3, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v1

    .line 62
    iget v4, v8, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v1

    .line 63
    iget v5, v8, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v1

    .line 59
    invoke-direct {v11, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 73
    iget v1, v0, Lcom/innioasis/y1/utils/CoverView;->progress:I

    int-to-float v1, v1

    const/high16 v2, 0x43960000    # 300.0f

    mul-float v1, v1, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v12, v1, v3

    sub-float v13, v2, v12

    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/high16 v14, 0x40400000    # 3.0f

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lcom/innioasis/y1/utils/CoverView;->progressBg:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v7, :cond_0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move-object v2, v10

    move v4, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 79
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const/4 v2, 0x2

    int-to-float v2, v2

    mul-float v2, v2, v14

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lcom/innioasis/y1/utils/CoverView;->progressBar:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v7, :cond_1

    const/4 v5, 0x0

    .line 81
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move-object v2, v10

    move v3, v13

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_1
    float-to-double v1, v9

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    neg-float v5, v13

    float-to-double v5, v5

    .line 84
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v5, v5, v3

    const/high16 v3, 0x43b40000    # 360.0f

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    neg-float v3, v9

    float-to-double v3, v3

    .line 85
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    iget-object v6, v0, Lcom/innioasis/y1/utils/CoverView;->progressDot:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz v7, :cond_2

    .line 89
    iget v5, v8, Landroid/graphics/PointF;->x:F

    double-to-float v1, v1

    add-float/2addr v5, v1

    .line 90
    iget v1, v8, Landroid/graphics/PointF;->y:F

    double-to-float v2, v3

    add-float/2addr v1, v2

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070253

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float v2, v2, v14

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    .line 88
    invoke-virtual {v7, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 96
    :cond_2
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 97
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    new-instance v2, Landroid/graphics/BitmapShader;

    iget-object v3, v0, Lcom/innioasis/y1/utils/CoverView;->cover:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 99
    check-cast v2, Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 101
    iget-object v2, v0, Lcom/innioasis/y1/utils/CoverView;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/innioasis/y1/utils/CoverView;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 100
    iput-object v2, v0, Lcom/innioasis/y1/utils/CoverView;->circularCover:Landroid/graphics/Bitmap;

    .line 102
    new-instance v12, Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/innioasis/y1/utils/CoverView;->circularCover:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v12, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    new-instance v13, Landroid/graphics/RectF;

    .line 106
    iget-object v2, v0, Lcom/innioasis/y1/utils/CoverView;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 107
    iget-object v3, v0, Lcom/innioasis/y1/utils/CoverView;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    .line 103
    invoke-direct {v13, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v14, 0x0

    const/high16 v15, 0x43b40000    # 360.0f

    const/16 v16, 0x0

    move-object/from16 v17, v1

    .line 109
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    if-eqz v7, :cond_4

    .line 111
    iget-object v2, v0, Lcom/innioasis/y1/utils/CoverView;->circularCover:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getDefaultCover()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v7, v2, v1, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 113
    :cond_4
    new-instance v2, Landroid/graphics/RectF;

    const v3, 0x3eb6db6e

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    const v3, 0x3e199999    # 0.14999999f

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v3

    const v3, 0x3f60ea0f

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    const v3, 0x3f38af8b

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v3

    .line 113
    invoke-direct {v2, v4, v5, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    if-eqz v7, :cond_5

    .line 120
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getNote()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/utils/CoverView;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v7, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public final setCover(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/innioasis/y1/utils/CoverView;->getDefaultCover()Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->cover:Landroid/graphics/Bitmap;

    .line 140
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/CoverView;->invalidate()V

    return-void
.end method

.method public final setData(Landroid/graphics/Bitmap;I)V
    .locals 0

    if-nez p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/innioasis/y1/utils/CoverView;->getDefaultCover()Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/innioasis/y1/utils/CoverView;->cover:Landroid/graphics/Bitmap;

    if-ltz p2, :cond_2

    const/16 p1, 0x64

    if-le p2, p1, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    iput p2, p0, Lcom/innioasis/y1/utils/CoverView;->progress:I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lcom/innioasis/y1/utils/CoverView;->progress:I

    .line 128
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/CoverView;->invalidate()V

    return-void
.end method

.method public final setProgress(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iput p1, p0, Lcom/innioasis/y1/utils/CoverView;->progress:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 131
    iput p1, p0, Lcom/innioasis/y1/utils/CoverView;->progress:I

    .line 134
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/CoverView;->invalidate()V

    return-void
.end method

.method public final setTemp()V
    .locals 1

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/innioasis/y1/utils/CoverView;->isMusicPlayer:Z

    const-string v0, "#b48484"

    .line 149
    iput-object v0, p0, Lcom/innioasis/y1/utils/CoverView;->progressBg:Ljava/lang/String;

    const-string v0, "#8FFFEC"

    .line 150
    iput-object v0, p0, Lcom/innioasis/y1/utils/CoverView;->progressBar:Ljava/lang/String;

    const-string v0, "#3CFFDE"

    .line 151
    iput-object v0, p0, Lcom/innioasis/y1/utils/CoverView;->progressDot:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/CoverView;->invalidate()V

    return-void
.end method
