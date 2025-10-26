.class public final Lcom/innioasis/music/PlaylistsActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "PlaylistsActivity.kt"

# interfaces
.implements Lcom/innioasis/music/util/SubMenuDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/music/PlaylistsActivity$MyViewHolder;,
        Lcom/innioasis/music/PlaylistsActivity$MyAdapter;,
        Lcom/innioasis/music/PlaylistsActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;",
        ">;",
        "Lcom/innioasis/music/util/SubMenuDialog$Callback;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002<=B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\u000e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u0015J\u0008\u0010!\u001a\u00020\u001eH\u0016J\u0008\u0010\"\u001a\u00020\u001eH\u0016J\u0008\u0010#\u001a\u00020\u001eH\u0002J\u0008\u0010$\u001a\u00020\u001eH\u0002J\u0010\u0010%\u001a\u00020\u001e2\u0006\u0010&\u001a\u00020\'H\u0016J\u0010\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0015H\u0002J\u0012\u0010+\u001a\u00020\u001e2\u0008\u0008\u0002\u0010,\u001a\u00020-H\u0002J\u0008\u0010.\u001a\u00020\u0002H\u0016J\u0008\u0010/\u001a\u00020\u001eH\u0016J\u0008\u00100\u001a\u00020\u001eH\u0016J\u0008\u00101\u001a\u00020\u001eH\u0016J\u0010\u00102\u001a\u00020\u00152\u0006\u00103\u001a\u00020\u0015H\u0002J\u0008\u00104\u001a\u00020\u001eH\u0002J\u0018\u00105\u001a\u00020\u000c2\u0006\u00106\u001a\u00020)2\u0006\u00107\u001a\u000208H\u0016J\u0008\u00109\u001a\u00020\u001eH\u0002J\u0010\u0010:\u001a\u00020\u001e2\u0006\u0010;\u001a\u00020\u000cH\u0002R\u001f\u0010\u0005\u001a\u00060\u0006R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\n\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0013\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0016\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\n\u001a\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Lcom/innioasis/music/PlaylistsActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;",
        "Lcom/innioasis/music/util/SubMenuDialog$Callback;",
        "()V",
        "adapter",
        "Lcom/innioasis/music/PlaylistsActivity$MyAdapter;",
        "getAdapter",
        "()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "allowChangePlaylistName",
        "",
        "canChangePlayList",
        "inputMethodDialog",
        "Lcom/innioasis/y1/utils/InputMethodDialog;",
        "getInputMethodDialog",
        "()Lcom/innioasis/y1/utils/InputMethodDialog;",
        "inputMethodDialog$delegate",
        "isMultiSelect",
        "oldName",
        "",
        "subMenuDialog",
        "Lcom/innioasis/music/util/SubMenuDialog;",
        "getSubMenuDialog",
        "()Lcom/innioasis/music/util/SubMenuDialog;",
        "subMenuDialog$delegate",
        "valueLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "antiClockwise",
        "",
        "changeSelectedOptionText",
        "text",
        "clockwise",
        "confirm",
        "createPlaylist",
        "deletePlaylist",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "existDuplicatePlaylistNameCount",
        "",
        "name",
        "getAllPlaylistBySort",
        "sortType",
        "Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "quit",
        "removeFirstAndTailBlank",
        "string",
        "renamePlaylist",
        "select",
        "selectIndex",
        "item",
        "Lcom/innioasis/music/adapter/SubmenuAdapter$Item;",
        "showSortByDialog",
        "startMultiSelect",
        "isAll",
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


# instance fields
.field private final adapter$delegate:Lkotlin/Lazy;

.field private allowChangePlaylistName:Z

.field private canChangePlayList:Z

.field private final inputMethodDialog$delegate:Lkotlin/Lazy;

.field private isMultiSelect:Z

.field private oldName:Ljava/lang/String;

.field private final subMenuDialog$delegate:Lkotlin/Lazy;

