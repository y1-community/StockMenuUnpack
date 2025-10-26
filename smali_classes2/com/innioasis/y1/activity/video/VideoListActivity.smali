.class public final Lcom/innioasis/y1/activity/video/VideoListActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "VideoListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;,
        Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;,
        Lcom/innioasis/y1/activity/video/VideoListActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityVideoListBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,1413:1\n1549#2:1414\n1620#2,3:1415\n1549#2:1418\n1620#2,3:1419\n1851#2,2:1422\n1549#2:1424\n1620#2,3:1425\n766#2:1428\n857#2,2:1429\n1549#2:1431\n1620#2,3:1432\n1549#2:1439\n1620#2,3:1440\n1549#2:1447\n1620#2,3:1448\n1851#2,2:1451\n37#3:1435\n36#3,3:1436\n37#3:1443\n36#3,3:1444\n13543#4,2:1453\n13543#4,2:1455\n*S KotlinDebug\n*F\n+ 1 VideoListActivity.kt\ncom/innioasis/y1/activity/video/VideoListActivity\n*L\n280#1:1414\n280#1:1415,3\n302#1:1418\n302#1:1419,3\n319#1:1422,2\n364#1:1424\n364#1:1425,3\n381#1:1428\n381#1:1429,2\n383#1:1431\n383#1:1432,3\n404#1:1439\n404#1:1440,3\n425#1:1447\n425#1:1448,3\n492#1:1451,2\n384#1:1435\n384#1:1436,3\n405#1:1443\n405#1:1444,3\n1349#1:1453,2\n1367#1:1455,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0085\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0011\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0001\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002KLB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)J\u0008\u0010*\u001a\u00020%H\u0017J\u0008\u0010+\u001a\u00020%H\u0017J\u0008\u0010,\u001a\u00020%H\u0016J\u000e\u0010-\u001a\u00020%2\u0006\u0010&\u001a\u00020\'J\u0010\u0010.\u001a\u00020%2\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020\u00152\u0006\u00102\u001a\u00020\u0019H\u0002J\u0008\u00103\u001a\u00020%H\u0002J\u0008\u00104\u001a\u00020%H\u0002J\u0008\u00105\u001a\u00020%H\u0002J\u0008\u00106\u001a\u00020\u0002H\u0016J\u0008\u00107\u001a\u00020%H\u0016J#\u00108\u001a\u0008\u0012\u0004\u0012\u00020\'0\u001f2\u000e\u00109\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010:H\u0002\u00a2\u0006\u0002\u0010;J\u0008\u0010<\u001a\u00020%H\u0016J\u0008\u0010=\u001a\u00020%H\u0016J\u0010\u0010>\u001a\u00020\u00192\u0006\u0010?\u001a\u00020\u0019H\u0002J\u0008\u0010@\u001a\u00020%H\u0002J\u0008\u0010A\u001a\u00020%H\u0002J\u0010\u0010B\u001a\u00020C2\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\u0008\u0010D\u001a\u00020%H\u0003J\u0008\u0010E\u001a\u00020%H\u0002J\u0010\u0010F\u001a\u00020%2\u0006\u0010G\u001a\u00020\u0015H\u0002J\u0018\u0010H\u001a\u00020%2\u0006\u0010I\u001a\u00020\u00152\u0006\u0010J\u001a\u00020\u0015H\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008#\u0010\t\u001a\u0004\u0008!\u0010\"\u00a8\u0006M"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/video/VideoListActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityVideoListBinding;",
        "()V",
        "adapter",
        "com/innioasis/y1/activity/video/VideoListActivity$adapter$2$1",
        "getAdapter",
        "()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "getAnimator",
        "()Landroid/animation/ValueAnimator;",
        "animator$delegate",
        "browseHistoryStack",
        "Lkotlin/collections/ArrayDeque;",
        "Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;",
        "isMultiSelect",
        "",
        "itemType",
        "",
        "nowPlaylist",
        "Lcom/innioasis/y1/database/video/VideoPlaylist;",
        "oldName",
        "",
        "subMenuDialog",
        "Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;",
        "valueLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "videoMainList",
        "",
        "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
        "getVideoMainList",
        "()Ljava/util/List;",
        "videoMainList$delegate",
        "addToPlayListByFile",
        "",
        "file",
        "Ljava/io/File;",
        "playlistId",
        "",
        "antiClockwise",
        "clockwise",
        "confirm",
        "deleteVideoByFile",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "existDuplicatePlaylistNameCount",
        "name",
        "getAllVideoBySort",
        "getPlayListBySort",
        "getVideoBySort",
        "getViewBinding",
        "initView",
        "isFolderOrVideo",
        "files",
        "",
        "([Ljava/io/File;)Ljava/util/List;",
        "longConfirm",
        "quit",
        "removeFirstAndTailBlank",
        "string",
        "showAllVideoDialog",
        "showFolderDialog",
        "showInputMethodDialog",
        "Lcom/innioasis/y1/utils/InputMethodDialog;",
        "showPlaylistDialog",
        "showVideoListDialog",
        "upDateRecycler",
        "num",
        "updateRecycler",
        "oldPos",
        "newPos",
        "BrowseItem",
        "NavigationStep",
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

