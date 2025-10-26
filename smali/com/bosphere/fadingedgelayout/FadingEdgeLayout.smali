.class public Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;
.super Landroid/widget/FrameLayout;
.source "FadingEdgeLayout.java"


# static fields
.field private static final DEFAULT_GRADIENT_SIZE_DP:I = 0x50

.field private static final DIRTY_FLAG_BOTTOM:I = 0x2

.field private static final DIRTY_FLAG_LEFT:I = 0x4

.field private static final DIRTY_FLAG_RIGHT:I = 0x8

.field private static final DIRTY_FLAG_TOP:I = 0x1

.field private static final FADE_COLORS:[I

.field private static final FADE_COLORS_REVERSE:[I

.field public static final FADE_EDGE_BOTTOM:I = 0x2

.field public static final FADE_EDGE_LEFT:I = 0x4

.field public static final FADE_EDGE_RIGHT:I = 0x8

.field public static final FADE_EDGE_TOP:I = 0x1


# instance fields
.field private fadeBottom:Z

.field private fadeLeft:Z

.field private fadeRight:Z

.field private fadeTop:Z

.field private gradientDirtyFlags:I

.field private gradientPaintBottom:Landroid/graphics/Paint;

.field private gradientPaintLeft:Landroid/graphics/Paint;

.field private gradientPaintRight:Landroid/graphics/Paint;

.field private gradientPaintTop:Landroid/graphics/Paint;

.field private gradientRectBottom:Landroid/graphics/Rect;

.field private gradientRectLeft:Landroid/graphics/Rect;

.field private gradientRectRight:Landroid/graphics/Rect;

.field private gradientRectTop:Landroid/graphics/Rect;

.field private gradientSizeBottom:I

.field private gradientSizeLeft:I

.field private gradientSizeRight:I

.field private gradientSizeTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 28
    fill-array-data v1, :array_0

    sput-object v1, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->FADE_COLORS:[I

    new-array v0, v0, [I

    .line 29
    fill-array-data v0, :array_1

    sput-object v0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        -0x1000000
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 44
    invoke-direct {p0, p2, p1}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 49
    invoke-direct {p0, p2, p1}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 6

    .line 54
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x42a00000    # 80.0f

    .line 53
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    if-eqz p1, :cond_8

    .line 57
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout:[I

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 58
    sget p2, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout_fel_edge:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 60
    :goto_0
    iput-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeTop:Z

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 61
    :goto_1
    iput-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeBottom:Z

    and-int/lit8 v2, p2, 0x4

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 62
    :goto_2
    iput-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeLeft:Z

    const/16 v2, 0x8

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_3

    const/4 v4, 0x1

    .line 63
    :cond_3
    iput-boolean v4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeRight:Z

    .line 65
    sget p2, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout_fel_size_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    .line 66
    sget p2, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout_fel_size_bottom:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    .line 67
    sget p2, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout_fel_size_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    .line 68
    sget p2, Lcom/bosphere/fadingedgelayout/R$styleable;->FadingEdgeLayout_fel_size_right:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeRight:I

    .line 70
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeTop:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    if-lez v0, :cond_4

    .line 71
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 73
    :cond_4
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeLeft:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    if-lez v0, :cond_5

    .line 74
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr v0, v5

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 76
    :cond_5
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeBottom:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    if-lez v0, :cond_6

    .line 77
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 79
    :cond_6
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeRight:Z

    if-eqz v0, :cond_7

    if-lez p2, :cond_7

    .line 80
    iget p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/2addr p2, v2

    iput p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 83
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_3

    .line 85
    :cond_8
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeRight:I

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    .line 88
    :goto_3
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 89
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    .line 90
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    .line 92
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 93
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    .line 94
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 95
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    .line 99
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    .line 100
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    .line 101
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    return-void
.end method

.method private initBottomGradient()V
    .locals 13

    .line 246
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 247
    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 248
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingLeft()I

    move-result v2

    .line 249
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 250
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v0, v4

    add-int/2addr v1, v3

    .line 252
    iget-object v4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 253
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v8, v2

    int-to-float v7, v3

    int-to-float v9, v1

    sget-object v10, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    move-object v5, v0

    move v6, v8

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 254
    iget-object v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private initLeftGradient()V
    .locals 13

    .line 234
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 235
    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 236
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingLeft()I

    move-result v1

    .line 237
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v1

    .line 239
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 240
    iget-object v4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 241
    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v6, v1

    int-to-float v9, v2

    int-to-float v8, v0

    sget-object v10, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->FADE_COLORS:[I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    move-object v5, v3

    move v7, v9

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 242
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private initRightGradient()V
    .locals 13

    .line 258
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 259
    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeRight:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 260
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 261
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr v1, v2

    .line 263
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 264
    iget-object v4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 265
    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v6, v2

    int-to-float v9, v0

    int-to-float v8, v1

    sget-object v10, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->FADE_COLORS_REVERSE:[I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    move-object v5, v3

    move v7, v9

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 266
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method private initTopGradient()V
    .locals 13

    .line 222
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 223
    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 224
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingLeft()I

    move-result v1

    .line 225
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingTop()I

    move-result v2

    .line 226
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v0, v2

    .line 228
    iget-object v4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 229
    new-instance v3, Landroid/graphics/LinearGradient;

    int-to-float v8, v1

    int-to-float v7, v2

    int-to-float v9, v0

    sget-object v10, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->FADE_COLORS:[I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v11, 0x0

    move-object v5, v3

    move v6, v8

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 230
    iget-object v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 180
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getHeight()I

    move-result v1

    .line 181
    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeTop:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeBottom:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeLeft:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeRight:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 182
    :goto_1
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_b

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 187
    :cond_2
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x1

    if-ne v1, v3, :cond_3

    and-int/lit8 v0, v0, -0x2

    .line 188
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 189
    invoke-direct {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->initTopGradient()V

    .line 191
    :cond_3
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    and-int/lit8 v0, v0, -0x5

    .line 192
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 193
    invoke-direct {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->initLeftGradient()V

    .line 195
    :cond_4
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    and-int/lit8 v0, v0, -0x3

    .line 196
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 197
    invoke-direct {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->initBottomGradient()V

    .line 199
    :cond_5
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    and-int/lit8 v1, v0, 0x8

    if-ne v1, v5, :cond_6

    and-int/lit8 v0, v0, -0x9

    .line 200
    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 201
    invoke-direct {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->initRightGradient()V

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 205
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 206
    iget-boolean v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeTop:Z

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    if-lez v1, :cond_7

    .line 207
    iget-object v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectTop:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintTop:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 209
    :cond_7
    iget-boolean v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeBottom:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    if-lez v1, :cond_8

    .line 210
    iget-object v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectBottom:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintBottom:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 212
    :cond_8
    iget-boolean v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeLeft:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    if-lez v1, :cond_9

    .line 213
    iget-object v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectLeft:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintLeft:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 215
    :cond_9
    iget-boolean v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeRight:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeRight:I

    if-lez v1, :cond_a

    .line 216
    iget-object v1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientRectRight:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientPaintRight:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 218
    :cond_a
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 183
    :cond_b
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 167
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    .line 169
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x4

    or-int/lit8 p1, p1, 0x8

    .line 170
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_0
    if-eq p2, p4, :cond_1

    .line 173
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x1

    or-int/lit8 p1, p1, 0x2

    .line 174
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    :cond_1
    return-void
.end method

.method public setFadeEdges(ZZZZ)V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeTop:Z

    if-eq v0, p1, :cond_0

    .line 128
    iput-boolean p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeTop:Z

    .line 129
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 131
    :cond_0
    iget-boolean p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeLeft:Z

    if-eq p1, p2, :cond_1

    .line 132
    iput-boolean p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeLeft:Z

    .line 133
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 135
    :cond_1
    iget-boolean p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeBottom:Z

    if-eq p1, p3, :cond_2

    .line 136
    iput-boolean p3, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeBottom:Z

    .line 137
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 139
    :cond_2
    iget-boolean p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeRight:Z

    if-eq p1, p4, :cond_3

    .line 140
    iput-boolean p4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->fadeRight:Z

    .line 141
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 143
    :cond_3
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    if-eqz p1, :cond_4

    .line 144
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method public setFadeSizes(IIII)V
    .locals 1

    .line 105
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    if-eq v0, p1, :cond_0

    .line 106
    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeTop:I

    .line 107
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 109
    :cond_0
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    if-eq p1, p2, :cond_1

    .line 110
    iput p2, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeLeft:I

    .line 111
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 113
    :cond_1
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    if-eq p1, p3, :cond_2

    .line 114
    iput p3, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeBottom:I

    .line 115
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 117
    :cond_2
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeRight:I

    if-eq p1, p4, :cond_3

    .line 118
    iput p4, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientSizeRight:I

    .line 119
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 121
    :cond_3
    iget p1, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    if-eqz p1, :cond_4

    .line 122
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingLeft()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 151
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingTop()I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 154
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingRight()I

    move-result v0

    if-eq v0, p3, :cond_2

    .line 157
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->getPaddingBottom()I

    move-result v0

    if-eq v0, p4, :cond_3

    .line 160
    iget v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/bosphere/fadingedgelayout/FadingEdgeLayout;->gradientDirtyFlags:I

    .line 162
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method
