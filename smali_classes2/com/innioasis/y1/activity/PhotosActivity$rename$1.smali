.class public final Lcom/innioasis/y1/activity/PhotosActivity$rename$1;
.super Ljava/lang/Object;
.source "PhotosActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/utils/InputMethodDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PhotosActivity;->rename()V
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
        "com/innioasis/y1/activity/PhotosActivity$rename$1",
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
.field final synthetic $end:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $item:Lcom/innioasis/y1/activity/PhotosActivity$Item;

.field final synthetic $name:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/innioasis/y1/activity/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/PhotosActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/innioasis/y1/activity/PhotosActivity$Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/PhotosActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/innioasis/y1/activity/PhotosActivity$Item;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    iput-object p2, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->$name:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->$end:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->$item:Lcom/innioasis/y1/activity/PhotosActivity$Item;

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 9

    .line 504
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getNameLiveData$p(Lcom/innioasis/y1/activity/PhotosActivity;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->$name:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 506
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/utils/PhotosDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/PhotosDialog;->dismiss()V

    goto/16 :goto_0

    .line 507
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 509
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const v3, 0x7f110154

    .line 510
    invoke-virtual {v0, v3}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 508
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 513
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/utils/PhotosDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/PhotosDialog;->dismiss()V

    goto/16 :goto_0

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    iget-object v3, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->$end:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->$item:Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->isDirectory()Z

    move-result v4

    invoke-static {v1, v0, v3, v4}, Lcom/innioasis/y1/activity/PhotosActivity;->access$fileIsDuplicate(Lcom/innioasis/y1/activity/PhotosActivity;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 516
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const v3, 0x7f110153

    .line 517
    invoke-virtual {v0, v3}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 515
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 520
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/utils/PhotosDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/PhotosDialog;->dismiss()V

    goto :goto_0

    .line 521
    :cond_3
    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->$name:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 522
    new-instance v1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v2, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    move-object v3, v2

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    iget-object v3, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->$item:Lcom/innioasis/y1/activity/PhotosActivity$Item;

    iget-object v4, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->$end:Lkotlin/jvm/internal/Ref$ObjectRef;

    const v5, 0x7f1101af

    .line 523
    invoke-virtual {v2, v5}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.sure_to_rename)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v6, 0x7f110075

    .line 525
    invoke-virtual {v2, v6}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.confirm)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f11006e

    .line 526
    invoke-virtual {v2, v7}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(R.string.cancle)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    new-instance v8, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;

    invoke-direct {v8, v3, v2, v0, v4}, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;-><init>(Lcom/innioasis/y1/activity/PhotosActivity$Item;Lcom/innioasis/y1/activity/PhotosActivity;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v0, v8

    check-cast v0, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const-string v4, ""

    move-object v2, v1

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    .line 523
    invoke-virtual/range {v2 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;)V

    .line 552
    invoke-virtual {v1}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    .line 554
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$cancelMultiSelect(Lcom/innioasis/y1/activity/PhotosActivity;)V

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

    .line 558
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0, p1}, Lcom/innioasis/y1/activity/PhotosActivity;->access$setNameLiveData$p(Lcom/innioasis/y1/activity/PhotosActivity;Landroidx/lifecycle/MutableLiveData;)V

    return-void
.end method
