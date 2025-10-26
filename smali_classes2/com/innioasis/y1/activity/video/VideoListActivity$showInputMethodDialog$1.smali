.class public final Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;
.super Ljava/lang/Object;
.source "VideoListActivity.kt"

# interfaces
.implements Lcom/innioasis/y1/utils/InputMethodDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/video/VideoListActivity;->showInputMethodDialog(Ljava/lang/String;)Lcom/innioasis/y1/utils/InputMethodDialog;
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
        "com/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1",
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
.field final synthetic $oldName:Ljava/lang/String;

.field final synthetic this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;


# direct methods
.method public static synthetic $r8$lambda$QZsqV-6TCWmW9xTPrlfHYEO66z0(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->onInit$lambda-1(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iput-object p2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->$oldName:Ljava/lang/String;

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onInit$lambda-1(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aaaaaaaaaaaaaaaaaaaaaaa  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    invoke-static {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setDisplayName(Ljava/lang/String;)V

    .line 802
    invoke-static {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 12

    .line 756
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 757
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$removeFirstAndTailBlank(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 758
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 760
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->$oldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setDisplayName(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyItemChanged(I)V

    .line 762
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f11015f

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 763
    :cond_1
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$existDuplicatePlaylistNameCount(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_2

    .line 765
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->$oldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setDisplayName(Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyItemChanged(I)V

    .line 767
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f11015e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 768
    :cond_2
    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->$oldName:Ljava/lang/String;

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 769
    new-instance v1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    move-object v4, v2

    check-cast v4, Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    iget-object v11, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->$oldName:Ljava/lang/String;

    const v3, 0x7f1101af

    .line 770
    invoke-virtual {v2, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v3, "getString(R.string.sure_to_rename)"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    new-instance v3, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;

    invoke-direct {v3, v11, v2, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$1;-><init>(Ljava/lang/String;Lcom/innioasis/y1/activity/video/VideoListActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object v6, v3

    check-cast v6, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x0

    const-string v5, ""

    move-object v3, v1

    .line 770
    invoke-static/range {v3 .. v10}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    .line 787
    new-instance v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$2;

    invoke-direct {v0, v2, v11}, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$onBack$1$2;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onInit(Landroidx/lifecycle/MutableLiveData;)V
    .locals 3
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

    .line 796
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-static {v0, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->access$setValueLiveData$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Landroidx/lifecycle/MutableLiveData;)V

    .line 797
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;->this$0:Lcom/innioasis/y1/activity/video/VideoListActivity;

    move-object v1, v0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
