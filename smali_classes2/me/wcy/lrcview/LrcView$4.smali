.class Lme/wcy/lrcview/LrcView$4;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LrcView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/wcy/lrcview/LrcView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isTouchForStopFling:Z

.field final synthetic this$0:Lme/wcy/lrcview/LrcView;


# direct methods
.method constructor <init>(Lme/wcy/lrcview/LrcView;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 544
    iput-boolean p1, p0, Lme/wcy/lrcview/LrcView$4;->isTouchForStopFling:Z

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 548
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-virtual {p1}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 549
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$100(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnTapListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 551
    :cond_1
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1, v1}, Lme/wcy/lrcview/LrcView;->access$202(Lme/wcy/lrcview/LrcView;Z)Z

    .line 552
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$300(Lme/wcy/lrcview/LrcView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lme/wcy/lrcview/LrcView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 553
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$400(Lme/wcy/lrcview/LrcView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 554
    iput-boolean v1, p0, Lme/wcy/lrcview/LrcView$4;->isTouchForStopFling:Z

    .line 555
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$500(Lme/wcy/lrcview/LrcView;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 557
    :cond_2
    iput-boolean v0, p0, Lme/wcy/lrcview/LrcView$4;->isTouchForStopFling:Z

    .line 559
    :goto_0
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$600(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$100(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnTapListener;

    move-result-object p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9

    .line 580
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$600(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$700(Lme/wcy/lrcview/LrcView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lme/wcy/lrcview/LrcView;->access$402(Lme/wcy/lrcview/LrcView;Z)Z

    .line 585
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$300(Lme/wcy/lrcview/LrcView;)Ljava/lang/Runnable;

    move-result-object p3

    invoke-virtual {p1, p3}, Lme/wcy/lrcview/LrcView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 586
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$500(Lme/wcy/lrcview/LrcView;)Landroid/widget/Scroller;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$800(Lme/wcy/lrcview/LrcView;)F

    move-result p1

    float-to-int v2, p1

    const/4 v3, 0x0

    float-to-int v4, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$1000(Lme/wcy/lrcview/LrcView;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p1, p3}, Lme/wcy/lrcview/LrcView;->access$900(Lme/wcy/lrcview/LrcView;I)F

    move-result p1

    float-to-int v7, p1

    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lme/wcy/lrcview/LrcView;->access$900(Lme/wcy/lrcview/LrcView;I)F

    move-result p1

    float-to-int v8, p1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    return p2

    .line 589
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1

    .line 581
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 564
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$600(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$700(Lme/wcy/lrcview/LrcView;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    .line 568
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1, p2}, Lme/wcy/lrcview/LrcView;->access$702(Lme/wcy/lrcview/LrcView;Z)Z

    goto :goto_0

    .line 570
    :cond_1
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    neg-float p3, p4

    invoke-static {p1, p3}, Lme/wcy/lrcview/LrcView;->access$816(Lme/wcy/lrcview/LrcView;F)F

    .line 571
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$800(Lme/wcy/lrcview/LrcView;)F

    move-result p3

    iget-object p4, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lme/wcy/lrcview/LrcView;->access$900(Lme/wcy/lrcview/LrcView;I)F

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {p1, p3}, Lme/wcy/lrcview/LrcView;->access$802(Lme/wcy/lrcview/LrcView;F)F

    .line 572
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$800(Lme/wcy/lrcview/LrcView;)F

    move-result p3

    iget-object p4, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p4}, Lme/wcy/lrcview/LrcView;->access$1000(Lme/wcy/lrcview/LrcView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p4, v0}, Lme/wcy/lrcview/LrcView;->access$900(Lme/wcy/lrcview/LrcView;I)F

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(FF)F

    move-result p3

    invoke-static {p1, p3}, Lme/wcy/lrcview/LrcView;->access$802(Lme/wcy/lrcview/LrcView;F)F

    .line 574
    :goto_0
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-virtual {p1}, Lme/wcy/lrcview/LrcView;->invalidate()V

    return p2

    .line 565
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 594
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0}, Lme/wcy/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$600(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$700(Lme/wcy/lrcview/LrcView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$1100(Lme/wcy/lrcview/LrcView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$1200(Lme/wcy/lrcview/LrcView;)I

    move-result v0

    .line 596
    iget-object v1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v1}, Lme/wcy/lrcview/LrcView;->access$1000(Lme/wcy/lrcview/LrcView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/wcy/lrcview/LrcEntry;

    invoke-virtual {v1}, Lme/wcy/lrcview/LrcEntry;->getTime()J

    move-result-wide v1

    .line 598
    iget-object v3, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v3}, Lme/wcy/lrcview/LrcView;->access$600(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v3}, Lme/wcy/lrcview/LrcView;->access$600(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    move-result-object v3

    iget-object v4, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-interface {v3, v4, v1, v2}, Lme/wcy/lrcview/LrcView$OnPlayClickListener;->onPlayClick(Lme/wcy/lrcview/LrcView;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lme/wcy/lrcview/LrcView;->access$702(Lme/wcy/lrcview/LrcView;Z)Z

    .line 600
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1}, Lme/wcy/lrcview/LrcView;->access$300(Lme/wcy/lrcview/LrcView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lme/wcy/lrcview/LrcView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 601
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {p1, v0}, Lme/wcy/lrcview/LrcView;->access$1302(Lme/wcy/lrcview/LrcView;I)I

    .line 602
    iget-object p1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-virtual {p1}, Lme/wcy/lrcview/LrcView;->invalidate()V

    const/4 p1, 0x1

    return p1

    .line 605
    :cond_0
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$100(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnTapListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lme/wcy/lrcview/LrcView$4;->isTouchForStopFling:Z

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-static {v0}, Lme/wcy/lrcview/LrcView;->access$100(Lme/wcy/lrcview/LrcView;)Lme/wcy/lrcview/LrcView$OnTapListener;

    move-result-object v0

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$4;->this$0:Lme/wcy/lrcview/LrcView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lme/wcy/lrcview/LrcView$OnTapListener;->onTap(Lme/wcy/lrcview/LrcView;FF)V

    .line 608
    :cond_1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
