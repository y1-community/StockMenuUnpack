.class public final Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "ThemeListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1;->onBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "cancel",
        "",
        "confirm",
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

.field final synthetic $renameName:Ljava/lang/String;

.field final synthetic this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;Ljava/lang/String;Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    iput-object p2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->$renameName:Ljava/lang/String;

    iput-object p3, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    .line 594
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/view/ThemeOptionsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->dismiss()V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$cancelMultiSelect(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V

    return-void
.end method

.method public confirm()V
    .locals 12

    .line 596
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getName()Ljava/lang/String;

    move-result-object v0

    .line 597
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->$renameName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    iget-object v3, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "targetFile.path"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->setPath(Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    .line 603
    invoke-virtual {v3}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->getPicturePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v1, "file.path"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-virtual {v3, v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->setPicturePath(Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->$item:Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;

    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->$renameName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity$Item;->setName(Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v1}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getAdapter(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getMark()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyItemChanged(I)V

    .line 607
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1}, Lcom/innioasis/y1/theme/ThemeManager;->getThemeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 608
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    iget-object v1, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->$renameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->setThemeName(Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f110158

    .line 613
    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 611
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 615
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 617
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)Lcom/innioasis/y1/view/ThemeOptionsDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ThemeOptionsDialog;->dismiss()V

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/activity/theme/ThemeListActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/theme/ThemeListActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/theme/ThemeListActivity;->access$cancelMultiSelect(Lcom/innioasis/y1/activity/theme/ThemeListActivity;)V

    return-void
.end method
