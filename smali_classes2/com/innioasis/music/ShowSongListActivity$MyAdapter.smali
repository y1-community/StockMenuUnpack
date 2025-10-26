.class public final Lcom/innioasis/music/ShowSongListActivity$MyAdapter;
.super Lcom/innioasis/music/adapter/rv/RVBaseAdapter;
.source "ShowSongListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/music/ShowSongListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/music/adapter/rv/RVBaseAdapter<",
        "Lcom/innioasis/y1/database/Song;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/innioasis/music/ShowSongListActivity$MyAdapter;",
        "Lcom/innioasis/music/adapter/rv/RVBaseAdapter;",
        "Lcom/innioasis/y1/database/Song;",
        "activity",
        "Landroid/app/Activity;",
        "(Lcom/innioasis/music/ShowSongListActivity;Landroid/app/Activity;)V",
        "onCreateViewHolder",
        "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field final synthetic this$0:Lcom/innioasis/music/ShowSongListActivity;


# direct methods
.method public constructor <init>(Lcom/innioasis/music/ShowSongListActivity;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->this$0:Lcom/innioasis/music/ShowSongListActivity;

    invoke-direct {p0, p2}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/innioasis/music/adapter/rv/RVBaseViewHolder<",
            "Lcom/innioasis/y1/database/Song;",
            ">;"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance p2, Lcom/innioasis/music/ShowSongListActivity$MyViewHolder;

    iget-object v0, p0, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->this$0:Lcom/innioasis/music/ShowSongListActivity;

    .line 93
    invoke-virtual {v0}, Lcom/innioasis/music/ShowSongListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0078

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v1, "from(activity).inflate(R\u2026t.item_main,parent,false)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p2, v0, p1}, Lcom/innioasis/music/ShowSongListActivity$MyViewHolder;-><init>(Lcom/innioasis/music/ShowSongListActivity;Landroid/view/View;)V

    check-cast p2, Lcom/innioasis/music/adapter/rv/RVBaseViewHolder;

    return-object p2
.end method
