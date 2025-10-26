.class public final Lcom/innioasis/music/MusicMainActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "MusicMainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/music/MusicMainActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u0008\u0010\u0012\u001a\u00020\u000bH\u0016J\u0008\u0010\u0013\u001a\u00020\u000bH\u0016J\u0008\u0010\u0014\u001a\u00020\u000bH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/innioasis/music/MusicMainActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/music/adapter/MainAdapter;",
        "getAdapter",
        "()Lcom/innioasis/music/adapter/MainAdapter;",
        "setAdapter",
        "(Lcom/innioasis/music/adapter/MainAdapter;)V",
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
.field public adapter:Lcom/innioasis/music/adapter/MainAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 3

    .line 43
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 39
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    return-void
.end method

.method public confirm()V
    .locals 3

    .line 51
    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getAdapter()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/MainAdapter;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 80
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/music/SearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/music/FilesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "now_path"

    const-string v2, "/storage/sdcard0"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/music/GenresActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/music/AlbumsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/music/ArtistsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/music/PlaylistsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 54
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/music/SongListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicMainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/innioasis/music/MusicMainActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final getAdapter()Lcom/innioasis/music/adapter/MainAdapter;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/innioasis/music/MusicMainActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 8

    const v0, 0x7f1100de

    .line 20
    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.main_music)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicMainActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f110124

    .line 22
    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.music_all_songs)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f11012e

    .line 23
    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "getString(R.string.music_playlists)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x7f110125

    .line 24
    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "getString(R.string.music_artists)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const v2, 0x7f110121

    .line 25
    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "getString(R.string.music_albums)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const v2, 0x7f110129

    .line 26
    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "getString(R.string.music_genres)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const v2, 0x7f110128

    .line 27
    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "getString(R.string.music_folders)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x5

    aput-object v2, v1, v7

    const v2, 0x7f110130

    .line 28
    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v7, "getString(R.string.music_search)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x6

    aput-object v2, v1, v7

    .line 21
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/objects/Constant;->setMainList(Ljava/util/List;)V

    .line 30
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    new-array v1, v6, [Ljava/lang/String;

    const v2, 0x7f11012a

    .line 31
    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "getString(R.string.music_multi_select)"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v3

    const v2, 0x7f110028

    .line 32
    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.all_select)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v4

    const v2, 0x7f110127

    .line 33
    invoke-virtual {p0, v2}, Lcom/innioasis/music/MusicMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(R.string.music_delete_file)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v2, v1, v5

    .line 30
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/objects/Constant;->setSubMenuList(Ljava/util/List;)V

    .line 35
    new-instance v0, Lcom/innioasis/music/adapter/MainAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v2}, Lcom/innioasis/music/objects/Constant;->getMainList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/innioasis/music/adapter/MainAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/MusicMainActivity;->setAdapter(Lcom/innioasis/music/adapter/MainAdapter;)V

    .line 36
    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMusicmainBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/innioasis/music/MusicMainActivity;->getAdapter()Lcom/innioasis/music/adapter/MainAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public longConfirm()V
    .locals 0

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public final setAdapter(Lcom/innioasis/music/adapter/MainAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lcom/innioasis/music/MusicMainActivity;->adapter:Lcom/innioasis/music/adapter/MainAdapter;

    return-void
.end method