.field private final animator$delegate:Lkotlin/Lazy;

.field private final browseHistoryStack:Lkotlin/collections/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/ArrayDeque<",
            "Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;",
            ">;"
        }
    .end annotation
.end field

.field private isMultiSelect:Z

.field private itemType:I

.field private nowPlaylist:Lcom/innioasis/y1/database/video/VideoPlaylist;

.field private oldName:Ljava/lang/String;

.field private subMenuDialog:Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

.field private valueLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final videoMainList$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$PXKY6kHattZLdyu2MrtNAX5i4OI(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->addToPlayListByFile$lambda-14(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b-IxPVe7fnTbQGde4IetJa9J-UM(Ljava/io/File;)Z
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->deleteVideoByFile$lambda-17(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 48
    new-instance v0, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 168
    new-instance v0, Lcom/innioasis/y1/activity/video/VideoListActivity$videoMainList$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/video/VideoListActivity$videoMainList$2;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->videoMainList$delegate:Lkotlin/Lazy;

    .line 196
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->browseHistoryStack:Lkotlin/collections/ArrayDeque;

    const-string v0, ""

    .line 750
    iput-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->oldName:Ljava/lang/String;

    .line 816
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 1374
    new-instance v0, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/video/VideoListActivity$animator$2;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->animator$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$existDuplicatePlaylistNameCount(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)I
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->existDuplicatePlaylistNameCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAdapter(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAllVideoBySort(Lcom/innioasis/y1/activity/video/VideoListActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAllVideoBySort()V

    return-void
.end method

.method public static final synthetic access$getAnimator(Lcom/innioasis/y1/activity/video/VideoListActivity;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getItemType$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    return p0
.end method

.method public static final synthetic access$getNowPlaylist$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/database/video/VideoPlaylist;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->nowPlaylist:Lcom/innioasis/y1/database/video/VideoPlaylist;

    return-object p0
.end method

.method public static final synthetic access$getPlayListBySort(Lcom/innioasis/y1/activity/video/VideoListActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getPlayListBySort()V

    return-void
.end method

.method public static final synthetic access$getSubMenuDialog$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->subMenuDialog:Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    return-object p0
.end method

.method public static final synthetic access$getVideoBySort(Lcom/innioasis/y1/activity/video/VideoListActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVideoBySort()V

    return-void
.end method

.method public static final synthetic access$isMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->isMultiSelect:Z

    return p0
.end method

.method public static final synthetic access$removeFirstAndTailBlank(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->removeFirstAndTailBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setMultiSelect$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->isMultiSelect:Z

    return-void
.end method

.method public static final synthetic access$setValueLiveData$p(Lcom/innioasis/y1/activity/video/VideoListActivity;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$showInputMethodDialog(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)Lcom/innioasis/y1/utils/InputMethodDialog;
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showInputMethodDialog(Ljava/lang/String;)Lcom/innioasis/y1/utils/InputMethodDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$upDateRecycler(Lcom/innioasis/y1/activity/video/VideoListActivity;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->upDateRecycler(I)V

    return-void
.end method

.method private static final addToPlayListByFile$lambda-14(Ljava/io/File;)Z
    .locals 2

    .line 1346
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/innioasis/y1/database/Y1Repository;->endIsVideo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final deleteVideoByFile$lambda-17(Ljava/io/File;)Z
    .locals 2

    .line 1364
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/innioasis/y1/database/Y1Repository;->endIsVideo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final existDuplicatePlaylistNameCount(Ljava/lang/String;)I
    .locals 3

    .line 1016
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 1017
    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private final getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    return-object v0
.end method

.method private final getAllVideoBySort()V
    .locals 13

    .line 739
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->getAllVideoBySort()Ljava/util/List;

    move-result-object v0

    .line 740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 741
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/innioasis/y1/database/video/VideoInfo;

    .line 742
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/innioasis/y1/database/video/VideoInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/innioasis/y1/database/video/VideoInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v6}, Lcom/innioasis/y1/database/video/VideoInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {v6}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x78

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 745
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    return-void
.end method

.method private final getAnimator()Landroid/animation/ValueAnimator;
    .locals 2

    .line 1374
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->animator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-animator>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private final getPlayListBySort()V
    .locals 14

    .line 1005
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->getVideoPlayListBySort()Ljava/util/List;

    move-result-object v0

    .line 1006
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 1007
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/database/video/VideoPlaylist;

    .line 1008
    new-instance v13, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v2}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x7e

    const/4 v12, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1010
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    return-void
.end method

.method private final getVideoBySort()V
    .locals 13

    .line 1167
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->nowPlaylist:Lcom/innioasis/y1/database/video/VideoPlaylist;

    if-nez v0, :cond_0

    return-void

    .line 1168
    :cond_0
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->nowPlaylist:Lcom/innioasis/y1/database/video/VideoPlaylist;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/database/Y1Repository;->getVideoToVideoPlayListNameBySort(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 1170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/innioasis/y1/database/video/VideoInfo;

    .line 1171
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/innioasis/y1/database/video/VideoInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/innioasis/y1/database/video/VideoInfo;->getPinyinName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    new-instance v2, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v6}, Lcom/innioasis/y1/database/video/VideoInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {v6}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x78

    const/4 v12, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v12}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1174
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    return-void
.end method

.method private final getVideoMainList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->videoMainList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final isFolderOrVideo([Ljava/io/File;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    if-eqz p1, :cond_2

    .line 541
    invoke-static {p1}, Lkotlin/jvm/internal/ArrayIteratorKt;->iterator([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 542
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 543
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      isDirectory"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 545
    :cond_1
    sget-object v2, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/innioasis/y1/database/Y1Repository;->endIsVideo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 546
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "      endIsVideo"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final removeFirstAndTailBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 820
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 821
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, " "

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ltz v0, :cond_1

    .line 824
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    if-gt v1, v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 827
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, ""

    :goto_2
    return-object p1
.end method

.method private final showAllVideoDialog()V
    .locals 8

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 566
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f1101a1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.song_menu_sort_by_filename)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f11012a

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.music_multi_select)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f110028

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.all_select)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f110127

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.music_delete_file)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->getVideoPlayList()Ljava/util/List;

    move-result-object v0

    .line 573
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/database/video/VideoPlaylist;

    .line 575
    new-instance v2, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    .line 576
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f110022

    invoke-virtual {p0, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 575
    invoke-direct {v2, v4, v1}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;)V

    .line 574
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 581
    :cond_0
    new-instance v0, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 582
    new-instance v1, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/activity/video/VideoListActivity$showAllVideoDialog$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    move-object v4, v1

    check-cast v4, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    .line 581
    invoke-direct/range {v1 .. v7}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->subMenuDialog:Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    .line 734
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;->show()V

    return-void
.end method

.method private final showFolderDialog()V
    .locals 8

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 1183
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f11012a

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.music_multi_select)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1184
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f110028

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.all_select)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1186
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f110127

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.music_delete_file)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1188
    sget-object v0, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->getVideoPlayList()Ljava/util/List;

    move-result-object v0

    .line 1189
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/database/video/VideoPlaylist;

    .line 1191
    new-instance v2, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    .line 1192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f110022

    invoke-virtual {p0, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1191
    invoke-direct {v2, v4, v1}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;)V

    .line 1190
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1197
    :cond_0
    new-instance v0, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    .line 1198
    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 1200
    new-instance v1, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/activity/video/VideoListActivity$showFolderDialog$subMenuVideoDialog$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    move-object v4, v1

    check-cast v4, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    .line 1197
    invoke-direct/range {v1 .. v7}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1334
    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;->show()V

    return-void
.end method

.method private final showInputMethodDialog(Ljava/lang/String;)Lcom/innioasis/y1/utils/InputMethodDialog;
    .locals 7

    .line 753
    new-instance v6, Lcom/innioasis/y1/utils/InputMethodDialog;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    new-instance v0, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$showInputMethodDialog$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lcom/innioasis/y1/utils/InputMethodDialog$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/innioasis/y1/utils/InputMethodDialog;-><init>(Landroid/app/Activity;Lcom/innioasis/y1/utils/InputMethodDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0xff

    .line 807
    invoke-virtual {v6, v0}, Lcom/innioasis/y1/utils/InputMethodDialog;->setCharMaxCount(I)V

    .line 808
    invoke-virtual {v6, p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->setEditText(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v6}, Lcom/innioasis/y1/utils/InputMethodDialog;->show()V

    .line 811
    iput-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->oldName:Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-object v6
.end method

.method private final showPlaylistDialog()V
    .locals 8

    .line 835
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 836
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f11019f

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.song_menu_sort_by)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f11012a

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.music_multi_select)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f110028

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.all_select)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f110134

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.new_playlist)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f110078

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.delete_playlist)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f110169

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.rename)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    new-instance v0, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 843
    new-instance v1, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/activity/video/VideoListActivity$showPlaylistDialog$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    move-object v4, v1

    check-cast v4, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    .line 842
    invoke-direct/range {v1 .. v7}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->subMenuDialog:Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    .line 1000
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;->show()V

    return-void
.end method

.method private final showVideoListDialog()V
    .locals 8

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/List;

    .line 1032
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f1101a1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.song_menu_sort_by_filename)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1034
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f11012a

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.music_multi_select)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1035
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f110028

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.all_select)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    new-instance v0, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;

    const v1, 0x7f1101ce

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "getString(R.string.video_remove)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v4, v2}, Lcom/innioasis/y1/activity/video/SubmenuVideoAdapter$Item;-><init>(Ljava/lang/String;Lcom/innioasis/y1/database/video/VideoPlaylist;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v0, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    .line 1039
    new-instance v1, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/activity/video/VideoListActivity$showVideoListDialog$1;-><init>(Lcom/innioasis/y1/activity/video/VideoListActivity;)V

    move-object v4, v1

    check-cast v4, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, v0

    .line 1038
    invoke-direct/range {v1 .. v7}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/y1/activity/video/SubMenuVideoDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->subMenuDialog:Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;

    .line 1162
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/SubMenuVideoDialog;->show()V

    return-void
