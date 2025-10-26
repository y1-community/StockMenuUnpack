.class public final Lcom/innioasis/music/SongListActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "SongListActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/music/SongListActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivitySongListBinding;",
        ">;",
        "Lcom/innioasis/music/util/SubMenuDialog$Callback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000m\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0012\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020#H\u0016J\u0008\u0010%\u001a\u00020#H\u0016J\u0010\u0010&\u001a\u00020#2\u0006\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020\u0002H\u0016J\u0008\u0010*\u001a\u00020#H\u0016J\u0008\u0010+\u001a\u00020#H\u0016J\u0008\u0010,\u001a\u00020#H\u0016J\u0018\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201H\u0016J\u0008\u00102\u001a\u00020#H\u0002J\u0008\u00103\u001a\u00020#H\u0002J\u0010\u00104\u001a\u00020#2\u0006\u00105\u001a\u000206H\u0002R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0010\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001b\u0010\u0019\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\n\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0 0\u001fX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/innioasis/music/SongListActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivitySongListBinding;",
        "Lcom/innioasis/music/util/SubMenuDialog$Callback;",
        "()V",
        "adapter",
        "Lcom/innioasis/music/adapter/SongListAdapter;",
        "getAdapter",
        "()Lcom/innioasis/music/adapter/SongListAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "handler",
        "Landroid/os/Handler;",
        "getHandler",
        "()Landroid/os/Handler;",
        "setHandler",
        "(Landroid/os/Handler;)V",
        "isDeleteCallback",
        "com/innioasis/music/SongListActivity$isDeleteCallback$1",
        "Lcom/innioasis/music/SongListActivity$isDeleteCallback$1;",
        "isMultiSelect",
        "",
        "()Z",
        "setMultiSelect",
        "(Z)V",
        "mSubMenuDialog",
        "Lcom/innioasis/music/util/SubMenuDialog;",
        "getMSubMenuDialog",
        "()Lcom/innioasis/music/util/SubMenuDialog;",
        "mSubMenuDialog$delegate",
        "songListLiveData",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/innioasis/y1/database/Song;",
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
        "select",
        "selectIndex",
        "",
        "item",
        "Lcom/innioasis/music/adapter/SubmenuAdapter$Item;",
        "sortByFileName",
        "sortBySongName",
        "switchSortType",
        "type",
        "Lcom/innioasis/y1/database/Y1Repository$SongSortType;",
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
.field private final adapter$delegate:Lkotlin/Lazy;

.field private handler:Landroid/os/Handler;

.field private final isDeleteCallback:Lcom/innioasis/music/SongListActivity$isDeleteCallback$1;

.field private isMultiSelect:Z

.field private final mSubMenuDialog$delegate:Lkotlin/Lazy;

