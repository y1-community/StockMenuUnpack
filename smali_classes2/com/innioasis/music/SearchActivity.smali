.class public final Lcom/innioasis/music/SearchActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/music/SearchActivity$Item;,
        Lcom/innioasis/music/SearchActivity$MyViewHolder;,
        Lcom/innioasis/music/SearchActivity$MyAdapter;,
        Lcom/innioasis/music/SearchActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivitySearchBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchActivity.kt\ncom/innioasis/music/SearchActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,519:1\n1851#2,2:520\n1851#2,2:522\n*S KotlinDebug\n*F\n+ 1 SearchActivity.kt\ncom/innioasis/music/SearchActivity\n*L\n145#1:520,2\n154#1:522,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000w\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0001\u0011\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0003ABCB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010(\u001a\u00020)H\u0016J\u0008\u0010*\u001a\u00020)H\u0016J\u0008\u0010+\u001a\u00020)H\u0016J\u0010\u0010,\u001a\u00020)2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u00020)2\u0006\u00100\u001a\u000201H\u0016J\u0008\u00102\u001a\u00020\u0002H\u0016J\u0008\u00103\u001a\u00020)H\u0016J\u0008\u00104\u001a\u00020)H\u0016J\"\u00105\u001a\u00020)2\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u0002072\u0008\u00109\u001a\u0004\u0018\u00010:H\u0014J\u0008\u0010;\u001a\u00020)H\u0014J\u0008\u0010<\u001a\u00020)H\u0016J\u0010\u0010=\u001a\u00020)2\u0006\u0010>\u001a\u00020#H\u0002J\u0019\u0010?\u001a\u00020)2\u0006\u0010>\u001a\u00020#H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010@R\u001f\u0010\u0004\u001a\u00060\u0005R\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R#\u0010\n\u001a\n \u000c*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\r\u0010\u000eR\u0010\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\t\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u001c\u001a\u00020\u001d8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\t\u001a\u0004\u0008\u001e\u0010\u001fR \u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006D"
    }
    d2 = {
        "Lcom/innioasis/music/SearchActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivitySearchBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/music/SearchActivity$MyAdapter;",
        "getAdapter",
        "()Lcom/innioasis/music/SearchActivity$MyAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "defaultBitmap",
        "Landroid/graphics/Bitmap;",
        "kotlin.jvm.PlatformType",
        "getDefaultBitmap",
        "()Landroid/graphics/Bitmap;",
        "defaultBitmap$delegate",
        "delayRunTimer",
        "com/innioasis/music/SearchActivity$delayRunTimer$1",
        "Lcom/innioasis/music/SearchActivity$delayRunTimer$1;",
        "inputMethodDialog",
        "Lcom/innioasis/y1/utils/InputMethodDialog;",
        "getInputMethodDialog",
        "()Lcom/innioasis/y1/utils/InputMethodDialog;",
        "inputMethodDialog$delegate",
        "isMultiSelect",
        "",
        "searchJob",
        "Lkotlinx/coroutines/Job;",
        "subMenuDialog",
        "Lcom/innioasis/music/util/SubMenuDialog;",
        "getSubMenuDialog",
        "()Lcom/innioasis/music/util/SubMenuDialog;",
        "subMenuDialog$delegate",
        "valueLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getValueLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setValueLiveData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "antiClockwise",
        "",
        "clockwise",
        "confirm",
        "confirmItem",
        "item",
        "Lcom/innioasis/music/SearchActivity$Item;",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getViewBinding",
        "initView",
        "longConfirm",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "onResume",
        "quit",
        "refreshList",
        "searchKey",
        "searchFun",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Item",
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

.field private final defaultBitmap$delegate:Lkotlin/Lazy;

.field private final delayRunTimer:Lcom/innioasis/music/SearchActivity$delayRunTimer$1;

.field private final inputMethodDialog$delegate:Lkotlin/Lazy;

.field private isMultiSelect:Z

.field private searchJob:Lkotlinx/coroutines/Job;

.field private final subMenuDialog$delegate:Lkotlin/Lazy;

.field public valueLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2ku4OdacTzxy1ZkcFCgDyeFxCIQ(Lcom/innioasis/music/SearchActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/music/SearchActivity;->initView$lambda-0(Lcom/innioasis/music/SearchActivity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 53
    new-instance v0, Lcom/innioasis/music/SearchActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/SearchActivity$adapter$2;-><init>(Lcom/innioasis/music/SearchActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/SearchActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 57
    new-instance v0, Lcom/innioasis/music/SearchActivity$inputMethodDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/SearchActivity$inputMethodDialog$2;-><init>(Lcom/innioasis/music/SearchActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/SearchActivity;->inputMethodDialog$delegate:Lkotlin/Lazy;

    .line 96
    new-instance v0, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;

    invoke-direct {v0, p0}, Lcom/innioasis/music/SearchActivity$delayRunTimer$1;-><init>(Lcom/innioasis/music/SearchActivity;)V

    iput-object v0, p0, Lcom/innioasis/music/SearchActivity;->delayRunTimer:Lcom/innioasis/music/SearchActivity$delayRunTimer$1;

    .line 188
    new-instance v0, Lcom/innioasis/music/SearchActivity$subMenuDialog$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/SearchActivity$subMenuDialog$2;-><init>(Lcom/innioasis/music/SearchActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/SearchActivity;->subMenuDialog$delegate:Lkotlin/Lazy;

    .line 359
    new-instance v0, Lcom/innioasis/music/SearchActivity$defaultBitmap$2;

    invoke-direct {v0, p0}, Lcom/innioasis/music/SearchActivity$defaultBitmap$2;-><init>(Lcom/innioasis/music/SearchActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/music/SearchActivity;->defaultBitmap$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/innioasis/music/SearchActivity;)Lcom/innioasis/music/SearchActivity$MyAdapter;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDefaultBitmap(Lcom/innioasis/music/SearchActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getDefaultBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isMultiSelect$p(Lcom/innioasis/music/SearchActivity;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/innioasis/music/SearchActivity;->isMultiSelect:Z

    return p0
.end method

.method public static final synthetic access$searchFun(Lcom/innioasis/music/SearchActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/innioasis/music/SearchActivity;->searchFun(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setMultiSelect$p(Lcom/innioasis/music/SearchActivity;Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/innioasis/music/SearchActivity;->isMultiSelect:Z

    return-void
.end method

.method private final confirmItem(Lcom/innioasis/music/SearchActivity$Item;)V
    .locals 4

    .line 502
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 503
    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$Item;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "searchTag"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e13\u8f91\u88ab\u9009\u62e9 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$Item;->getAlbum()Lcom/innioasis/music/data/Album;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$Item;->getAlbum()Lcom/innioasis/music/data/Album;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/innioasis/music/data/Album;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 513
    sget-object v0, Lcom/innioasis/music/ShowSongListActivity;->Companion:Lcom/innioasis/music/ShowSongListActivity$Companion;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/innioasis/music/ShowSongListActivity$Companion;->startActivityByAlbum(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$Item;->getSong()Lcom/innioasis/y1/database/Song;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 506
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_2

    new-array v1, v1, [Lcom/innioasis/y1/database/Song;

    aput-object p1, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Lcom/innioasis/y1/service/PlayerService;->setMusicPlaylist(Ljava/util/List;I)V

    .line 507
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/innioasis/music/MusicPlayerActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/music/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 517
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getSelectPosition()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->show()V

    :cond_4
    return-void
.end method

.method private final getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/SearchActivity$MyAdapter;

    return-object v0
.end method

.method private final getDefaultBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity;->defaultBitmap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity;->inputMethodDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/InputMethodDialog;

    return-object v0
.end method

.method private final getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity;->subMenuDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/util/SubMenuDialog;

    return-object v0
.end method

.method private static final initView$lambda-0(Lcom/innioasis/music/SearchActivity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->info:Landroid/widget/TextView;

    const-string v1, "it"

    .line 80
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const v1, 0x7f11012c

    invoke-virtual {p0, v1}, Lcom/innioasis/music/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f11012f

    invoke-virtual {p0, v3}, Lcom/innioasis/music/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/CharSequence;

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0, p1}, Lcom/innioasis/music/objects/Global;->setSearchKey(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyItemChanged(I)V

    .line 83
    invoke-direct {p0, p1}, Lcom/innioasis/music/SearchActivity;->refreshList(Ljava/lang/String;)V

    return-void
.end method

.method private final refreshList(Ljava/lang/String;)V
    .locals 8

    .line 132
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity;->searchJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 133
    :cond_0
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/innioasis/music/SearchActivity$refreshList$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/innioasis/music/SearchActivity$refreshList$1;-><init>(Lcom/innioasis/music/SearchActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/music/SearchActivity;->searchJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final searchFun(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/innioasis/music/SearchActivity$searchFun$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/innioasis/music/SearchActivity$searchFun$1;

    iget v4, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/innioasis/music/SearchActivity$searchFun$1;

    invoke-direct {v3, v0, v2}, Lcom/innioasis/music/SearchActivity$searchFun$1;-><init>(Lcom/innioasis/music/SearchActivity;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 140
    iget v5, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->label:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v3, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/innioasis/music/SearchActivity;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 164
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_2
    iget-object v1, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v5, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v8, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/innioasis/music/SearchActivity;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v17, v2

    move-object v2, v1

    move-object v1, v5

    move-object/from16 v5, v17

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 141
    sget-object v2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v5, "searchTag"

    invoke-virtual {v2, v5}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u5f00\u59cb\u6267\u884c\u641c\u7d22 "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v10}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 143
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_4

    const/4 v9, 0x1

    :cond_4
    if-eqz v9, :cond_9

    .line 144
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcom/innioasis/music/SearchActivity$searchFun$albums$1;

    invoke-direct {v9, v1, v7}, Lcom/innioasis/music/SearchActivity$searchFun$albums$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v0, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$2:Ljava/lang/Object;

    iput v8, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->label:I

    invoke-static {v5, v9, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_5

    return-object v4

    :cond_5
    move-object v8, v0

    .line 140
    :goto_1
    check-cast v5, Ljava/util/List;

    .line 145
    check-cast v5, Ljava/lang/Iterable;

    .line 520
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/innioasis/music/data/Album;

    .line 147
    new-instance v9, Lcom/innioasis/music/SearchActivity$Item;

    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/16 v15, 0x9

    const/16 v16, 0x0

    move-object v10, v9

    invoke-direct/range {v10 .. v16}, Lcom/innioasis/music/SearchActivity$Item;-><init>(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 146
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 153
    :cond_6
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    check-cast v5, Lkotlin/coroutines/CoroutineContext;

    new-instance v9, Lcom/innioasis/music/SearchActivity$searchFun$songs$1;

    invoke-direct {v9, v1, v7}, Lcom/innioasis/music/SearchActivity$searchFun$songs$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v9, Lkotlin/jvm/functions/Function2;

    iput-object v8, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->L$2:Ljava/lang/Object;

    iput v6, v3, Lcom/innioasis/music/SearchActivity$searchFun$1;->label:I

    invoke-static {v5, v9, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_7

    return-object v4

    :cond_7
    move-object v3, v8

    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    .line 140
    :goto_3
    check-cast v2, Ljava/util/List;

    .line 154
    check-cast v2, Ljava/lang/Iterable;

    .line 522
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/innioasis/y1/database/Song;

    .line 156
    new-instance v4, Lcom/innioasis/music/SearchActivity$Item;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/innioasis/music/SearchActivity$Item;-><init>(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    move-object v2, v1

    goto :goto_5

    :cond_9
    move-object v3, v0

    .line 163
    :goto_5
    invoke-direct {v3}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->setItemList(Ljava/util/List;)V

    .line 164
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method


# virtual methods
.method public antiClockwise()V
    .locals 3

    .line 172
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "vb.searchList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->toPrevious(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 168
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "vb.searchList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->toNext(Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public confirm()V
    .locals 8

    .line 180
    iget-boolean v0, p0, Lcom/innioasis/music/SearchActivity;->isMultiSelect:Z

    if-nez v0, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getSelectItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/SearchActivity$Item;

    if-nez v0, :cond_0

    new-instance v0, Lcom/innioasis/music/SearchActivity$Item;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xb

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/innioasis/music/SearchActivity$Item;-><init>(Lcom/innioasis/y1/database/Song;Lcom/innioasis/music/data/Album;ILandroid/graphics/Bitmap;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 182
    :cond_0
    invoke-direct {p0, v0}, Lcom/innioasis/music/SearchActivity;->confirmItem(Lcom/innioasis/music/SearchActivity$Item;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getSelectPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->addOrRemoveMultiSelectIndex$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;IZILjava/lang/Object;)V

    .line 185
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v5, "vb.searchList"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toNext$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    sget-object v0, Lcom/innioasis/music/SearchActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 341
    iget-boolean p1, p0, Lcom/innioasis/music/SearchActivity;->isMultiSelect:Z

    if-eqz p1, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getMultiSelectIndexes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 343
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->finish()V

    :goto_0
    const/4 p1, 0x0

    .line 347
    iput-boolean p1, p0, Lcom/innioasis/music/SearchActivity;->isMultiSelect:Z

    :cond_1
    return-void
.end method

.method public final getValueLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/innioasis/music/SearchActivity;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "valueLiveData"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivitySearchBinding;
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 5

    const v0, 0x7f110130

    .line 71
    invoke-virtual {p0, v0}, Lcom/innioasis/music/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.music_search)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/SearchActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 73
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 74
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 75
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "vb.searchList"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v2, v3, v4, v1}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toPrevious$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    .line 76
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->info:Landroid/widget/TextView;

    const v1, 0x7f11012c

    invoke-virtual {p0, v1}, Lcom/innioasis/music/SearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/InputMethodDialog;->show()V

    .line 78
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getValueLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/innioasis/music/SearchActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/innioasis/music/SearchActivity$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/music/SearchActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 85
    sget-object v0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Global;->getSearchKey()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getValueLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v1}, Lcom/innioasis/music/objects/Global;->getSearchKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 87
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getInputMethodDialog()Lcom/innioasis/y1/utils/InputMethodDialog;

    move-result-object v0

    sget-object v1, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {v1}, Lcom/innioasis/music/objects/Global;->getSearchKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/InputMethodDialog;->setEditText(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public longConfirm()V
    .locals 3

    .line 331
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getSubMenuDialog()Lcom/innioasis/music/util/SubMenuDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    .line 333
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getSelectPosition()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->addOrRemoveMultiSelectIndex(IZ)V

    .line 334
    iput-boolean v2, p0, Lcom/innioasis/music/SearchActivity;->isMultiSelect:Z

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 488
    invoke-super {p0, p1, p2, p3}, Lcom/innioasis/y1/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p1, 0x400

    if-ne p2, p1, :cond_2

    .line 492
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getSelectPosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 495
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getItemCount()I

    move-result p2

    if-lt p1, p2, :cond_1

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    check-cast p1, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2, p3}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->setSelectPosition$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;IZILjava/lang/Object;)V

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/music/SearchActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivitySearchBinding;->searchList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getSelectPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 497
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v0

    invoke-direct {p0}, Lcom/innioasis/music/SearchActivity;->getAdapter()Lcom/innioasis/music/SearchActivity$MyAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->getSelectPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/innioasis/music/SearchActivity$MyAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method

.method public final setValueLiveData(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/innioasis/music/SearchActivity;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method
