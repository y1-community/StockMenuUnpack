.class public final Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchVideoActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2;->invoke()Landroid/animation/ValueAnimator;
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
        "com/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1",
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

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

.field private toggle:Z


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    .line 438
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    return-void

    .line 447
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->getSelectPosition()I

    move-result p1

    .line 450
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 452
    :goto_0
    iget-boolean v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1;->toggle:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1;->toggle:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    .line 454
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v3, 0x7f08014a

    invoke-virtual {v1, v0, v3, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    .line 455
    :cond_2
    iput p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1;->lastIndex:I

    goto :goto_1

    .line 457
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1;->this$0:Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/SearchVideoActivity;)Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;

    move-result-object p1

    iget v1, p0, Lcom/innioasis/y1/activity/video/SearchVideoActivity$animator$2$1$1;->lastIndex:I

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/activity/video/SearchVideoActivity$MyAdapter;->notifyItemChanged(I)V

    if-eqz v0, :cond_4

    .line 458
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f080144

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :cond_4
    :goto_1
    return-void
.end method
