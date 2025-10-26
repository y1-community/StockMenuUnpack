.class public Lme/wcy/lrcview/LrcView;
.super Landroid/view/View;
.source "LrcView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/wcy/lrcview/LrcView$OnTapListener;,
        Lme/wcy/lrcview/LrcView$OnPlayClickListener;
    }
.end annotation


# static fields
.field private static final ADJUST_DURATION:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "LrcView"

.field private static final TIMELINE_KEEP_TIME:J = 0xfa0L


# instance fields
.field private hideTimelineRunnable:Ljava/lang/Runnable;

.field private isFling:Z

.field private isShowTimeline:Z

.field private isTouching:Z

.field private mAnimationDuration:J

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentLine:I

.field private mCurrentTextColor:I

.field private mCurrentTextSize:F

.field private mDefaultLabel:Ljava/lang/String;

.field private mDividerHeight:F

.field private mDrawableWidth:I

.field private mFlag:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLrcEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/wcy/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLrcPadding:F

.field private mLrcPaint:Landroid/text/TextPaint;

.field private mNormalTextColor:I

.field private mNormalTextSize:F

.field private mOffset:F

.field private mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

.field private mOnTapListener:Lme/wcy/lrcview/LrcView$OnTapListener;

.field private mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mScroller:Landroid/widget/Scroller;

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mTextGravity:I

.field private mTimeFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mTimePaint:Landroid/text/TextPaint;

.field private mTimeTextColor:I

.field private mTimeTextWidth:I

.field private mTimelineColor:I

.field private mTimelineTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lme/wcy/lrcview/LrcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2, v0}, Lme/wcy/lrcview/LrcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    .line 56
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    .line 57
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    .line 542
    new-instance p1, Lme/wcy/lrcview/LrcView$4;

    invoke-direct {p1, p0}, Lme/wcy/lrcview/LrcView$4;-><init>(Lme/wcy/lrcview/LrcView;)V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 612
    new-instance p1, Lme/wcy/lrcview/LrcView$5;

    invoke-direct {p1, p0}, Lme/wcy/lrcview/LrcView$5;-><init>(Lme/wcy/lrcview/LrcView;)V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    .line 127
    invoke-direct {p0, p2}, Lme/wcy/lrcview/LrcView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lme/wcy/lrcview/LrcView;)Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getFlag()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnTapListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mOnTapListener:Lme/wcy/lrcview/LrcView$OnTapListener;

    return-object p0
.end method

.method static synthetic access$1000(Lme/wcy/lrcview/LrcView;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lme/wcy/lrcview/LrcView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 50
    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1200(Lme/wcy/lrcview/LrcView;)I
    .locals 0

    .line 50
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getCenterLine()I

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lme/wcy/lrcview/LrcView;)I
    .locals 0

    .line 50
    iget p0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    return p0
.end method

.method static synthetic access$1302(Lme/wcy/lrcview/LrcView;I)I
    .locals 0

    .line 50
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    return p1
.end method

