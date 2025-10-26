.class public final Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;
.super Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
.source "PhotosActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PhotosActivity$rename$1;->onBack()V
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
        "com/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1",
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

.field final synthetic $renameName:Ljava/lang/String;

.field final synthetic this$0:Lcom/innioasis/y1/activity/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/PhotosActivity$Item;Lcom/innioasis/y1/activity/PhotosActivity;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/activity/PhotosActivity$Item;",
            "Lcom/innioasis/y1/activity/PhotosActivity;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->$item:Lcom/innioasis/y1/activity/PhotosActivity$Item;

    iput-object p2, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    iput-object p3, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->$renameName:Ljava/lang/String;

    iput-object p4, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->$end:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 527
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/utils/PhotosDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/PhotosDialog;->dismiss()V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$cancelMultiSelect(Lcom/innioasis/y1/activity/PhotosActivity;)V

    return-void
.end method

.method public confirm()V
    .locals 5

    .line 529
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->$item:Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v1, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$isAllowRename(Lcom/innioasis/y1/activity/PhotosActivity;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const v2, 0x7f110158

    .line 533
    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 531
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 537
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->$renameName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->$end:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 538
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 539
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->$item:Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "targetFile.path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->setPath(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->$item:Lcom/innioasis/y1/activity/PhotosActivity$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->$renameName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->$end:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->setName(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getAdapter(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyItemChanged(I)V

    .line 543
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/utils/PhotosDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/PhotosDialog;->dismiss()V

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$rename$1$onBack$1$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$cancelMultiSelect(Lcom/innioasis/y1/activity/PhotosActivity;)V

    return-void
.end method
