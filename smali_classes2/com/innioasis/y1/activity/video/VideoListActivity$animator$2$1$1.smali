.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VideoListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2;->invoke()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "com/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "lastIndex",
        "",
        "toggle",
        "",
        "onAnimationRepeat",
        "",
        "animation",
        "Landroid/animation/Animator;",
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
.field private lastIndex:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

.field private toggle:Z


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    .line 1379
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1385
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    return-void

    .line 1389
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getItemType$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getItemType$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)I

    move-result p1

    const/16 v1, 0x16

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0x7f0a00f8

    goto :goto_1

    :cond_2
    :goto_0
    const p1, 0x7f0a02d1

    .line 1395
    :goto_1
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    iget-object v2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getViewByPosition(II)Landroid/view/View;

    move-result-object p1

    .line 1397
    iget-boolean v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->toggle:Z

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->toggle:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    .line 1399
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v2, 0x7f08014a

    invoke-virtual {v1, p1, v2, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 1400
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->lastIndex:I

    goto :goto_2

    .line 1402
    :cond_4
    iget v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->lastIndex:I

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 1403
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    iget v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2$1$1;->lastIndex:I

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyItemChanged(I)V

    :cond_5
    if-eqz p1, :cond_6

    .line 1405
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f080144

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :cond_6
    :goto_2
    return-void
.end method
