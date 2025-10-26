.class public final Lcom/innioasis/music/FilesActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "FilesActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/music/FilesActivity$Companion;,
        Lcom/innioasis/music/FilesActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityFilesBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008*\u0003\n\u0011\u001a\u0018\u0000 +2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001+B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u001fH\u0016J\u0008\u0010!\u001a\u00020\u001fH\u0016J\u0010\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u0002H\u0016J\u0008\u0010&\u001a\u00020\u001fH\u0016J\u0008\u0010\'\u001a\u00020\u001fH\u0016J\u0008\u0010(\u001a\u00020\u001fH\u0016J\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020\u0015H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/innioasis/music/FilesActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityFilesBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/music/adapter/FileListAdapter;",
        "fileList",
        "",
        "Ljava/io/File;",
        "handler",
        "com/innioasis/music/FilesActivity$handler$1",
        "Lcom/innioasis/music/FilesActivity$handler$1;",
        "indexList",
        "",
        "isAudiobookPath",
        "",
        "isDeleteCallback",
        "com/innioasis/music/FilesActivity$isDeleteCallback$1",
        "Lcom/innioasis/music/FilesActivity$isDeleteCallback$1;",
        "isMultiSelect",
        "nowPath",
        "",
        "nowSongFileList",
        "subMenuDialog",
        "Lcom/innioasis/music/util/SubMenuDialog;",
        "subMenuSelectCallback",
        "com/innioasis/music/FilesActivity$subMenuSelectCallback$1",
        "Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;",
        "temp",
        "",
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
        "refresh",
        "path",
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
.field public static final Companion:Lcom/innioasis/music/FilesActivity$Companion;

.field public static final KEY_NOW_PATH:Ljava/lang/String; = "now_path"


# instance fields
.field private adapter:Lcom/innioasis/music/adapter/FileListAdapter;

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lcom/innioasis/music/FilesActivity$handler$1;

.field private final indexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isAudiobookPath:Z

.field private final isDeleteCallback:Lcom/innioasis/music/FilesActivity$isDeleteCallback$1;

.field private isMultiSelect:Z

.field private nowPath:Ljava/lang/String;

.field private nowSongFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private subMenuDialog:Lcom/innioasis/music/util/SubMenuDialog;

.field private final subMenuSelectCallback:Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;