.method static synthetic access$1400(Lme/wcy/lrcview/LrcView;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(I)V

    return-void
.end method

.method static synthetic access$1500(Lme/wcy/lrcview/LrcView;Ljava/util/List;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lme/wcy/lrcview/LrcView;->onLrcLoaded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lme/wcy/lrcview/LrcView;Ljava/lang/Object;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lme/wcy/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Lme/wcy/lrcview/LrcView;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isTouching:Z

    return p1
.end method

.method static synthetic access$300(Lme/wcy/lrcview/LrcView;)Ljava/lang/Runnable;
    .locals 0

    .line 50
    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lme/wcy/lrcview/LrcView;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    return p0
.end method

.method static synthetic access$402(Lme/wcy/lrcview/LrcView;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    return p1
.end method

.method static synthetic access$500(Lme/wcy/lrcview/LrcView;)Landroid/widget/Scroller;
    .locals 0

    .line 50
    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$600(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnPlayClickListener;
    .locals 0

    .line 50
    iget-object p0, p0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    return-object p0
.end method

.method static synthetic access$700(Lme/wcy/lrcview/LrcView;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    return p0
.end method

.method static synthetic access$702(Lme/wcy/lrcview/LrcView;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    return p1
.end method

.method static synthetic access$800(Lme/wcy/lrcview/LrcView;)F
    .locals 0

    .line 50
    iget p0, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    return p0
.end method

.method static synthetic access$802(Lme/wcy/lrcview/LrcView;F)F
    .locals 0

    .line 50
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    return p1
.end method

.method static synthetic access$816(Lme/wcy/lrcview/LrcView;F)F
    .locals 1

    .line 50
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    return v0
.end method

.method static synthetic access$900(Lme/wcy/lrcview/LrcView;I)F
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p0

    return p0
.end method

.method private adjustCenter()V
    .locals 3

    .line 694
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getCenterLine()I

    move-result v0

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;F)V
    .locals 2

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 521
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mLrcPadding:F

    invoke-virtual {p2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    sub-float/2addr p3, v1

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 522
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 523
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private endAnimation()V
    .locals 1

    .line 726
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method private findShowLine(J)I
    .locals 7

    .line 736
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-gt v2, v0, :cond_3

    add-int v3, v2, v0

    .line 738
    div-int/lit8 v3, v3, 0x2

    .line 739
    iget-object v4, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v4}, Lme/wcy/lrcview/LrcEntry;->getTime()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    add-int/lit8 v3, v3, -0x1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v3, 0x1

    .line 744
    iget-object v4, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v4}, Lme/wcy/lrcview/LrcEntry;->getTime()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_0

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method private getCenterLine()I
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 761
    :goto_0
    iget-object v3, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 762
    iget v3, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    .line 763
    iget v1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move v2, v1

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getFlag()Ljava/lang/Object;
    .locals 1

    .line 807
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mFlag:Ljava/lang/Object;

    return-object v0
.end method

.method private getLrcWidth()F
    .locals 3

    .line 792
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lme/wcy/lrcview/LrcView;->mLrcPadding:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private getOffset(I)F
    .locals 6

    .line 775
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcEntry;->getOffset()F

    move-result v0

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 776
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v1, 0x1

    :goto_0
    if-gt v1, p1, :cond_0

    .line 778
    iget-object v2, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v2}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v2

    .line 779
    iget-object v3, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v3}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v3

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 780
    iget v5, p0, Lme/wcy/lrcview/LrcView;->mDividerHeight:F

    add-float/2addr v2, v5

    int-to-float v3, v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    sub-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 782
    :cond_0
    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v1, v0}, Lme/wcy/lrcview/LrcEntry;->setOffset(F)V

    .line 785
    :cond_1
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {p1}, Lme/wcy/lrcview/LrcEntry;->getOffset()F

    move-result p1

    return p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7

    .line 131
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lme/wcy/lrcview/R$styleable;->LrcView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 132
    sget v0, Lme/wcy/lrcview/R$styleable;->LrcView_lrcTextSize:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/wcy/lrcview/R$dimen;->lrc_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    .line 133
    sget v0, Lme/wcy/lrcview/R$styleable;->LrcView_lrcNormalTextSize:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/wcy/lrcview/R$dimen;->lrc_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 135
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    .line 138
    :cond_0
    sget v0, Lme/wcy/lrcview/R$styleable;->LrcView_lrcDividerHeight:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/wcy/lrcview/R$dimen;->lrc_divider_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mDividerHeight:F

    .line 139
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lme/wcy/lrcview/R$integer;->lrc_animation_duration:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 140
    sget v2, Lme/wcy/lrcview/R$styleable;->LrcView_lrcAnimationDuration:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lme/wcy/lrcview/LrcView;->mAnimationDuration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    int-to-long v2, v0

    .line 141
    :cond_1
    iput-wide v2, p0, Lme/wcy/lrcview/LrcView;->mAnimationDuration:J

    .line 142
    sget v0, Lme/wcy/lrcview/R$styleable;->LrcView_lrcNormalTextColor:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/wcy/lrcview/R$color;->lrc_normal_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mNormalTextColor:I

    .line 143
    sget v0, Lme/wcy/lrcview/R$styleable;->LrcView_lrcCurrentTextColor:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/wcy/lrcview/R$color;->lrc_current_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextColor:I

    .line 144
    sget v0, Lme/wcy/lrcview/R$styleable;->LrcView_lrcTimelineTextColor:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/wcy/lrcview/R$color;->lrc_timeline_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mTimelineTextColor:I

    .line 145
    sget v0, Lme/wcy/lrcview/R$styleable;->LrcView_lrcLabel:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/wcy/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lme/wcy/lrcview/R$string;->lrc_label:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lme/wcy/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    .line 147
    sget v0, Lme/wcy/lrcview/R$styleable;->LrcView_lrcPadding:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mLrcPadding:F

    .line 148
    sget v0, Lme/wcy/lrcview/R$styleable;->LrcView_lrcTimelineColor:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/wcy/lrcview/R$color;->lrc_timeline_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mTimelineColor:I

    .line 149
    sget v0, Lme/wcy/lrcview/R$styleable;->LrcView_lrcTimelineHeight:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/wcy/lrcview/R$dimen;->lrc_timeline_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 150
    sget v1, Lme/wcy/lrcview/R$styleable;->LrcView_lrcPlayDrawable:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lme/wcy/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 151
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lme/wcy/lrcview/R$drawable;->lrc_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lme/wcy/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    sget v1, Lme/wcy/lrcview/R$styleable;->LrcView_lrcTimeTextColor:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/wcy/lrcview/R$color;->lrc_time_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lme/wcy/lrcview/LrcView;->mTimeTextColor:I

    .line 153
    sget v1, Lme/wcy/lrcview/R$styleable;->LrcView_lrcTimeTextSize:I

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lme/wcy/lrcview/R$dimen;->lrc_time_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 154
    sget v2, Lme/wcy/lrcview/R$styleable;->LrcView_lrcTextGravity:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lme/wcy/lrcview/LrcView;->mTextGravity:I

    .line 156
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lme/wcy/lrcview/R$dimen;->lrc_drawable_width:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mDrawableWidth:I

    .line 159
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lme/wcy/lrcview/R$dimen;->lrc_time_width:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mTimeTextWidth:I

    .line 161
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 162
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v4, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 163
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 164
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    sget-object v4, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 165
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 166
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 167
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 169
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 170
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 171
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mTimeFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 173
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p1, v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 174
    invoke-virtual {p1, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 175
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private initEntryList()V
    .locals 5

    .line 666
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 670
    :cond_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/wcy/lrcview/LrcEntry;

    .line 671
    iget-object v2, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getLrcWidth()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lme/wcy/lrcview/LrcView;->mTextGravity:I

    invoke-virtual {v1, v2, v3, v4}, Lme/wcy/lrcview/LrcEntry;->init(Landroid/text/TextPaint;II)V

    goto :goto_0

    .line 674
    :cond_1
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    :cond_2
    :goto_1
    return-void
.end method

.method private initPlayDrawable()V
    .locals 5

    .line 658
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mTimeTextWidth:I

    iget v1, p0, Lme/wcy/lrcview/LrcView;->mDrawableWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 659
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lme/wcy/lrcview/LrcView;->mDrawableWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    add-int v3, v0, v2

    add-int/2addr v2, v1

    .line 662
    iget-object v4, p0, Lme/wcy/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private onLrcLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lme/wcy/lrcview/LrcEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 647
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 651
    :cond_0
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 653
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    .line 654
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->invalidate()V

    return-void
.end method

.method private reset()V
    .locals 2

    .line 678
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->endAnimation()V

    .line 679
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    .line 680
    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    .line 681
    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isTouching:Z

    .line 682
    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    .line 683
    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lme/wcy/lrcview/LrcView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 684
    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    .line 685
    iput v1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    .line 686
    iput v0, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    .line 687
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->invalidate()V

    return-void
.end method

.method private runOnUi(Ljava/lang/Runnable;)V
    .locals 2

    .line 799
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 800
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 802
    :cond_0
    invoke-virtual {p0, p1}, Lme/wcy/lrcview/LrcView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setFlag(Ljava/lang/Object;)V
    .locals 0

    .line 811
    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mFlag:Ljava/lang/Object;

    return-void
.end method

.method private smoothScrollTo(I)V
    .locals 2

    .line 701
    iget-wide v0, p0, Lme/wcy/lrcview/LrcView;->mAnimationDuration:J

    invoke-direct {p0, p1, v0, v1}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    return-void
.end method

.method private smoothScrollTo(IJ)V
    .locals 3

    .line 708
    invoke-direct {p0, p1}, Lme/wcy/lrcview/LrcView;->getOffset(I)F

    move-result p1

    .line 709
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->endAnimation()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 711
    iget v1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 712
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 713
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 714
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;-><init>(Lme/wcy/lrcview/LrcView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 718
    invoke-static {}, Lme/wcy/lrcview/LrcUtils;->resetDurationScale()V

    .line 719
    iget-object p1, p0, Lme/wcy/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 3

    .line 625
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    .line 627
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->invalidate()V

    .line 630
    :cond_0
    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LrcView"

    const-string v1, "fling finish"

    .line 631
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 632
    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isFling:Z

    .line 633
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isTouching:Z

    if-nez v0, :cond_1

    .line 634
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->adjustCenter()V

    .line 635
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Lme/wcy/lrcview/LrcView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public hasLrc()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$loadLrc$1$me-wcy-lrcview-LrcView(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 296
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->reset()V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "#"

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    .line 305
    new-instance v1, Lme/wcy/lrcview/LrcView$1;

    invoke-direct {v1, p0, v0}, Lme/wcy/lrcview/LrcView$1;-><init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 318
    invoke-virtual {v1, v0}, Lme/wcy/lrcview/LrcView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method synthetic lambda$loadLrc$2$me-wcy-lrcview-LrcView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 339
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->reset()V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "#"

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    .line 348
    new-instance v1, Lme/wcy/lrcview/LrcView$2;

    invoke-direct {v1, p0, v0}, Lme/wcy/lrcview/LrcView$2;-><init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 361
    invoke-virtual {v1, v0}, Lme/wcy/lrcview/LrcView$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method synthetic lambda$setLabel$0$me-wcy-lrcview-LrcView(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->invalidate()V

    return-void
.end method

.method synthetic lambda$smoothScrollTo$4$me-wcy-lrcview-LrcView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 715
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    .line 716
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->invalidate()V

    return-void
.end method

.method synthetic lambda$updateTime$3$me-wcy-lrcview-LrcView(J)V
    .locals 1

    .line 414
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-direct {p0, p1, p2}, Lme/wcy/lrcview/LrcView;->findShowLine(J)I

    move-result p1

    .line 419
    iget p2, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    if-eq p1, p2, :cond_2

    .line 420
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    .line 421
    iget-boolean p2, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-nez p2, :cond_1

    .line 422
    invoke-direct {p0, p1}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(I)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadLrc(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, p1, v0}, Lme/wcy/lrcview/LrcView;->loadLrc(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public loadLrc(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 295
    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;-><init>(Lme/wcy/lrcview/LrcView;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadLrc(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, p1, v0}, Lme/wcy/lrcview/LrcView;->loadLrc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadLrc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 338
    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda4;-><init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadLrcByUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "utf-8"

    .line 371
    invoke-virtual {p0, p1, v0}, Lme/wcy/lrcview/LrcView;->loadLrcByUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadLrcByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    .line 383
    new-instance v1, Lme/wcy/lrcview/LrcView$3;

    invoke-direct {v1, p0, v0}, Lme/wcy/lrcview/LrcView$3;-><init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 395
    invoke-virtual {v1, v0}, Lme/wcy/lrcview/LrcView$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 642
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lme/wcy/lrcview/LrcView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 643
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrag(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 438
    invoke-virtual {p0, p1, p2}, Lme/wcy/lrcview/LrcView;->updateTime(J)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 455
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 457
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 460
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    iget-object v1, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v2, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextColor:I

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 463
    new-instance v1, Landroid/text/StaticLayout;

    iget-object v4, p0, Lme/wcy/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    .line 464
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getLrcWidth()F

    move-result v2

    float-to-int v6, v2

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    int-to-float v0, v0

    .line 465
    invoke-direct {p0, p1, v1, v0}, Lme/wcy/lrcview/LrcView;->drawText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;F)V

    return-void

    .line 469
    :cond_0
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->getCenterLine()I

    move-result v1

    .line 471
    iget-boolean v2, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_1

    .line 472
    iget-object v2, p0, Lme/wcy/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 474
    iget-object v2, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    iget v4, p0, Lme/wcy/lrcview/LrcView;->mTimelineColor:I

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 475
    iget v2, p0, Lme/wcy/lrcview/LrcView;->mTimeTextWidth:I

    int-to-float v5, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getWidth()I

    move-result v2

    iget v4, p0, Lme/wcy/lrcview/LrcView;->mTimeTextWidth:I

    sub-int/2addr v2, v4

    int-to-float v7, v2

    iget-object v9, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    move-object v4, p1

    move v6, v0

    move v8, v0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 477
    iget-object v2, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    iget v4, p0, Lme/wcy/lrcview/LrcView;->mTimeTextColor:I

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 478
    iget-object v2, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v2}, Lme/wcy/lrcview/LrcEntry;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lme/wcy/lrcview/LrcUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getWidth()I

    move-result v4

    iget v5, p0, Lme/wcy/lrcview/LrcView;->mTimeTextWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 480
    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mTimeFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v6, p0, Lme/wcy/lrcview/LrcView;->mTimeFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v5, v6

    div-float/2addr v5, v3

    sub-float/2addr v0, v5

    .line 481
    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 484
    :cond_1
    iget v0, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 487
    :goto_0
    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_7

    .line 488
    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v5}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v5

    if-lez v0, :cond_2

    .line 490
    iget-object v6, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    add-int/lit8 v7, v0, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v6}, Lme/wcy/lrcview/LrcEntry;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    .line 491
    iget v7, p0, Lme/wcy/lrcview/LrcView;->mDividerHeight:F

    add-float/2addr v6, v7

    int-to-float v7, v5

    div-float/2addr v7, v3

    add-float/2addr v6, v7

    add-float/2addr v4, v6

    :cond_2
    int-to-float v5, v5

    div-float v6, v5, v3

    sub-float v6, v4, v6

    .line 494
    iget v7, p0, Lme/wcy/lrcview/LrcView;->mOffset:F

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    cmpg-float v5, v5, v2

    if-ltz v5, :cond_6

    .line 496
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v6, v5

    if-lez v5, :cond_3

    goto :goto_2

    .line 501
    :cond_3
    iget v5, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    if-ne v0, v5, :cond_4

    .line 502
    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v6, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 503
    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v6, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextColor:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 504
    :cond_4
    iget-boolean v5, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v5, :cond_5

    if-ne v0, v1, :cond_5

    .line 505
    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v6, p0, Lme/wcy/lrcview/LrcView;->mTimelineTextColor:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 507
    :cond_5
    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v6, p0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 508
    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v6, p0, Lme/wcy/lrcview/LrcView;->mNormalTextColor:I

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 510
    :goto_1
    iget-object v5, p0, Lme/wcy/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v5}, Lme/wcy/lrcview/LrcEntry;->getStaticLayout()Landroid/text/StaticLayout;

    move-result-object v5

    invoke-direct {p0, p1, v5, v4}, Lme/wcy/lrcview/LrcView;->drawText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;F)V

    :cond_6
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 443
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 445
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->initPlayDrawable()V

    .line 446
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->initEntryList()V

    .line 447
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 448
    iget p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentLine:I

    const-wide/16 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lme/wcy/lrcview/LrcView;->smoothScrollTo(IJ)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 528
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 529
    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isTouching:Z

    .line 531
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v0, :cond_1

    .line 532
    invoke-direct {p0}, Lme/wcy/lrcview/LrcView;->adjustCenter()V

    .line 533
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Lme/wcy/lrcview/LrcView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 536
    :cond_1
    iget-object v0, p0, Lme/wcy/lrcview/LrcView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCurrentColor(I)V
    .locals 0

    .line 204
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextColor:I

    .line 205
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->postInvalidate()V

    return-void
.end method

.method public setCurrentTextSize(F)V
    .locals 0

    .line 197
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mCurrentTextSize:F

    return-void
.end method

.method public setDraggable(ZLme/wcy/lrcview/LrcView$OnPlayClickListener;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 243
    iput-object p2, p0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    goto :goto_0

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "if draggable == true, onPlayClickListener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    :goto_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 273
    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda3;-><init>(Lme/wcy/lrcview/LrcView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 182
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mNormalTextColor:I

    .line 183
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->postInvalidate()V

    return-void
.end method

.method public setNormalTextSize(F)V
    .locals 0

    .line 190
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mNormalTextSize:F

    return-void
.end method

.method public setOnPlayClickListener(Lme/wcy/lrcview/LrcView$OnPlayClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    return-void
.end method

.method public setOnTapListener(Lme/wcy/lrcview/LrcView$OnTapListener;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lme/wcy/lrcview/LrcView;->mOnTapListener:Lme/wcy/lrcview/LrcView$OnTapListener;

    return-void
.end method

.method public setTimeTextColor(I)V
    .locals 0

    .line 228
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mTimeTextColor:I

    .line 229
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->postInvalidate()V

    return-void
.end method

.method public setTimelineColor(I)V
    .locals 0

    .line 220
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mTimelineColor:I

    .line 221
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->postInvalidate()V

    return-void
.end method

.method public setTimelineTextColor(I)V
    .locals 0

    .line 212
    iput p1, p0, Lme/wcy/lrcview/LrcView;->mTimelineTextColor:I

    .line 213
    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->postInvalidate()V

    return-void
.end method

.method public updateTime(J)V
    .locals 1

    .line 413
    new-instance v0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;-><init>(Lme/wcy/lrcview/LrcView;J)V

    invoke-direct {p0, v0}, Lme/wcy/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    return-void
.end method
