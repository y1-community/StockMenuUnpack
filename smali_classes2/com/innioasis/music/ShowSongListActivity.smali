.class public final Lcom/innioasis/music/ShowSongListActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "ShowSongListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/music/ShowSongListActivity$Companion;,
        Lcom/innioasis/music/ShowSongListActivity$MyViewHolder;,
        Lcom/innioasis/music/ShowSongListActivity$MyAdapter;,
        Lcom/innioasis/music/ShowSongListActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001e\u001f B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0014H\u0016J\u0008\u0010\u0016\u001a\u00020\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u0014H\u0016J\u0008\u0010\u001c\u001a\u00020\u0014H\u0016J\u0008\u0010\u001d\u001a\u00020\u0014H\u0016R\u001f\u0010\u0004\u001a\u00060\u0005R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\t\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006!"
    }
    d2 = {
        "Lcom/innioasis/music/ShowSongListActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/music/ShowSongListActivity$MyAdapter;",
        "getAdapter",
        "()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "albumName",
        "",
        "isMultiSelect",
        "",
        "subMenuDialog",
        "Lcom/innioasis/music/util/SubMenuDialog;",
        "getSubMenuDialog",
        "()Lcom/innioasis/music/util/SubMenuDialog;",
        "subMenuDialog$delegate",
        "antiClockwise",
        "",
        "clockwise",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "quit",
        "Companion",
        "MyAdapter",
        "MyViewHolder",
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


# static fields
.field public static final ALBUM_NAME:Ljava/lang/String; = "album_name"

.field public static final Companion:Lcom/innioasis/music/ShowSongListActivity$Companion;


# instance fields
.field private final adapter$delegate:Lkotlin/Lazy;

.field private albumName:Ljava/lang/String;

.field private isMultiSelect:Z

.field private final subMenuDialog$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/music/ShowSongListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/music/ShowSongListActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/music/ShowSongListActivity;->Companion:Lcom/innioasis/music/ShowSongListActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/innioasis/music/ShowSongListActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/ShowSongListActivity$adapter$2;-><init>(Lcom/innioasis/music/ShowSongListActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/ShowSongListActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 109
    new-instance v0, Lcom/innioasis/music/ShowSongListActivity$subMenuDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/ShowSongListActivity$subMenuDialog$2;-><init>(Lcom/innioasis/music/ShowSongListActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/ShowSongListActivity;->subMenuDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/innioasis/music/ShowSongListActivity;)Lcom/innioasis/music/ShowSongListActivity$MyAdapter;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isMultiSelect$p(Lcom/innioasis/music/ShowSongListActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/innioasis/music/ShowSongListActivity;->isMultiSelect:Z

    return p0
.end method

.method public static final synthetic access$setMultiSelect$p(Lcom/innioasis/music/ShowSongListActivity;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/innioasis/music/ShowSongListActivity;->isMultiSelect:Z

    return-void
.end method

.method private final getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/innioasis/music/ShowSongListActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    return-object v0
.end method

.method private final getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/innioasis/music/ShowSongListActivity;->subMenuDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/util/SubMenuDialog;

    return-object v0
.end method


# virtual methods
.method public antiClockwise()V
    .locals 5

    .line 102
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "vb.rv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toPrevious$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    return-void
.end method

.method public clockwise()V
    .locals 5

    .line 98
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "vb.rv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toNext$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    return-void
.end method

.method public confirm()V
    .locals 6

    .line 207
    iget-boolean v0, p0, Lcom/innioasis/music/ShowSongListActivity;->isMultiSelect:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->getSelectPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->addOrRemoveMultiSelectIndex$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;IZILjava/lang/Object;)V

    .line 209
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "vb.rv"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toNext$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_0
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->getItemList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->getSelectPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/service/PlayerService;->setMusicPlaylist(Ljava/util/List;I)V

    .line 212
    :cond_1
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/innioasis/music/MusicPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/ShowSongListActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/innioasis/music/ShowSongListActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 227
    iget-boolean p1, p0, Lcom/innioasis/music/ShowSongListActivity;->isMultiSelect:Z

    if-eqz p1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 229
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->finish()V

    :goto_0
    const/4 p1, 0x0

    .line 233
    iput-boolean p1, p0, Lcom/innioasis/music/ShowSongListActivity;->isMultiSelect:Z

    :cond_1
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;
    .locals 2

    .line 46
    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 12

    .line 53
    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "album_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->finish()V

    return-void

    .line 57
    :cond_0
    iput-object v0, p0, Lcom/innioasis/music/ShowSongListActivity;->albumName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "albumName"

    if-nez v0, :cond_1

    .line 58
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/innioasis/music/ShowSongListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v0

    sget-object v3, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v4

    new-instance v3, Lcom/innioasis/music/data/Album;

    iget-object v5, p0, Lcom/innioasis/music/ShowSongListActivity;->albumName:Ljava/lang/String;

    if-nez v5, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v1

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/4 v11, 0x0

    const-string v7, ""

    move-object v5, v3

    invoke-direct/range {v5 .. v11}, Lcom/innioasis/music/data/Album;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-static/range {v4 .. v9}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByAlbumSync$default(Lcom/innioasis/y1/database/Y1Repository;Lcom/innioasis/music/data/Album;ILcom/innioasis/music/data/Genre;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->addItemList(Ljava/util/List;)V

    .line 60
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->showNone()V

    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->hideNone()V

    .line 62
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/music/ShowSongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityShowSongListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public longConfirm()V
    .locals 3

    .line 217
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    .line 219
    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/music/ShowSongListActivity;->getAdapter()Lcom/innioasis/music/ShowSongListActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->getSelectPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/ShowSongListActivity$MyAdapter;->addOrRemoveMultiSelectIndex(IZ)V

    .line 220
    iput-boolean v2, p0, Lcom/innioasis/music/ShowSongListActivity;->isMultiSelect:Z

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
