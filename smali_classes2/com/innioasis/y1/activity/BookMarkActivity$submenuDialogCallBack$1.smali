.class public final Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;
.super Ljava/lang/Object;
.source "BookMarkActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/activity/BookMarkActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1",
        "Lcom/innioasis/music/util/SubMenuDialog$Callback;",
        "select",
        "",
        "selectIndex",
        "",
        "item",
        "Lcom/innioasis/music/adapter/SubmenuAdapter$Item;",
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
.field final synthetic this$0:Lcom/innioasis/y1/activity/BookMarkActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/y1/activity/BookMarkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 9

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    iget-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/BookMarkActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    .line 92
    new-instance v1, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1$select$2$1;

    invoke-direct {v1, v0}, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1$select$2$1;-><init>(Lcom/innioasis/y1/activity/BookMarkActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v1}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    const v1, 0x7f1100c0

    .line 96
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/BookMarkActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(R.string.is_delete)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/innioasis/y1/activity/BookMarkActivity;->access$isDeleteCallback$p(Lcom/innioasis/y1/activity/BookMarkActivity;)Lcom/innioasis/y1/activity/BookMarkActivity$isDeleteCallback$1;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v3, ""

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    invoke-static {v0, p2}, Lcom/innioasis/y1/activity/BookMarkActivity;->access$setMultiSelect$p(Lcom/innioasis/y1/activity/BookMarkActivity;Z)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 64
    new-instance v0, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1$select$1;

    iget-object v6, p0, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1;->this$0:Lcom/innioasis/y1/activity/BookMarkActivity;

    invoke-direct {v0, v6, p1}, Lcom/innioasis/y1/activity/BookMarkActivity$submenuDialogCallBack$1$select$1;-><init>(Lcom/innioasis/y1/activity/BookMarkActivity;I)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    :goto_0
    return p2
.end method
