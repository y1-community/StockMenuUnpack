.class public final Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;
.super Ljava/lang/Object;
.source "ThemeListActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/utils/InputMethodDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity;->rename()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0016\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/y1/activity/theme/ThemeListActivity$rename$1",
        "Lcom/innioasis/y1/utils/InputMethodDialog$Callback;",
        "onBack",
        "",
        "onInit",
        "valueLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
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
.field final synthetic $item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

.field final synthetic $name:Ljava/lang/String;

.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Ljava/lang/String;Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    iput-object p2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 8

    .line 570
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getNameLiveData$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->$name:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/view/ThemeOptionsDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->dismiss()V

    goto/16 :goto_0

    .line 574
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 576
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const v3, 0x7f110154

    .line 577
    invoke-virtual {v0, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 575
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 579
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 580
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/view/ThemeOptionsDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->dismiss()V

    goto/16 :goto_0

    .line 581
    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v1, v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$fileIsDuplicate(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 583
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const v3, 0x7f110153

    .line 584
    invoke-virtual {v0, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 582
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 586
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 587
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/view/ThemeOptionsDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->dismiss()V

    goto :goto_0

    .line 589
    :cond_3
    new-instance v7, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    const v3, 0x7f1101af

    .line 590
    invoke-virtual {v1, v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.sure_to_rename)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f110075

    .line 592
    invoke-virtual {v1, v4}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.confirm)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f11006e

    .line 593
    invoke-virtual {v1, v5}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.cancle)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    new-instance v6, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;

    invoke-direct {v6, v2, v0, v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;-><init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;Ljava/lang/String;Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V

    check-cast v6, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const-string v0, ""

    move-object v1, v7

    move-object v2, v3

    move-object v3, v0

    .line 590
    invoke-virtual/range {v1 .. v6}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;)V

    .line 626
    invoke-virtual {v7}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    .line 628
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$cancelMultiSelect(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V

    return-void
.end method

.method public onInit(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "valueLiveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0, p1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$setNameLiveData$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;Landroidx/lifecycle/MutableLiveData;)V

    return-void
.end method
