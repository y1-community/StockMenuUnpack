.class public final Lcom/innioasis/music/FilesActivity$handler$1;
.super Landroid/os/Handler;
.source "FilesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/FilesActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/innioasis/music/FilesActivity$handler$1",
        "Landroid/os/Handler;",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
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
.field final synthetic this$0:Lcom/innioasis/music/FilesActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/FilesActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/FilesActivity$handler$1;->this$0:Lcom/innioasis/music/FilesActivity;

    .line 48
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity$handler$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v0}, Lcom/innioasis/music/FilesActivity;->access$getFileList$p(Lcom/innioasis/music/FilesActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const-string v1, "adapter"

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    goto/16 :goto_2

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/innioasis/music/FilesActivity$handler$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/FilesActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityFilesBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    .line 60
    iget-object v3, p0, Lcom/innioasis/music/FilesActivity$handler$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-virtual {v3}, Lcom/innioasis/music/FilesActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivityFilesBinding;->lv:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/innioasis/music/FilesActivity$handler$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v4}, Lcom/innioasis/music/FilesActivity;->access$getAdapter$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/adapter/FileListAdapter;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v4

    :goto_0
    invoke-virtual {v0}, Lcom/innioasis/music/adapter/FileListAdapter;->getPosition()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 61
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f08014a

    invoke-virtual {v0, p1, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    goto :goto_2

    .line 54
    :cond_3
    iget-object p1, p0, Lcom/innioasis/music/FilesActivity$handler$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/FilesActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityFilesBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    .line 55
    iget-object v2, p0, Lcom/innioasis/music/FilesActivity$handler$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-virtual {v2}, Lcom/innioasis/music/FilesActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityFilesBinding;->lv:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/innioasis/music/FilesActivity$handler$1;->this$0:Lcom/innioasis/music/FilesActivity;

    invoke-static {v3}, Lcom/innioasis/music/FilesActivity;->access$getAdapter$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/adapter/FileListAdapter;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v0, v3

    :goto_1
    invoke-virtual {v0}, Lcom/innioasis/music/adapter/FileListAdapter;->getPosition()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 56
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f080144

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :cond_5
    :goto_2
    return-void
.end method
