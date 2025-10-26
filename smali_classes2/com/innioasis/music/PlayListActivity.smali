.class public final Lcom/innioasis/music/PlayListActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "PlayListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/music/PlayListActivity$Companion;,
        Lcom/innioasis/music/PlayListActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityPlayListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0002\u000b\u001e\u0018\u0000 32\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u00013B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020!H\u0016J\u0008\u0010#\u001a\u00020!H\u0016J\u0006\u0010$\u001a\u00020!J\u0010\u0010%\u001a\u00020!2\u0006\u0010&\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020!2\u0008\u0008\u0002\u0010)\u001a\u00020*J\u0008\u0010+\u001a\u00020\u0002H\u0016J\u0008\u0010,\u001a\u00020!H\u0016J\u0008\u0010-\u001a\u00020!H\u0016J\u0008\u0010.\u001a\u00020!H\u0016J\u0008\u0010/\u001a\u00020!H\u0002J\u0008\u00100\u001a\u00020!H\u0002J\u000e\u00101\u001a\u00020!2\u0006\u00102\u001a\u00020\u000eR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0010\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0017\u001a\u00020\u00188BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001aR\u0010\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001f\u00a8\u00064"
    }
    d2 = {
        "Lcom/innioasis/music/PlayListActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityPlayListBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/music/adapter/SongListAdapter;",
        "getAdapter",
        "()Lcom/innioasis/music/adapter/SongListAdapter;",
        "setAdapter",
        "(Lcom/innioasis/music/adapter/SongListAdapter;)V",
        "isDeleteCallback",
        "com/innioasis/music/PlayListActivity$isDeleteCallback$1",
        "Lcom/innioasis/music/PlayListActivity$isDeleteCallback$1;",
        "isMultiSelect",
        "",
        "playlist",
        "Lcom/innioasis/y1/database/Playlist;",
        "getPlaylist",
        "()Lcom/innioasis/y1/database/Playlist;",
        "setPlaylist",
        "(Lcom/innioasis/y1/database/Playlist;)V",
        "random",
        "Lkotlin/random/Random;",
        "subMenuDialog",
        "Lcom/innioasis/music/util/SubMenuDialog;",
        "getSubMenuDialog",
        "()Lcom/innioasis/music/util/SubMenuDialog;",
        "subMenuDialog$delegate",
        "Lkotlin/Lazy;",
        "subMenuSelectCallback",
        "com/innioasis/music/PlayListActivity$subMenuSelectCallback$1",
        "Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;",
        "antiClockwise",
        "",
        "clockwise",
        "confirm",
        "delete",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getSongListBySort",
        "type",
        "Lcom/innioasis/y1/database/Y1Repository$SongSortType;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "quit",
        "sortByFileName",
        "sortBySongName",
        "startSelect",
        "isAll",
        "Companion",
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
.field public static final Companion:Lcom/innioasis/music/PlayListActivity$Companion;

.field public static final PLAYLIST_ID_KEY:Ljava/lang/String; = "playlistId"


# instance fields
.field public adapter:Lcom/innioasis/music/adapter/SongListAdapter;

.field private final isDeleteCallback:Lcom/innioasis/music/PlayListActivity$isDeleteCallback$1;

.field private isMultiSelect:Z

.field public playlist:Lcom/innioasis/y1/database/Playlist;

.field private final random:Lkotlin/random/Random;

.field private final subMenuDialog$delegate:Lkotlin/Lazy;

.field private final subMenuSelectCallback:Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/music/PlayListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/music/PlayListActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/music/PlayListActivity;->Companion:Lcom/innioasis/music/PlayListActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/innioasis/music/PlayListActivity$subMenuDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/PlayListActivity$subMenuDialog$2;-><init>(Lcom/innioasis/music/PlayListActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/PlayListActivity;->subMenuDialog$delegate:Lkotlin/Lazy;

    .line 70
    new-instance v0, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;

    invoke-direct {v0, p0}, Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;-><init>(Lcom/innioasis/music/PlayListActivity;)V

    iput-object v0, p0, Lcom/innioasis/music/PlayListActivity;->subMenuSelectCallback:Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;

    .line 90
    new-instance v0, Lcom/innioasis/music/PlayListActivity$isDeleteCallback$1;

    invoke-direct {v0, p0}, Lcom/innioasis/music/PlayListActivity$isDeleteCallback$1;-><init>(Lcom/innioasis/music/PlayListActivity;)V

    iput-object v0, p0, Lcom/innioasis/music/PlayListActivity;->isDeleteCallback:Lcom/innioasis/music/PlayListActivity$isDeleteCallback$1;

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/random/RandomKt;->Random(J)Lkotlin/random/Random;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/PlayListActivity;->random:Lkotlin/random/Random;

    return-void
.end method

.method public static final synthetic access$getSubMenuDialog(Lcom/innioasis/music/PlayListActivity;)Lcom/innioasis/music/util/SubMenuDialog;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/innioasis/music/PlayListActivity;->getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSubMenuSelectCallback$p(Lcom/innioasis/music/PlayListActivity;)Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/innioasis/music/PlayListActivity;->subMenuSelectCallback:Lcom/innioasis/music/PlayListActivity$subMenuSelectCallback$1;

    return-object p0
.end method

.method public static final synthetic access$isMultiSelect$p(Lcom/innioasis/music/PlayListActivity;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/innioasis/music/PlayListActivity;->isMultiSelect:Z

    return p0
.end method

.method public static final synthetic access$sortByFileName(Lcom/innioasis/music/PlayListActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/innioasis/music/PlayListActivity;->sortByFileName()V

    return-void
.end method

.method public static final synthetic access$sortBySongName(Lcom/innioasis/music/PlayListActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/innioasis/music/PlayListActivity;->sortBySongName()V

    return-void
.end method

.method public static synthetic getSongListBySort$default(Lcom/innioasis/music/PlayListActivity;Lcom/innioasis/y1/database/Y1Repository$SongSortType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 271
    sget-object p1, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Companion:Lcom/innioasis/y1/database/Y1Repository$SongSortType$Companion;

    .line 272
    sget-object p2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getSortPlayListSong()I

    move-result p2

    .line 271
    invoke-virtual {p1, p2}, Lcom/innioasis/y1/database/Y1Repository$SongSortType$Companion;->fromType(I)Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    move-result-object p1

    .line 270
    :cond_0
    invoke-virtual {p0, p1}, Lcom/innioasis/music/PlayListActivity;->getSongListBySort(Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V

    return-void
.end method

.method private final getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/innioasis/music/PlayListActivity;->subMenuDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/util/SubMenuDialog;

    return-object v0
.end method

.method private final sortByFileName()V
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1101a3

    .line 245
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1101a9

    .line 246
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f1101a7

    .line 247
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f1101a8

    .line 248
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 244
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 251
    new-instance v0, Lcom/innioasis/music/util/SubMenuDialog;

    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    new-instance v1, Lcom/innioasis/music/PlayListActivity$sortByFileName$1;

    invoke-direct {v1, p0}, Lcom/innioasis/music/PlayListActivity$sortByFileName$1;-><init>(Lcom/innioasis/music/PlayListActivity;)V

    move-object v6, v1

    check-cast v6, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 264
    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    return-void
.end method

.method private final sortBySongName()V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1101a3

    .line 224
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1101a9

    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 226
    new-instance v0, Lcom/innioasis/music/util/SubMenuDialog;

    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    new-instance v1, Lcom/innioasis/music/PlayListActivity$sortBySongName$1;

    invoke-direct {v1, p0}, Lcom/innioasis/music/PlayListActivity$sortBySongName$1;-><init>(Lcom/innioasis/music/PlayListActivity;)V

    move-object v6, v1

    check-cast v6, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 236
    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->recordOldPosition()V

    .line 123
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    .line 124
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    iget-boolean v1, p0, Lcom/innioasis/music/PlayListActivity;->isMultiSelect:Z

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->onAntiClockwise(Z)V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 117
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    .line 118
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->onClockwise()V

    return-void
.end method

.method public confirm()V
    .locals 4

    .line 133
    iget-boolean v0, p0, Lcom/innioasis/music/PlayListActivity;->isMultiSelect:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/SongListAdapter;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/music/adapter/SongListAdapter;->getTYPE_MUILTIPLE()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/adapter/SongListAdapter;->addItemToSelectedIndex(II)V

    .line 135
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/SongListAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    .line 138
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/music/MusicPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v2}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->getPlaylist()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v3}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->getPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/innioasis/y1/service/PlayerService;->setMusicPlaylist(Ljava/util/List;I)V

    .line 142
    :cond_2
    invoke-virtual {p0, v0}, Lcom/innioasis/music/PlayListActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public final delete()V
    .locals 9

    .line 206
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/SongListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 207
    new-instance v0, Lcom/innioasis/y1/utils/DialogUtil;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v1, 0x7f1100c1

    .line 208
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlayListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(R.string.is_remove)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/innioasis/music/PlayListActivity;->isDeleteCallback:Lcom/innioasis/music/PlayListActivity$isDeleteCallback$1;

    move-object v4, v1

    check-cast v4, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v3, ""

    move-object v1, v0

    invoke-static/range {v1 .. v8}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    .line 209
    new-instance v1, Lcom/innioasis/music/PlayListActivity$delete$1$1;

    invoke-direct {v1, p0}, Lcom/innioasis/music/PlayListActivity$delete$1$1;-><init>(Lcom/innioasis/music/PlayListActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 213
    invoke-virtual {v0}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    :cond_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 3

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/innioasis/music/PlayListActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 158
    iget-boolean p1, p0, Lcom/innioasis/music/PlayListActivity;->isMultiSelect:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v0, [Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v2

    check-cast v2, Lcom/innioasis/music/adapter/MyBaseAdapter;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/innioasis/music/PlayListActivity;->cancelMultiSelect(Landroid/widget/ListView;[Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->finish()V

    .line 163
    :goto_0
    iput-boolean v1, p0, Lcom/innioasis/music/PlayListActivity;->isMultiSelect:Z

    :cond_1
    return-void
.end method

.method public final getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/innioasis/music/PlayListActivity;->adapter:Lcom/innioasis/music/adapter/SongListAdapter;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPlaylist()Lcom/innioasis/y1/database/Playlist;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/innioasis/music/PlayListActivity;->playlist:Lcom/innioasis/y1/database/Playlist;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "playlist"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSongListBySort(Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V
    .locals 8

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    sget-object v1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    new-instance v0, Lcom/innioasis/music/PlayListActivity$getSongListBySort$timber$1;

    invoke-direct {v0, p0}, Lcom/innioasis/music/PlayListActivity$getSongListBySort$timber$1;-><init>(Lcom/innioasis/music/PlayListActivity;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/innioasis/music/util/Other;->newTimer$default(Lcom/innioasis/music/util/Other;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/os/CountDownTimer;

    move-result-object v0

    .line 279
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/music/PlayListActivity$getSongListBySort$1;

    const/4 v4, 0x0

    invoke-direct {v1, p0, p1, v0, v4}, Lcom/innioasis/music/PlayListActivity$getSongListBySort$1;-><init>(Lcom/innioasis/music/PlayListActivity;Lcom/innioasis/y1/database/Y1Repository$SongSortType;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityPlayListBinding;
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "playlistId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.util.UUID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/UUID;

    .line 61
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/database/Y1Repository;->getPlaylistById(Ljava/util/UUID;)Lcom/innioasis/y1/database/Playlist;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/innioasis/music/PlayListActivity;->setPlaylist(Lcom/innioasis/y1/database/Playlist;)V

    .line 62
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getPlaylist()Lcom/innioasis/y1/database/Playlist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/innioasis/music/PlayListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/innioasis/music/adapter/SongListAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/innioasis/music/adapter/SongListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/PlayListActivity;->setAdapter(Lcom/innioasis/music/adapter/SongListAdapter;)V

    .line 64
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->bind(Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-static {p0, v1, v0, v1}, Lcom/innioasis/music/PlayListActivity;->getSongListBySort$default(Lcom/innioasis/music/PlayListActivity;Lcom/innioasis/y1/database/Y1Repository$SongSortType;ILjava/lang/Object;)V

    return-void
.end method

.method public longConfirm()V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->lv:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPlayListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->isSelect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/innioasis/music/PlayListActivity;->getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/SongListAdapter;->getPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/innioasis/music/PlayListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/music/adapter/SongListAdapter;->getTYPE_SINGLE()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/adapter/SongListAdapter;->addItemToSelectedIndex(II)V

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Lcom/innioasis/music/PlayListActivity;->isMultiSelect:Z

    :cond_1
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public final setAdapter(Lcom/innioasis/music/adapter/SongListAdapter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/innioasis/music/PlayListActivity;->adapter:Lcom/innioasis/music/adapter/SongListAdapter;

    return-void
.end method

.method public final setPlaylist(Lcom/innioasis/y1/database/Playlist;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/innioasis/music/PlayListActivity;->playlist:Lcom/innioasis/y1/database/Playlist;

    return-void
.end method

.method public final startSelect(Z)V
    .locals 9

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/innioasis/music/PlayListActivity;->isMultiSelect:Z

    .line 176
    new-instance v0, Lcom/innioasis/music/PlayListActivity$startSelect$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/music/PlayListActivity$startSelect$1;-><init>(Lcom/innioasis/music/PlayListActivity;Z)V

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    return-void
.end method