.end method

.method private final upDateRecycler(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 526
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyDataSetChanged()V

    goto :goto_0

    .line 528
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyItemChanged(I)V

    .line 529
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyItemChanged(I)V

    .line 531
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private final updateRecycler(II)V
    .locals 3

    if-ne p1, p2, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    .line 246
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyItemChanged(I)V

    :cond_2
    if-ltz p2, :cond_3

    .line 247
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyItemChanged(I)V

    .line 249
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method


# virtual methods
.method public final addToPlayListByFile(Ljava/io/File;J)V
    .locals 4

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1339
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->getVideoDao()Lcom/innioasis/y1/database/video/VideoInfoDao;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "file.path"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/innioasis/y1/database/video/VideoInfoDao;->getVideoByPath(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1341
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u6dfb\u52a0 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/VideoInfo;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u5230 \u64ad\u653e\u5217\u8868 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1342
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {p1}, Lcom/innioasis/y1/database/video/VideoInfo;->getVideo_id()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/innioasis/y1/database/Y1Repository;->addVideoToPlayList(JJ)V

    goto :goto_1

    .line 1345
    :cond_0
    sget-object v0, Lcom/innioasis/y1/activity/video/VideoListActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/innioasis/y1/activity/video/VideoListActivity$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1453
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "it"

    .line 1350
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2, p3}, Lcom/innioasis/y1/activity/video/VideoListActivity;->addToPlayListByFile(Ljava/io/File;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public antiClockwise()V
    .locals 3

    .line 234
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v0

    .line 235
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setMark(I)V

    .line 236
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->updateRecycler(II)V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 227
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v0

    .line 228
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setMark(I)V

    .line 229
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->updateRecycler(II)V

    return-void
.end method

.method public confirm()V
    .locals 18

    move-object/from16 v0, p0

    .line 258
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 260
    :cond_0
    iget-boolean v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->isMultiSelect:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v3}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->isMultiSelect()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setMultiSelect(Z)V

    .line 262
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyItemChanged(I)V

    return-void

    .line 266
    :cond_1
    iget v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    const-string v3, "it.name"

    const/16 v4, 0x15

    const/4 v5, 0x3

    const/16 v6, 0xa

    const/4 v7, 0x0

    if-eqz v1, :cond_11

    const-string v8, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    const-string v9, "playList"

    const-string v10, "filePath"

    if-eq v1, v2, :cond_e

    if-eq v1, v5, :cond_5

    const/16 v2, 0x16

    if-eq v1, v4, :cond_2

    if-eq v1, v2, :cond_e

    goto/16 :goto_a

    .line 414
    :cond_2
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->browseHistoryStack:Lkotlin/collections/ArrayDeque;

    .line 415
    new-instance v3, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;

    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v5

    iget v8, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getStateBarLeftText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;-><init>(Ljava/util/List;IILjava/lang/String;)V

    .line 414
    invoke-virtual {v1, v3}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 420
    sget-object v3, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v3}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/innioasis/y1/database/Y1Repository;->getVideoToVideoPlayListNameBySort(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v4}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getVideoPlayList()Lcom/innioasis/y1/database/video/VideoPlaylist;

    move-result-object v4

    iput-object v4, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->nowPlaylist:Lcom/innioasis/y1/database/video/VideoPlaylist;

    .line 425
    check-cast v3, Ljava/lang/Iterable;

    .line 1447
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 1448
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1449
    move-object v11, v5

    check-cast v11, Lcom/innioasis/y1/database/video/VideoInfo;

    .line 426
    new-instance v5, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 427
    sget-object v6, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v11}, Lcom/innioasis/y1/database/video/VideoInfo;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 428
    new-instance v10, Ljava/io/File;

    invoke-virtual {v11}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x78

    const/16 v17, 0x0

    move-object v8, v5

    .line 426
    invoke-direct/range {v8 .. v17}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1450
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 432
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v3

    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v3, v5}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    .line 433
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showNone()V

    .line 436
    :cond_4
    invoke-virtual {v0, v7}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setMark(I)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object v3, v3, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 438
    iput v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    .line 440
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 348
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getTargetFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 351
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 353
    iget-object v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->browseHistoryStack:Lkotlin/collections/ArrayDeque;

    .line 354
    new-instance v4, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;

    .line 355
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v8

    invoke-virtual {v8}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/lang/Iterable;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v9

    .line 357
    iget v10, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getStateBarLeftText()Ljava/lang/String;

    move-result-object v11

    .line 354
    invoke-direct {v4, v8, v9, v10, v11}, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;-><init>(Ljava/util/List;IILjava/lang/String;)V

    .line 353
    invoke-virtual {v2, v4}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "file.name"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->isFolderOrVideo([Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 364
    check-cast v1, Ljava/lang/Iterable;

    .line 1424
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1425
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1426
    move-object v10, v4

    check-cast v10, Ljava/io/File;

    .line 365
    new-instance v4, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    sget-object v6, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7c

    const/16 v17, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v17}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1427
    :cond_6
    check-cast v2, Ljava/util/List;

    .line 367
    invoke-virtual {v0, v7}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setMark(I)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 369
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v1, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    .line 370
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showNone()V

    .line 373
    :cond_7
    iput v5, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    goto/16 :goto_a

    .line 376
    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1428
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 1429
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 381
    invoke-virtual {v5}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getTargetFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_9

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1430
    :cond_b
    check-cast v3, Ljava/util/List;

    .line 383
    check-cast v3, Ljava/lang/Iterable;

    .line 1431
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 1432
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1433
    check-cast v4, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 383
    invoke-virtual {v4}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getTargetFile()Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1434
    :cond_c
    check-cast v1, Ljava/util/List;

    .line 384
    check-cast v1, Ljava/util/Collection;

    new-array v3, v7, [Ljava/lang/String;

    .line 1438
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/String;

    .line 384
    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 376
    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    :cond_d
    const-string v1, "error"

    .line 390
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showToast(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 396
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getTargetFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 399
    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-class v4, Lcom/innioasis/y1/activity/video/VideoActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 1439
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1440
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1441
    check-cast v4, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 404
    invoke-virtual {v4}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->getTargetFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_f
    const/4 v4, 0x0

    :goto_6
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1442
    :cond_10
    check-cast v3, Ljava/util/List;

    .line 405
    check-cast v3, Ljava/util/Collection;

    new-array v1, v7, [Ljava/lang/String;

    .line 1446
    invoke-interface {v3, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, [Ljava/lang/String;

    .line 405
    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 407
    invoke-virtual {v0, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 270
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    if-eq v1, v5, :cond_12

    .line 271
    iget-object v1, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->browseHistoryStack:Lkotlin/collections/ArrayDeque;

    .line 272
    new-instance v8, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;

    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v9

    invoke-virtual {v9}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v10

    iget v11, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getStateBarLeftText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;-><init>(Ljava/util/List;IILjava/lang/String;)V

    .line 271
    invoke-virtual {v1, v8}, Lkotlin/collections/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v1

    if-eqz v1, :cond_1a

    if-eq v1, v2, :cond_17

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    if-eq v1, v5, :cond_13

    goto/16 :goto_a

    .line 340
    :cond_13
    const-class v1, Lcom/innioasis/y1/activity/video/SearchVideoActivity;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->toActivity(Ljava/lang/Class;)V

    goto/16 :goto_a

    .line 315
    :cond_14
    new-instance v1, Ljava/io/File;

    const-string v4, "/storage/sdcard0"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->isFolderOrVideo([Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    .line 318
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 319
    check-cast v1, Ljava/lang/Iterable;

    .line 1422
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/io/File;

    .line 320
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v8, "/storage/sdcard0/Themes"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 322
    new-instance v6, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 323
    sget-object v8, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7c

    const/16 v17, 0x0

    move-object v8, v6

    .line 322
    invoke-direct/range {v8 .. v17}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 321
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 330
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v1, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    .line 331
    invoke-virtual {v0, v7}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setMark(I)V

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 333
    iput v5, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    const v1, 0x7f1101c9

    .line 335
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.video_list_folders)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 299
    :cond_17
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository;->getVideoPlayListBySort()Ljava/util/List;

    move-result-object v1

    .line 302
    check-cast v1, Ljava/lang/Iterable;

    .line 1418
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 1419
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1420
    move-object v12, v3

    check-cast v12, Lcom/innioasis/y1/database/video/VideoPlaylist;

    .line 302
    new-instance v3, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    invoke-virtual {v12}, Lcom/innioasis/y1/database/video/VideoPlaylist;->getPlaylistName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x74

    const/16 v17, 0x0

    move-object v8, v3

    invoke-direct/range {v8 .. v17}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1421
    :cond_18
    check-cast v2, Ljava/util/List;

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v1, v3}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    .line 304
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showNone()V

    .line 307
    :cond_19
    invoke-virtual {v0, v7}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setMark(I)V

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 309
    iput v4, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    const v1, 0x7f1101ca

    .line 311
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.video_list_playlist)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 279
    :cond_1a
    sget-object v1, Lcom/innioasis/y1/database/Y1Repository;->Companion:Lcom/innioasis/y1/database/Y1Repository$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository$Companion;->get()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/database/Y1Repository;->getAllVideoBySort()Ljava/util/List;

    move-result-object v1

    .line 280
    check-cast v1, Ljava/lang/Iterable;

    .line 1414
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1415
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1416
    move-object v11, v4

    check-cast v11, Lcom/innioasis/y1/database/video/VideoInfo;

    .line 281
    new-instance v4, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 282
    sget-object v5, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v11}, Lcom/innioasis/y1/database/video/VideoInfo;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->processFileExtensions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 283
    new-instance v10, Ljava/io/File;

    invoke-virtual {v11}, Lcom/innioasis/y1/database/video/VideoInfo;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x78

    const/16 v17, 0x0

    move-object v8, v4

    .line 281
    invoke-direct/range {v8 .. v17}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/innioasis/y1/database/video/VideoInfo;Lcom/innioasis/y1/database/video/VideoPlaylist;ZLandroid/graphics/Bitmap;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1417
    :cond_1b
    check-cast v3, Ljava/util/List;

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v1, v4}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    .line 288
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showNone()V

    .line 291
    :cond_1c
    invoke-virtual {v0, v7}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setMark(I)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual/range {p0 .. p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getMark()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 293
    iput v2, v0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    const v1, 0x7f1101c8

    .line 295
    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.video_list_all)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    :cond_1d
    :goto_a
    return-void
.end method

.method public final deleteVideoByFile(Ljava/io/File;)V
    .locals 4

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1357
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->getVideoDao()Lcom/innioasis/y1/database/video/VideoInfoDao;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file.path"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/innioasis/y1/database/video/VideoInfoDao;->getVideoByPath(Ljava/lang/String;)Lcom/innioasis/y1/database/video/VideoInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1359
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/database/video/VideoInfo;->getVideo_id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/innioasis/y1/database/Y1Repository;->deleteVideo(J)V

    .line 1361
    :cond_0
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/database/Y1Repository;->deleteSongsOfDir(Ljava/io/File;)V

    goto :goto_1

    .line 1363
    :cond_1
    sget-object v0, Lcom/innioasis/y1/activity/video/VideoListActivity$$ExternalSyntheticLambda1;->INSTANCE:Lcom/innioasis/y1/activity/video/VideoListActivity$$ExternalSyntheticLambda1;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 1455
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    const-string v3, "it"

    .line 1368
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity;->deleteVideoByFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 3

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    sget-object v0, Lcom/innioasis/y1/activity/video/VideoListActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 488
    :cond_0
    iget-boolean p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->isMultiSelect:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 489
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->isMultiSelect:Z

    .line 490
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 492
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1451
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;

    .line 493
    invoke-virtual {v1, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$BrowseItem;->setMultiSelect(Z)V

    goto :goto_0

    .line 495
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->notifyDataSetChanged()V

    return-void

    .line 498
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->browseHistoryStack:Lkotlin/collections/ArrayDeque;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    .line 500
    iget-object p1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->browseHistoryStack:Lkotlin/collections/ArrayDeque;

    invoke-virtual {p1}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;

    .line 501
    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;->getFocusedPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setMark(I)V

    .line 502
    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;->getType()I

    move-result v1

    iput v1, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    .line 503
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;->getCurrentItems()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    .line 504
    invoke-virtual {p1}, Lcom/innioasis/y1/activity/video/VideoListActivity$NavigationStep;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->upDateRecycler(I)V

    .line 506
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->hideNone()V

    goto :goto_1

    .line 509
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->finish()V

    :goto_1
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityVideoListBinding;
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 3

    .line 213
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 214
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 215
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 216
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityVideoListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/16 v2, 0xa

    .line 217
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setInitialPrefetchItemCount(I)V

    .line 216
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 219
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getVideoMainList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->setList(Ljava/util/Collection;)V

    const v0, 0x7f1100e3

    .line 221
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.main_video)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    return-void
.end method

.method public longConfirm()V
    .locals 3

    .line 449
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " longConfirm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget v0, p0, Lcom/innioasis/y1/activity/video/VideoListActivity;->itemType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 470
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 473
    :cond_2
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showVideoListDialog()V

    goto :goto_0

    .line 466
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showPlaylistDialog()V

    goto :goto_0

    .line 477
    :cond_4
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showFolderDialog()V

    goto :goto_0

    .line 459
    :cond_5
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->getAdapter()Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/video/VideoListActivity$adapter$2$1;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    .line 462
    :cond_6
    invoke-direct {p0}, Lcom/innioasis/y1/activity/video/VideoListActivity;->showAllVideoDialog()V

    :goto_0
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
