.class public final Lcom/innioasis/y1_eBook/utils/view/SlideUpKt;
.super Ljava/lang/Object;
.source "slideUp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nslideUp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 slideUp.kt\ncom/innioasis/y1_eBook/utils/view/SlideUpKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,127:1\n1#2:128\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003\u001a\u0012\u0010\u0008\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "delay",
        "",
        "steps",
        "",
        "simulateSwipeDown",
        "",
        "Landroid/view/View;",
        "distance",
        "simulateSwipeUp",
        "app_frGeneralRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final delay:J = 0x23L

.field public static final steps:I = 0x5


# direct methods
.method public static final simulateSwipeDown(Landroid/view/View;I)V
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 86
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v1

    int-to-float v3, v3

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    aget v0, v2, v0

    int-to-float v0, v0

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v0, v2

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-wide v6, v4

    move-wide v8, v4

    move v11, v3

    move v12, v0

    .line 96
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 101
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x5

    :goto_1
    const-wide/16 v6, 0x23

    if-ge v1, v2, :cond_1

    .line 105
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    int-to-float v8, v1

    const/high16 v9, 0x40a00000    # 5.0f

    div-float/2addr v8, v9

    int-to-float v9, p1

    mul-float v8, v8, v9

    add-float v12, v0, v8

    int-to-long v8, v1

    mul-long v8, v8, v6

    add-long/2addr v8, v4

    const/4 v10, 0x2

    const/4 v13, 0x0

    move-wide v6, v4

    move v11, v3

    .line 110
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 115
    invoke-virtual {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 119
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    const-wide/16 v1, 0xd2

    add-long v8, v4, v1

    const/4 v10, 0x1

    int-to-float p1, p1

    add-float v12, v0, p1

    const/4 v13, 0x0

    move-wide v6, v4

    move v11, v3

    .line 121
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    .line 83
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6ed1\u52a8\u8ddd\u79bb\u5fc5\u987b\u4e3a\u6b63\u6570"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static final simulateSwipeUp(Landroid/view/View;I)V
    .locals 14

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 28
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v2, v1

    int-to-float v3, v3

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    aget v0, v2, v0

    int-to-float v0, v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    add-float/2addr v0, v2

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-wide v6, v4

    move-wide v8, v4

    move v11, v3

    move v12, v0

    .line 41
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 46
    invoke-virtual {p0, v2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v2, 0x5

    :goto_1
    const-wide/16 v6, 0x23

    if-ge v1, v2, :cond_1

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, 0x1

    int-to-float v8, v1

    const/high16 v9, 0x40a00000    # 5.0f

    div-float/2addr v8, v9

    int-to-float v9, p1

    mul-float v8, v8, v9

    sub-float v12, v0, v8

    int-to-long v8, v1

    mul-long v8, v8, v6

    add-long/2addr v8, v4

    const/4 v10, 0x2

    const/4 v13, 0x0

    move-wide v6, v4

    move v11, v3

    .line 57
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    .line 62
    invoke-virtual {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 66
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    const-wide/16 v1, 0xd2

    add-long v8, v4, v1

    const/4 v10, 0x1

    int-to-float p1, p1

    sub-float v12, v0, p1

    const/4 v13, 0x0

    move-wide v6, v4

    move v11, v3

    .line 68
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    .line 24
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\u6ed1\u52a8\u8ddd\u79bb\u5fc5\u987b\u4e3a\u6b63\u6570"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method
