.class final Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PhotosActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/PhotosActivity;->longTop()V
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/PhotosActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/PhotosActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 744
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 10

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 737
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->access$rename(Lcom/innioasis/y1/activity/PhotosActivity;)V

    goto/16 :goto_1

    .line 731
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {p1, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/PhotosActivity;Z)V

    .line 732
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->access$allSelect(Lcom/innioasis/y1/activity/PhotosActivity;)V

    .line 733
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/utils/PhotosDialog;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/PhotosDialog;->dismiss()V

    goto/16 :goto_1

    .line 726
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {p1, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/PhotosActivity;Z)V

    .line 727
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getSubDialog$p(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/utils/PhotosDialog;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/PhotosDialog;->dismiss()V

    goto/16 :goto_1

    .line 699
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    const v0, 0x7f1100c0

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.is_delete)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v0}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getMultiSelectIndexes$p(Lcom/innioasis/y1/activity/PhotosActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 701
    iget-object v2, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {v2}, Lcom/innioasis/y1/activity/PhotosActivity;->access$getAdapter(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 702
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    const v0, 0x7f110152

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.photos_deleting)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    const v1, 0x7f110159

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.photos_tips)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v0, ""

    :goto_0
    move-object v2, p1

    move-object v3, v0

    .line 707
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    move-object v5, v0

    check-cast v5, Landroid/app/Activity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    const v1, 0x7f110075

    .line 710
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "getString(R.string.confirm)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f11006e

    .line 711
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "getString(R.string.cancle)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    new-instance v1, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1$1$1;

    invoke-direct {v1, v0}, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1$1$1;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;)V

    move-object v6, v1

    check-cast v6, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    move-object v1, p1

    .line 708
    invoke-virtual/range {v1 .. v6}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;)V

    .line 722
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    goto :goto_1

    .line 694
    :cond_6
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;->this$0:Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-static {p1}, Lcom/innioasis/y1/activity/PhotosActivity;->access$closeSubmenu(Lcom/innioasis/y1/activity/PhotosActivity;)V

    :cond_7
    :goto_1
    return-void
.end method
