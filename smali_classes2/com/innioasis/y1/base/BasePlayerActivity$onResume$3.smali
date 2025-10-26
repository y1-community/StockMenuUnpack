.class final Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;
.super Lkotlin/jvm/internal/Lambda;
.source "BasePlayerActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/base/BasePlayerActivity;->onResume()V
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
.field final synthetic this$0:Lcom/innioasis/y1/base/BasePlayerActivity;


# direct methods
.method public static synthetic $r8$lambda$AMf5ahFEYP4da8Ud7PRG4ReJmj4(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->invoke$lambda-1(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JrHNE52UgCwByU2mX5K-IYiCECQ(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->invoke$lambda-2(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KgW13vmCYwdoJqz3jWsFIgWYn0o(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->invoke$lambda-0(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vcMLaSmskfAVfgp8CIFjfVXojcs(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->invoke$lambda-3(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->aToB:Landroid/widget/ImageView;

    const-string v1, "vb.aToB"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda-1(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->bQuestionMark:Landroid/widget/ImageView;

    const-string v1, "vb.bQuestionMark"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    return-void
.end method

.method private static final invoke$lambda-2(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->aToB:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 572
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->bQuestionMark:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const-string v1, "vb.bQuestionMark"

    if-nez v0, :cond_0

    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->bQuestionMark:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    goto :goto_0

    .line 573
    :cond_0
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->bQuestionMark:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static final invoke$lambda-3(Lcom/innioasis/y1/base/BasePlayerActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->bQuestionMark:Landroid/widget/ImageView;

    const-string v2, "vb.bQuestionMark"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 581
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->aToB:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const-string v1, "vb.aToB"

    if-nez v0, :cond_0

    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->aToB:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    goto :goto_0

    .line 582
    :cond_0
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object p0, p0, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->aToB:Landroid/widget/ImageView;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/innioasis/music/util/Other;->showV(Landroid/view/View;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 548
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 7

    const-wide/16 v0, 0x3e8

    :cond_0
    :goto_0
    move-wide v2, v0

    .line 550
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-static {v4}, Lcom/innioasis/y1/base/BasePlayerActivity;->access$getAbRepeatThreadFlag$p(Lcom/innioasis/y1/base/BasePlayerActivity;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 552
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 553
    sget-object v4, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v4}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/innioasis/y1/service/PlayerService;->getRepeatState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    goto :goto_3

    .line 554
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_5

    .line 556
    iget-object v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->aToB:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 557
    iget-object v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    new-instance v3, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3$$ExternalSyntheticLambda2;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/base/BasePlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 561
    :cond_4
    iget-object v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BasePlayerActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityMusicPlayerBinding;->bQuestionMark:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    new-instance v3, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/base/BasePlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    :goto_3
    const/4 v5, 0x1

    if-nez v4, :cond_6

    goto :goto_4

    .line 568
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_7

    const-wide/16 v2, 0x1f4

    .line 570
    iget-object v4, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    new-instance v5, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3$$ExternalSyntheticLambda1;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    invoke-virtual {v4, v5}, Lcom/innioasis/y1/base/BasePlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_7
    :goto_4
    const/4 v5, 0x2

    if-nez v4, :cond_8

    goto :goto_1

    .line 577
    :cond_8
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 579
    iget-object v2, p0, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3;->this$0:Lcom/innioasis/y1/base/BasePlayerActivity;

    new-instance v3, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2}, Lcom/innioasis/y1/base/BasePlayerActivity$onResume$3$$ExternalSyntheticLambda3;-><init>(Lcom/innioasis/y1/base/BasePlayerActivity;)V

    invoke-virtual {v2, v3}, Lcom/innioasis/y1/base/BasePlayerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method
