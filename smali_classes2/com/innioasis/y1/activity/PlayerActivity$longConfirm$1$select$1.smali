.class final Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1;->select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $selectIndex:I

.field final synthetic this$0:Lcom/innioasis/y1/activity/PlayerActivity;


# direct methods
.method public static synthetic $r8$lambda$EtsdffIFxgg8H6mx6Kt8ohz3c6Y(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->invoke$lambda-1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eHvBbfZwn0aqrMRqpgJB-SbawRo(ILcom/innioasis/y1/activity/PlayerActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->invoke$lambda-0(ILcom/innioasis/y1/activity/PlayerActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k5NqlwuJa-i21XW-wypznId8SJc(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->invoke$lambda-2(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/y1/activity/PlayerActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    iput p2, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->$selectIndex:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(ILcom/innioasis/y1/activity/PlayerActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 125
    invoke-static {p1}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/innioasis/music/adapter/MyBaseAdapter;->allSelect$default(Lcom/innioasis/music/adapter/MyBaseAdapter;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static final invoke$lambda-1(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 135
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f08014a

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method private static final invoke$lambda-2(Landroid/view/View;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 139
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f080144

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    iget v1, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->$selectIndex:I

    new-instance v2, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1$$ExternalSyntheticLambda0;-><init>(ILcom/innioasis/y1/activity/PlayerActivity;)V

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v2}, Lcom/innioasis/y1/activity/PlayerActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/PlayerActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v2}, Lcom/innioasis/y1/activity/PlayerActivity;->access$getAdapter$p(Lcom/innioasis/y1/activity/PlayerActivity;)Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/innioasis/music/adapter/MainAdapter;->getPosition()I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 131
    :goto_1
    iget-object v3, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/PlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;->lvAudiobooks:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/PlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;

    iget-object v4, v4, Lcom/innioasis/y1/databinding/ActivityPlayerBinding;->lvAudiobooks:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    invoke-static {v3}, Lcom/innioasis/y1/activity/PlayerActivity;->access$isMultiSelect$p(Lcom/innioasis/y1/activity/PlayerActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    .line 134
    iget-object v3, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    new-instance v4, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/activity/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 138
    :cond_1
    iget-object v3, p0, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1;->this$0:Lcom/innioasis/y1/activity/PlayerActivity;

    new-instance v4, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/innioasis/y1/activity/PlayerActivity$longConfirm$1$select$1$$ExternalSyntheticLambda2;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/activity/PlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    xor-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x1f4

    .line 143
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :cond_2
    return-void
.end method
