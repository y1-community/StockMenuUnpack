.class public final Lcom/innioasis/music/SongListActivity$handler$1;
.super Landroid/os/Handler;
.source "SongListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/music/SongListActivity;-><init>()V
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
        "com/innioasis/music/SongListActivity$handler$1",
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
.field final synthetic this$0:Lcom/innioasis/music/SongListActivity;


# direct methods
.method constructor <init>(Lcom/innioasis/music/SongListActivity;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/innioasis/music/SongListActivity$handler$1;->this$0:Lcom/innioasis/music/SongListActivity;

    .line 48
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$handler$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    .line 60
    iget-object v1, p0, Lcom/innioasis/music/SongListActivity$handler$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-virtual {v1}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->lv:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/innioasis/music/SongListActivity$handler$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-static {v2}, Lcom/innioasis/music/SongListActivity;->access$getAdapter(Lcom/innioasis/music/SongListActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/music/adapter/SongListAdapter;->getPosition()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 61
    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v2, 0x7f08014a

    invoke-virtual {v1, p1, v2, v0}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/innioasis/music/SongListActivity$handler$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-virtual {p1}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p1

    .line 54
    iget-object v0, p0, Lcom/innioasis/music/SongListActivity$handler$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-virtual {v0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/innioasis/music/SongListActivity$handler$1;->this$0:Lcom/innioasis/music/SongListActivity;

    invoke-static {v1}, Lcom/innioasis/music/SongListActivity;->access$getAdapter(Lcom/innioasis/music/SongListActivity;)Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/SongListAdapter;->getPosition()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 55
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f080144

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->itemSetBackground(Landroid/view/View;IZ)V

    :cond_2
    :goto_0
    return-void
.end method
