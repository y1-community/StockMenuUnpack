.class final Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ThemeListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity;->longTop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 560
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 9

    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 556
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getMark()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    .line 557
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0, p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$setTheme(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;)V

    goto/16 :goto_0

    .line 547
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getMark()I

    move-result p1

    if-nez p1, :cond_2

    .line 549
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v1, 0x7f1101b4

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 552
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$rename(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V

    goto/16 :goto_0

    .line 541
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1, v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Z)V

    .line 542
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$allSelect(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V

    .line 543
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/view/ThemeOptionsDialog;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->dismiss()V

    goto/16 :goto_0

    .line 535
    :cond_4
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1, v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Z)V

    .line 536
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/view/ThemeOptionsDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->dismiss()V

    .line 537
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 472
    :cond_6
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getMultiSelectIndexes$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getMark()I

    move-result p1

    if-nez p1, :cond_7

    .line 474
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v1, 0x7f1101b5

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 478
    :cond_7
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v0, 0x7f1100c0

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.is_delete)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getMultiSelectIndexes$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 480
    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    .line 481
    invoke-virtual {v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v2}, Lcom/innioasis/y1/theme/ThemeManager;->getThemeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 483
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v0, 0x7f1101b6

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.theme\u2026ete_include_current_tips)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_9
    move-object v2, p1

    .line 487
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    move-object v4, v0

    check-cast v4, Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    const v1, 0x7f110075

    .line 490
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(R.string.confirm)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f11006e

    .line 491
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "getString(R.string.cancle)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 492
    new-instance v1, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1;

    invoke-direct {v1, v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1$1$1;-><init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V

    move-object v6, v1

    check-cast v6, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const-string v3, ""

    move-object v1, p1

    .line 488
    invoke-virtual/range {v1 .. v6}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;)V

    .line 531
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    goto :goto_0

    .line 468
    :cond_a
    iget-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$closeSubmenu(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V

    :cond_b
    :goto_0
    return-void
.end method