.field private valueLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 43
    new-instance v0, Lcom/innioasis/music/PlaylistsActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/PlaylistsActivity$adapter$2;-><init>(Lcom/innioasis/music/PlaylistsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/PlaylistsActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 48
    new-instance v0, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/PlaylistsActivity$subMenuDialog$2;-><init>(Lcom/innioasis/music/PlaylistsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/PlaylistsActivity;->subMenuDialog$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 66
    iput-object v0, p0, Lcom/innioasis/music/PlaylistsActivity;->oldName:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/PlaylistsActivity$inputMethodDialog$2;-><init>(Lcom/innioasis/music/PlaylistsActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/PlaylistsActivity;->inputMethodDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$existDuplicatePlaylistNameCount(Lcom/innioasis/music/PlaylistsActivity;Ljava/lang/String;)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/innioasis/music/PlaylistsActivity;->existDuplicatePlaylistNameCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAdapter(Lcom/innioasis/music/PlaylistsActivity;)Lcom/innioasis/music/PlaylistsActivity$MyAdapter;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAllPlaylistBySort(Lcom/innioasis/music/PlaylistsActivity;Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/innioasis/music/PlaylistsActivity;->getAllPlaylistBySort(Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;)V

    return-void
.end method

.method public static final synthetic access$getOldName$p(Lcom/innioasis/music/PlaylistsActivity;)Ljava/lang/String;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/innioasis/music/PlaylistsActivity;->oldName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getSubMenuDialog(Lcom/innioasis/music/PlaylistsActivity;)Lcom/innioasis/music/util/SubMenuDialog;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isMultiSelect$p(Lcom/innioasis/music/PlaylistsActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/innioasis/music/PlaylistsActivity;->isMultiSelect:Z

    return p0
.end method

.method public static final synthetic access$removeFirstAndTailBlank(Lcom/innioasis/music/PlaylistsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/innioasis/music/PlaylistsActivity;->removeFirstAndTailBlank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAllowChangePlaylistName$p(Lcom/innioasis/music/PlaylistsActivity;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/innioasis/music/PlaylistsActivity;->allowChangePlaylistName:Z

    return-void
.end method

.method public static final synthetic access$setCanChangePlayList$p(Lcom/innioasis/music/PlaylistsActivity;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/innioasis/music/PlaylistsActivity;->canChangePlayList:Z

    return-void
.end method

.method public static final synthetic access$setValueLiveData$p(Lcom/innioasis/music/PlaylistsActivity;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/innioasis/music/PlaylistsActivity;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private final createPlaylist()V
    .locals 12

    .line 338
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getItemCount()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11015c

    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 340
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 344
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playlist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    const/4 v1, 0x1

    .line 346
    :goto_0
    invoke-direct {p0, v6}, Lcom/innioasis/music/PlaylistsActivity;->existDuplicatePlaylistNameCount(Ljava/lang/String;)I

    move-result v4

    if-lt v4, v3, :cond_1

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/2addr v1, v3

    goto :goto_0

    .line 350
    :cond_1
    new-instance v0, Lcom/innioasis/y1/database/Playlist;

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v11, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/innioasis/y1/database/Playlist;-><init>(Ljava/util/UUID;Ljava/lang/String;JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 351
    sget-object v1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v1}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/database/Y1Repository;->addPlaylist(Lcom/innioasis/y1/database/Playlist;)V

    .line 352
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->addItem(Ljava/lang/Object;)V

    .line 353
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setSortPlayListIsChange(Z)V

    .line 354
    iput-boolean v3, p0, Lcom/innioasis/music/PlaylistsActivity;->canChangePlayList:Z

    .line 356
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->hideNone()V

    .line 358
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 359
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final deletePlaylist()V
    .locals 9

    .line 366
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 367
    new-instance v0, Lcom/innioasis/y1/utils/DialogUtil;

    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 368
    new-instance v1, Lcom/innioasis/music/PlaylistsActivity$deletePlaylist$1$1;

    invoke-direct {v1, p0}, Lcom/innioasis/music/PlaylistsActivity$deletePlaylist$1$1;-><init>(Lcom/innioasis/music/PlaylistsActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/DialogUtil;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    const v1, 0x7f1100c0

    .line 373
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(R.string.is_delete)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    new-instance v1, Lcom/innioasis/music/PlaylistsActivity$deletePlaylist$1$2;

    invoke-direct {v1, p0}, Lcom/innioasis/music/PlaylistsActivity$deletePlaylist$1$2;-><init>(Lcom/innioasis/music/PlaylistsActivity;)V

    move-object v4, v1

    check-cast v4, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v3, ""

    move-object v1, v0

    .line 372
    invoke-static/range {v1 .. v8}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method private final existDuplicatePlaylistNameCount(Ljava/lang/String;)I
    .locals 4

    .line 172
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 173
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getItemByPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/innioasis/y1/database/Playlist;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private final getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    return-object v0
.end method

.method private final getAllPlaylistBySort(Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;)V
    .locals 2

    .line 149
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/database/Y1Repository;->getPlayListBySort(Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;)Ljava/util/List;

    move-result-object p1

    .line 150
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->showNone()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->hideNone()V

    .line 152
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;->playlist:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 154
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.MutableList<com.innioasis.y1.database.Playlist>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->setItemList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic getAllPlaylistBySort$default(Lcom/innioasis/music/PlaylistsActivity;Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 145
    sget-object p1, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;->Companion:Lcom/innioasis/y1/database/Y1Repository$SortPlayListType$Companion;

    .line 146
    sget-object p2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getSortPlayList()I

    move-result p2

    .line 145
    invoke-virtual {p1, p2}, Lcom/innioasis/y1/database/Y1Repository$SortPlayListType$Companion;->fromType(I)Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;

    move-result-object p1

    .line 144
    :cond_0
    invoke-direct {p0, p1}, Lcom/innioasis/music/PlaylistsActivity;->getAllPlaylistBySort(Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;)V

    return-void
.end method

.method private final getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity;->inputMethodDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/InputMethodDialog;

    return-object v0
.end method

.method private final getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/innioasis/music/PlaylistsActivity;->subMenuDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/util/SubMenuDialog;

    return-object v0
.end method

.method private final removeFirstAndTailBlank(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 161
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

    .line 164
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

    .line 167
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

.method private final renamePlaylist()V
    .locals 3

    .line 404
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getSelectItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/database/Playlist;

    .line 405
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/InputMethodDialog;->show()V

    if-eqz v0, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;

    move-result-object v1

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/utils/InputMethodDialog;->setEditText(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/innioasis/music/PlaylistsActivity;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    if-nez v1, :cond_0

    const-string v1, "valueLiveData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 410
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Playlist;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/PlaylistsActivity;->oldName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 411
    iput-boolean v0, p0, Lcom/innioasis/music/PlaylistsActivity;->allowChangePlaylistName:Z

    .line 413
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final showSortByDialog()V
    .locals 10

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f1101a6

    .line 285
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f1101a3

    .line 286
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f1101a9

    .line 287
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x7f1101a7

    .line 288
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f1101a8

    .line 289
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 284
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 292
    new-instance v0, Lcom/innioasis/music/util/SubMenuDialog;

    move-object v4, p0

    check-cast v4, Landroid/app/Activity;

    new-instance v1, Lcom/innioasis/music/PlaylistsActivity$showSortByDialog$1;

    invoke-direct {v1, p0}, Lcom/innioasis/music/PlaylistsActivity$showSortByDialog$1;-><init>(Lcom/innioasis/music/PlaylistsActivity;)V

    move-object v6, v1

    check-cast v6, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 305
    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    return-void
.end method

.method private final startMultiSelect(Z)V
    .locals 7

    .line 313
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 314
    iput-boolean v0, p0, Lcom/innioasis/music/PlaylistsActivity;->isMultiSelect:Z

    .line 315
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;

    const/4 v4, 0x0

    invoke-direct {v0, p1, p0, v4}, Lcom/innioasis/music/PlaylistsActivity$startMultiSelect$1;-><init>(ZLcom/innioasis/music/PlaylistsActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 5

    .line 194
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;->playlist:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "vb.playlist"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toPrevious$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    return-void
.end method

.method public final changeSelectedOptionText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-boolean v0, p0, Lcom/innioasis/music/PlaylistsActivity;->allowChangePlaylistName:Z

    if-nez v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getSelectItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/database/Playlist;

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {v0, p1}, Lcom/innioasis/y1/database/Playlist;->setName(Ljava/lang/String;)V

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object p1

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getSelectPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public clockwise()V
    .locals 5

    .line 190
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;->playlist:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "vb.playlist"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toNext$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    return-void
.end method

.method public confirm()V
    .locals 6

    .line 203
    iget-boolean v0, p0, Lcom/innioasis/music/PlaylistsActivity;->isMultiSelect:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getSelectPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->addOrRemoveMultiSelectIndex$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;IZILjava/lang/Object;)V

    .line 205
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;->playlist:Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "vb.playlist"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toNext$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getSelectItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/database/Playlist;

    if-eqz v0, :cond_1

    .line 209
    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/innioasis/music/PlayListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 210
    invoke-virtual {v0}, Lcom/innioasis/y1/database/Playlist;->getPlaylistId()Ljava/util/UUID;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    const-string v2, "playlistId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v1}, Lcom/innioasis/music/PlaylistsActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    sget-object v0, Lcom/innioasis/music/PlaylistsActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 246
    iget-boolean p1, p0, Lcom/innioasis/music/PlaylistsActivity;->isMultiSelect:Z

    if-eqz p1, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 248
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->finish()V

    :goto_0
    const/4 p1, 0x0

    .line 252
    iput-boolean p1, p0, Lcom/innioasis/music/PlaylistsActivity;->isMultiSelect:Z

    :cond_1
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;
    .locals 2

    .line 40
    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 2

    const v0, 0x7f11012e

    .line 133
    invoke-virtual {p0, v0}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.music_playlists)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/PlaylistsActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/innioasis/music/PlaylistsActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPlaylistsBinding;->playlist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 135
    invoke-static {p0, v0, v1, v0}, Lcom/innioasis/music/PlaylistsActivity;->getAllPlaylistBySort$default(Lcom/innioasis/music/PlaylistsActivity;Lcom/innioasis/y1/database/Y1Repository$SortPlayListType;ILjava/lang/Object;)V

    return-void
.end method

.method public longConfirm()V
    .locals 3

    .line 218
    iget-boolean v0, p0, Lcom/innioasis/music/PlaylistsActivity;->canChangePlayList:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 220
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getSortPlayListIsChange()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const v2, 0x7f11019f

    .line 221
    invoke-virtual {p0, v2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    :goto_0
    const v2, 0x7f11012a

    .line 227
    invoke-virtual {p0, v2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f110028

    .line 228
    invoke-virtual {p0, v2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f110134

    .line 229
    invoke-virtual {p0, v2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f110078

    .line 230
    invoke-virtual {p0, v2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f110169

    .line 231
    invoke-virtual {p0, v2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/innioasis/music/util/SubMenuDialog;->setList(Ljava/util/List;)V

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    .line 237
    iput-boolean v1, p0, Lcom/innioasis/music/PlaylistsActivity;->isMultiSelect:Z

    .line 238
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v0

    .line 239
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->getAdapter()Lcom/innioasis/music/PlaylistsActivity$MyAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->getSelectPosition()I

    move-result v2

    .line 238
    invoke-virtual {v0, v2, v1}, Lcom/innioasis/music/PlaylistsActivity$MyAdapter;->addOrRemoveMultiSelectIndex(IZ)V

    :cond_2
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public select(ILcom/innioasis/music/adapter/SubmenuAdapter$Item;)Z
    .locals 2

    const-string p1, "item"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p2}, Lcom/innioasis/music/adapter/SubmenuAdapter$Item;->getString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f11019f

    .line 265
    invoke-virtual {p0, p2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 266
    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->showSortByDialog()V

    return v0

    :cond_0
    const p2, 0x7f11012a

    .line 270
    invoke-virtual {p0, p2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lcom/innioasis/music/PlaylistsActivity;->startMultiSelect(Z)V

    goto :goto_0

    :cond_1
    const p2, 0x7f110028

    .line 271
    invoke-virtual {p0, p2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, v1}, Lcom/innioasis/music/PlaylistsActivity;->startMultiSelect(Z)V

    goto :goto_0

    :cond_2
    const p2, 0x7f110134

    .line 272
    invoke-virtual {p0, p2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->createPlaylist()V

    goto :goto_0

    :cond_3
    const p2, 0x7f110078

    .line 273
    invoke-virtual {p0, p2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->deletePlaylist()V

    goto :goto_0

    :cond_4
    const p2, 0x7f110169

    .line 274
    invoke-virtual {p0, p2}, Lcom/innioasis/music/PlaylistsActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/innioasis/music/PlaylistsActivity;->renamePlaylist()V

    :cond_5
    :goto_0
    return v1
.end method