.field private songListLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/database/Song;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$uIvmJwiX7HEmeHEmjgo4Nb-Wbds(Lcom/innioasis/music/SongListActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/music/SongListActivity;->select$lambda-0(Lcom/innioasis/music/SongListActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/innioasis/music/SongListActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/SongListActivity$adapter$2;-><init>(Lcom/innioasis/music/SongListActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/SongListActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/innioasis/music/SongListActivity$handler$1;

    invoke-direct {v1, p0, v0}, Lcom/innioasis/music/SongListActivity$handler$1;-><init>(Lcom/innioasis/music/SongListActivity;Landroid/os/Looper;)V

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/innioasis/music/SongListActivity;->handler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/innioasis/music/SongListActivity$mSubMenuDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/SongListActivity$mSubMenuDialog$2;-><init>(Lcom/innioasis/music/SongListActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/SongListActivity;->mSubMenuDialog$delegate:Lkotlin/Lazy;

    .line 103
    new-instance v0, Lcom/innioasis/music/SongListActivity$isDeleteCallback$1;

    invoke-direct {v0, p0}, Lcom/innioasis/music/SongListActivity$isDeleteCallback$1;-><init>(Lcom/innioasis/music/SongListActivity;)V

    iput-object v0, p0, Lcom/innioasis/music/SongListActivity;->isDeleteCallback:Lcom/innioasis/music/SongListActivity$isDeleteCallback$1;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/innioasis/music/SongListActivity;)Lcom/innioasis/music/adapter/SongListAdapter;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMSubMenuDialog(Lcom/innioasis/music/SongListActivity;)Lcom/innioasis/music/util/SubMenuDialog;
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getMSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$switchSortType(Lcom/innioasis/music/SongListActivity;Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/innioasis/music/SongListActivity;->switchSortType(Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V

    return-void
.end method

.method private final getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/innioasis/music/SongListActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/SongListAdapter;

    return-object v0
.end method

.method private final getMSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/innioasis/music/SongListActivity;->mSubMenuDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/util/SubMenuDialog;

    return-object v0
.end method

.method private static final select$lambda-0(Lcom/innioasis/music/SongListActivity;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object p0

    check-cast p0, Lcom/innioasis/music/adapter/MyBaseAdapter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/innioasis/music/adapter/MyBaseAdapter;->allSelect$default(Lcom/innioasis/music/adapter/MyBaseAdapter;ZILjava/lang/Object;)V

    return-void
.end method

.method private final sortByFileName()V
    .locals 10

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1101a3

    .line 296
    invoke-virtual {p0, v1}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1101a9

    .line 297
    invoke-virtual {p0, v1}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f1101a7

    .line 298
    invoke-virtual {p0, v1}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f1101a8

    .line 299
    invoke-virtual {p0, v1}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 295
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 302
    new-instance v0, Lcom/innioasis/music/util/SubMenuDialog;

    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    new-instance v1, Lcom/innioasis/music/SongListActivity$sortByFileName$1;

    invoke-direct {v1, p0}, Lcom/innioasis/music/SongListActivity$sortByFileName$1;-><init>(Lcom/innioasis/music/SongListActivity;)V

    move-object v6, v1

    check-cast v6, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 315
    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    return-void
.end method

.method private final sortBySongName()V
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1101a3

    .line 275
    invoke-virtual {p0, v1}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1101a9

    invoke-virtual {p0, v1}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 277
    new-instance v0, Lcom/innioasis/music/util/SubMenuDialog;

    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    new-instance v1, Lcom/innioasis/music/SongListActivity$sortBySongName$1;

    invoke-direct {v1, p0}, Lcom/innioasis/music/SongListActivity$sortBySongName$1;-><init>(Lcom/innioasis/music/SongListActivity;)V

    move-object v6, v1

    check-cast v6, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 287
    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    return-void
.end method

.method private final switchSortType(Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V
    .locals 8

    .line 319
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    new-instance v1, Lcom/innioasis/music/SongListActivity$switchSortType$timber$1;

    invoke-direct {v1, p0}, Lcom/innioasis/music/SongListActivity$switchSortType$timber$1;-><init>(Lcom/innioasis/music/SongListActivity;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/innioasis/music/util/Other;->newTimer$default(Lcom/innioasis/music/util/Other;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/os/CountDownTimer;

    move-result-object v0

    .line 322
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/SongListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 323
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

    new-instance v1, Lcom/innioasis/music/SongListActivity$switchSortType$1;

    const/4 v4, 0x0

    invoke-direct {v1, p0, p1, v0, v4}, Lcom/innioasis/music/SongListActivity$switchSortType$1;-><init>(Lcom/innioasis/music/SongListActivity;Lcom/innioasis/y1/database/Y1Repository$SongSortType;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 3

    .line 141
    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->recordOldPosition()V

    .line 142
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    .line 143
    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    iget-boolean v1, p0, Lcom/innioasis/music/SongListActivity;->isMultiSelect:Z

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->onAntiClockwise(Z)V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 136
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    .line 137
    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->onClockwise()V

    return-void
.end method

.method public confirm()V
    .locals 3

    .line 151
    iget-boolean v0, p0, Lcom/innioasis/music/SongListActivity;->isMultiSelect:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/SongListAdapter;->getPosition()I

    move-result v1

    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/music/adapter/SongListAdapter;->getTYPE_MUILTIPLE()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/adapter/SongListAdapter;->addItemToSelectedIndex(II)V

    .line 153
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/SongListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 158
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v1}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->getPlaylist()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v2}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->getPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/service/PlayerService;->setMusicPlaylist(Ljava/util/List;I)V

    .line 159
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/innioasis/music/MusicPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SongListActivity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 3

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/innioasis/music/SongListActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 176
    iget-boolean p1, p0, Lcom/innioasis/music/SongListActivity;->isMultiSelect:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v0, [Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v2

    check-cast v2, Lcom/innioasis/music/adapter/MyBaseAdapter;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/innioasis/music/SongListActivity;->cancelMultiSelect(Landroid/widget/ListView;[Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->finish()V

    .line 181
    :goto_0
    iput-boolean v1, p0, Lcom/innioasis/music/SongListActivity;->isMultiSelect:Z

    :cond_1
    return-void
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/innioasis/music/SongListActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivitySongListBinding;
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 3

    const v0, 0x7f110124

    .line 90
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.music_all_songs)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/SongListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->lv:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    check-cast v1, Lcom/innioasis/music/adapter/MyBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->bind(Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    .line 95
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository$SongSortType;->Companion:Lcom/innioasis/y1/database/Y1Repository$SongSortType$Companion;

    sget-object v1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getSortAllSong()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository$SongSortType$Companion;->fromType(I)Lcom/innioasis/y1/database/Y1Repository$SongSortType;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/innioasis/music/objects/Global;->setScanLock(Z)V

    .line 98
    invoke-direct {p0, v0}, Lcom/innioasis/music/SongListActivity;->switchSortType(Lcom/innioasis/y1/database/Y1Repository$SongSortType;)V

    .line 99
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getMSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;

    return-void
.end method

.method public final isMultiSelect()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/innioasis/music/SongListActivity;->isMultiSelect:Z

    return v0
.end method

.method public longConfirm()V
    .locals 3

    .line 166
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/adapter/SongListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/innioasis/music/SongListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySongListBinding;->spv:Lcom/innioasis/y1/view/ShufflePlaylistItemView;

    invoke-virtual {v0}, Lcom/innioasis/y1/view/ShufflePlaylistItemView;->isSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getMSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    .line 168
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/adapter/SongListAdapter;->getPosition()I

    move-result v1

    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/music/adapter/SongListAdapter;->getTYPE_SINGLE()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/adapter/SongListAdapter;->addItemToSelectedIndex(II)V

    const/4 v0, 0x0

    .line 169
    iput-boolean v0, p0, Lcom/innioasis/music/SongListActivity;->isMultiSelect:Z

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 10

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f1101a2

    .line 193
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->sortBySongName()V

    return v1

    :cond_0
    const v0, 0x7f1101a1

    .line 198
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->sortByFileName()V

    return v1

    :cond_1
    const v0, 0x7f11012a

    .line 203
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 204
    iput-boolean v1, p0, Lcom/innioasis/music/SongListActivity;->isMultiSelect:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 205
    new-instance p1, Lcom/innioasis/music/SongListActivity$select$1;

    invoke-direct {p1, p0}, Lcom/innioasis/music/SongListActivity$select$1;-><init>(Lcom/innioasis/music/SongListActivity;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f110028

    .line 215
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iput-boolean v1, p0, Lcom/innioasis/music/SongListActivity;->isMultiSelect:Z

    .line 217
    new-instance p1, Lcom/innioasis/music/SongListActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/innioasis/music/SongListActivity$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/SongListActivity;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/music/SongListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 220
    new-instance p1, Lcom/innioasis/music/SongListActivity$select$3;

    invoke-direct {p1, p0}, Lcom/innioasis/music/SongListActivity$select$3;-><init>(Lcom/innioasis/music/SongListActivity;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto :goto_0

    :cond_3
    const v0, 0x7f110127

    .line 230
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 231
    invoke-direct {p0}, Lcom/innioasis/music/SongListActivity;->getAdapter()Lcom/innioasis/music/adapter/SongListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/adapter/SongListAdapter;->getSelectedIndexList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 232
    new-instance p1, Lcom/innioasis/y1/utils/DialogUtil;

    move-object v3, p0

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const p2, 0x7f1100c0

    .line 233
    invoke-virtual {p0, p2}, Lcom/innioasis/music/SongListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p2, "getString(R.string.is_delete)"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/innioasis/music/SongListActivity;->isDeleteCallback:Lcom/innioasis/music/SongListActivity$isDeleteCallback$1;

    move-object v5, p2

    check-cast v5, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v4, ""

    invoke-static/range {v2 .. v9}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    .line 234
    new-instance p2, Lcom/innioasis/music/SongListActivity$select$4$1;

    invoke-direct {p2, p0}, Lcom/innioasis/music/SongListActivity$select$4$1;-><init>(Lcom/innioasis/music/SongListActivity;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 238
    invoke-virtual {p1}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    goto :goto_0

    :cond_4
    const-string p1, "sa"

    .line 245
    invoke-virtual {p0, p1}, Lcom/innioasis/music/SongListActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 247
    move-object p1, p0

    check-cast p1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance p1, Lcom/innioasis/music/SongListActivity$select$5;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/innioasis/music/SongListActivity$select$5;-><init>(Lcom/innioasis/music/adapter/SubmenuAdapter$Item;Lcom/innioasis/music/SongListActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, p1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_5
    :goto_0
    return v1
.end method

.method public final setHandler(Landroid/os/Handler;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/innioasis/music/SongListActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method public final setMultiSelect(Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/innioasis/music/SongListActivity;->isMultiSelect:Z

    return-void
.end method