.field private temp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/music/FilesActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/music/FilesActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/music/FilesActivity;->Companion:Lcom/innioasis/music/FilesActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/innioasis/music/FilesActivity;->fileList:Ljava/util/List;

    .line 48
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/innioasis/music/FilesActivity$handler$1;

    invoke-direct {v1, p0, v0}, Lcom/innioasis/music/FilesActivity$handler$1;-><init>(Lcom/innioasis/music/FilesActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/innioasis/music/FilesActivity;->handler:Lcom/innioasis/music/FilesActivity$handler$1;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/innioasis/music/FilesActivity;->nowSongFileList:Ljava/util/List;

    .line 144
    new-instance v0, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;

    invoke-direct {v0, p0}, Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;-><init>(Lcom/innioasis/music/FilesActivity;)V

    iput-object v0, p0, Lcom/innioasis/music/FilesActivity;->subMenuSelectCallback:Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;

    .line 212
    new-instance v0, Lcom/innioasis/music/FilesActivity$isDeleteCallback$1;

    invoke-direct {v0, p0}, Lcom/innioasis/music/FilesActivity$isDeleteCallback$1;-><init>(Lcom/innioasis/music/FilesActivity;)V

    iput-object v0, p0, Lcom/innioasis/music/FilesActivity;->isDeleteCallback:Lcom/innioasis/music/FilesActivity$isDeleteCallback$1;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/innioasis/music/FilesActivity;->indexList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/adapter/FileListAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    return-object p0
.end method

.method public static final synthetic access$getFileList$p(Lcom/innioasis/music/FilesActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/innioasis/music/FilesActivity;->fileList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/FilesActivity$handler$1;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/innioasis/music/FilesActivity;->handler:Lcom/innioasis/music/FilesActivity$handler$1;

    return-object p0
.end method

.method public static final synthetic access$getNowSongFileList$p(Lcom/innioasis/music/FilesActivity;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/innioasis/music/FilesActivity;->nowSongFileList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$isAudiobookPath$p(Lcom/innioasis/music/FilesActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/innioasis/music/FilesActivity;->isAudiobookPath:Z

    return p0
.end method

.method public static final synthetic access$isDeleteCallback$p(Lcom/innioasis/music/FilesActivity;)Lcom/innioasis/music/FilesActivity$isDeleteCallback$1;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/innioasis/music/FilesActivity;->isDeleteCallback:Lcom/innioasis/music/FilesActivity$isDeleteCallback$1;

    return-object p0
.end method

.method public static final synthetic access$isMultiSelect$p(Lcom/innioasis/music/FilesActivity;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/innioasis/music/FilesActivity;->isMultiSelect:Z

    return p0
.end method

.method public static final synthetic access$setMultiSelect$p(Lcom/innioasis/music/FilesActivity;Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/innioasis/music/FilesActivity;->isMultiSelect:Z

    return-void
.end method

.method public static final synthetic access$setNowSongFileList$p(Lcom/innioasis/music/FilesActivity;Ljava/util/List;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/innioasis/music/FilesActivity;->nowSongFileList:Ljava/util/List;

    return-void
.end method

.method private final refresh(Ljava/lang/String;)V
    .locals 8

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    new-instance p1, Lcom/innioasis/music/FilesActivity$refresh$timber$1;

    invoke-direct {p1, p0}, Lcom/innioasis/music/FilesActivity$refresh$timber$1;-><init>(Lcom/innioasis/music/FilesActivity;)V

    move-object v4, p1

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/innioasis/music/util/Other;->newTimer$default(Lcom/innioasis/music/util/Other;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroid/os/CountDownTimer;

    move-result-object p1

    .line 73
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/innioasis/music/FilesActivity$refresh$1;

    const/4 v4, 0x0

    invoke-direct {v1, v0, p0, p1, v4}, Lcom/innioasis/music/FilesActivity$refresh$1;-><init>(Ljava/io/File;Lcom/innioasis/music/FilesActivity;Landroid/os/CountDownTimer;Lkotlin/coroutines/Continuation;)V

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

    .line 248
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityFilesBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 244
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityFilesBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    return-void
.end method

.method public confirm()V
    .locals 10

    .line 257
    iget-boolean v0, p0, Lcom/innioasis/music/FilesActivity;->isMultiSelect:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "adapter"

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v4, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v4}, Lcom/innioasis/music/adapter/FileListAdapter;->getPosition()I

    move-result v4

    iget-object v5, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v5, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    invoke-virtual {v2}, Lcom/innioasis/music/adapter/FileListAdapter;->getTYPE_MUILTIPLE()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Lcom/innioasis/music/adapter/FileListAdapter;->addItemToSelectedIndex(II)V

    .line 259
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v2

    check-cast v2, Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    iget-object v2, v2, Lcom/innioasis/y1/databinding/ActivityFilesBinding;->lv:Landroid/widget/ListView;

    const-string v3, "vb.lv"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lcom/innioasis/music/util/Other;->listViewScroll(Landroid/widget/ListView;I)V

    goto :goto_2

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v0, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Lcom/innioasis/music/adapter/FileListAdapter;->getItemList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 262
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    invoke-virtual {v0}, Lcom/innioasis/music/adapter/FileListAdapter;->getPosition()I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v2, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/innioasis/music/adapter/FileListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 266
    new-instance v7, Lcom/innioasis/music/FilesActivity$confirm$1;

    invoke-direct {v7, p0, v1, v0}, Lcom/innioasis/music/FilesActivity$confirm$1;-><init>(Lcom/innioasis/music/FilesActivity;Ljava/util/List;Ljava/io/File;)V

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    goto :goto_2

    .line 299
    :cond_7
    new-instance v1, Landroid/content/Intent;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    const-class v3, Lcom/innioasis/music/FilesActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "now_path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v1}, Lcom/innioasis/music/FilesActivity;->startActivity(Landroid/content/Intent;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 3

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    sget-object v0, Lcom/innioasis/music/FilesActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 319
    iget-boolean p1, p0, Lcom/innioasis/music/FilesActivity;->isMultiSelect:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    iget-object p1, p1, Lcom/innioasis/y1/databinding/ActivityFilesBinding;->lv:Landroid/widget/ListView;

    const-string v2, "vb.lv"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v0, v0, [Lcom/innioasis/music/adapter/MyBaseAdapter;

    iget-object v2, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v2, :cond_0

    const-string v2, "adapter"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Lcom/innioasis/music/adapter/MyBaseAdapter;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/innioasis/music/FilesActivity;->cancelMultiSelect(Landroid/widget/ListView;[Lcom/innioasis/music/adapter/MyBaseAdapter;)V

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity;->finish()V

    .line 324
    :goto_0
    iput-boolean v1, p0, Lcom/innioasis/music/FilesActivity;->isMultiSelect:Z

    :cond_2
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityFilesBinding;
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityFilesBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 14

    .line 121
    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "now_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/sdcard0"

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iput-object v0, p0, Lcom/innioasis/music/FilesActivity;->nowPath:Ljava/lang/String;

    const-string v2, "nowPath"

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 122
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/storage/sdcard0/Audiobooks"

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/innioasis/music/FilesActivity;->nowPath:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 123
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/innioasis/music/FilesActivity;->nowPath:Ljava/lang/String;

    if-nez v4, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_4
    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "File(nowPath).name"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/FilesActivity;->setStateBarLeftText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    const v0, 0x7f110128

    .line 122
    invoke-virtual {p0, v0}, Lcom/innioasis/music/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "getString(R.string.music_folders)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/music/FilesActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 124
    :goto_1
    new-instance v0, Lcom/innioasis/music/adapter/FileListAdapter;

    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/innioasis/music/adapter/FileListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    .line 125
    invoke-virtual {p0}, Lcom/innioasis/music/FilesActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityFilesBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityFilesBinding;->lv:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v4, :cond_6

    const-string v4, "adapter"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_6
    check-cast v4, Landroid/widget/ListAdapter;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList2()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList2()Ljava/util/List;

    move-result-object v0

    const v4, 0x7f11012a

    invoke-virtual {p0, v4}, Lcom/innioasis/music/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.music_multi_select)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList2()Ljava/util/List;

    move-result-object v0

    const v4, 0x7f110028

    invoke-virtual {p0, v4}, Lcom/innioasis/music/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.all_select)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList2()Ljava/util/List;

    move-result-object v0

    const v4, 0x7f11002f

    invoke-virtual {p0, v4}, Lcom/innioasis/music/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.audiobook_delete)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity;->nowPath:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_7
    check-cast v0, Ljava/lang/CharSequence;

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v0, v4, v5, v6, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList2()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/innioasis/music/objects/Constant;->INSTANCE:Lcom/innioasis/music/objects/Constant;

    invoke-virtual {v0}, Lcom/innioasis/music/objects/Constant;->getSubMenuList()Ljava/util/List;

    move-result-object v0

    :goto_2
    move-object v9, v0

    .line 132
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity;->nowPath:Ljava/lang/String;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_9
    check-cast v0, Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v5, v6, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/innioasis/music/FilesActivity;->isAudiobookPath:Z

    .line 134
    new-instance v0, Lcom/innioasis/music/util/SubMenuDialog;

    move-object v8, p0

    check-cast v8, Landroid/app/Activity;

    iget-object v1, p0, Lcom/innioasis/music/FilesActivity;->subMenuSelectCallback:Lcom/innioasis/music/FilesActivity$subMenuSelectCallback$1;

    move-object v10, v1

    check-cast v10, Lcom/innioasis/music/util/SubMenuDialog$Callback;

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/innioasis/music/util/SubMenuDialog;-><init>(Landroid/app/Activity;Ljava/util/List;Lcom/innioasis/music/util/SubMenuDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    iget-boolean v1, p0, Lcom/innioasis/music/FilesActivity;->isAudiobookPath:Z

    if-nez v1, :cond_a

    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->addPlaylistsToOptions()V

    .line 136
    :cond_a
    new-instance v1, Lcom/innioasis/music/FilesActivity$initView$1$1;

    invoke-direct {v1, p0}, Lcom/innioasis/music/FilesActivity$initView$1$1;-><init>(Lcom/innioasis/music/FilesActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/SubMenuDialog;->setOnBack(Lkotlin/jvm/functions/Function0;)V

    .line 133
    iput-object v0, p0, Lcom/innioasis/music/FilesActivity;->subMenuDialog:Lcom/innioasis/music/util/SubMenuDialog;

    .line 141
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity;->nowPath:Ljava/lang/String;

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v3, v0

    :goto_3
    invoke-direct {p0, v3}, Lcom/innioasis/music/FilesActivity;->refresh(Ljava/lang/String;)V

    return-void
.end method

.method public longConfirm()V
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    const/4 v1, 0x0

    const-string v2, "adapter"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/music/adapter/FileListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 310
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity;->subMenuDialog:Lcom/innioasis/music/util/SubMenuDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/innioasis/music/util/SubMenuDialog;->show()V

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v3, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v3, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_3
    invoke-virtual {v3}, Lcom/innioasis/music/adapter/FileListAdapter;->getPosition()I

    move-result v3

    iget-object v4, p0, Lcom/innioasis/music/FilesActivity;->adapter:Lcom/innioasis/music/adapter/FileListAdapter;

    if-nez v4, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v4

    :goto_0
    invoke-virtual {v1}, Lcom/innioasis/music/adapter/FileListAdapter;->getTYPE_SINGLE()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/innioasis/music/adapter/FileListAdapter;->addItemToSelectedIndex(II)V

    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/innioasis/music/FilesActivity;->isMultiSelect:Z

    :cond_5
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
