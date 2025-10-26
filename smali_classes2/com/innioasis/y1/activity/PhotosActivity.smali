.class public final Lcom/innioasis/y1/activity/PhotosActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "PhotosActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/PhotosActivity$Item;,
        Lcom/innioasis/y1/activity/PhotosActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityPhotosBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhotosActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhotosActivity.kt\ncom/innioasis/y1/activity/PhotosActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,853:1\n1002#2,2:854\n1002#2,2:856\n1011#2,2:858\n1011#2,2:860\n1002#2,2:862\n1002#2,2:864\n1011#2,2:866\n1011#2,2:868\n1851#2,2:870\n*S KotlinDebug\n*F\n+ 1 PhotosActivity.kt\ncom/innioasis/y1/activity/PhotosActivity\n*L\n312#1:854,2\n313#1:856,2\n315#1:858,2\n318#1:860,2\n324#1:862,2\n325#1:864,2\n327#1:866,2\n328#1:868,2\n571#1:870,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0089\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0017*\u0001\u000f\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001aB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u00105\u001a\u000206H\u0003J\u0008\u00107\u001a\u000206H\u0017J\u0008\u00108\u001a\u000206H\u0003J\u0008\u00109\u001a\u000206H\u0017J\u0008\u0010:\u001a\u000206H\u0002J\u0008\u0010;\u001a\u000206H\u0016J\u0008\u0010<\u001a\u000206H\u0002J\u0010\u0010=\u001a\u0002062\u0006\u0010>\u001a\u00020?H\u0016J\u0012\u0010@\u001a\u00020\u00122\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J \u0010C\u001a\u00020\u00122\u0006\u0010D\u001a\u00020\r2\u0006\u0010E\u001a\u00020\r2\u0006\u0010F\u001a\u00020\u0012H\u0002J\u0008\u0010G\u001a\u00020\u0002H\u0016J\u0008\u0010H\u001a\u000206H\u0016J\u0010\u0010I\u001a\u00020\u00122\u0006\u0010J\u001a\u00020KH\u0002J\u0010\u0010L\u001a\u00020K2\u0006\u0010M\u001a\u00020KH\u0002J\u0008\u0010N\u001a\u000206H\u0016J\u0008\u0010O\u001a\u000206H\u0002J\u0008\u0010P\u001a\u000206H\u0002J\u0008\u0010Q\u001a\u000206H\u0002J\u0008\u0010R\u001a\u000206H\u0014J\u0008\u0010S\u001a\u000206H\u0016J\u0008\u0010T\u001a\u000206H\u0002J\u0008\u0010U\u001a\u000206H\u0002J\u0010\u0010V\u001a\u0002062\u0006\u0010W\u001a\u00020\u0016H\u0002J\u0016\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00152\u0006\u0010Y\u001a\u00020\rH\u0002J\u0008\u0010Z\u001a\u000206H\u0002J\u0008\u0010[\u001a\u000206H\u0002J\u0008\u0010\\\u001a\u000206H\u0002J\u0008\u0010]\u001a\u000206H\u0002J\u0010\u0010^\u001a\u0002062\u0006\u0010Y\u001a\u00020\rH\u0002J\u0010\u0010_\u001a\u0002062\u0006\u0010Y\u001a\u00020\rH\u0002J\u0008\u0010`\u001a\u000206H\u0002R\'\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\r0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001f\u001a\u0004\u0018\u00010 X\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00160\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010\u000b\u001a\u0004\u0008#\u0010$R\'\u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00150\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u000b\u001a\u0004\u0008\'\u0010$R!\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\r0\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010\u000b\u001a\u0004\u0008*\u0010$R\u0010\u0010,\u001a\u0004\u0018\u00010-X\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010.\u001a\u0008\u0012\u0004\u0012\u00020/0\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00082\u0010\u000b\u001a\u0004\u00080\u00101R\u000e\u00103\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00104\u001a\u00020\u0016X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006b"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/PhotosActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityPhotosBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "Lcom/innioasis/y1/activity/PhotosActivity$Item;",
        "Lcom/innioasis/y1/databinding/ItemPhotosBinding;",
        "getAdapter",
        "()Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "emptyDirectoryPath",
        "",
        "handler",
        "com/innioasis/y1/activity/PhotosActivity$handler$1",
        "Lcom/innioasis/y1/activity/PhotosActivity$handler$1;",
        "isLongDown",
        "",
        "isMultiSelect",
        "multiSelectIndexes",
        "",
        "",
        "nameLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "noAllowRenameList",
        "",
        "nowPath",
        "nowPicturePath",
        "nowTitle",
        "pictureDisplayMods",
        "progressDialog",
        "Landroid/app/ProgressDialog;",
        "stackIndex",
        "Ljava/util/Stack;",
        "getStackIndex",
        "()Ljava/util/Stack;",
        "stackIndex$delegate",
        "stackList",
        "getStackList",
        "stackList$delegate",
        "stackTitle",
        "getStackTitle",
        "stackTitle$delegate",
        "subDialog",
        "Lcom/innioasis/y1/utils/PhotosDialog;",
        "subs",
        "Lcom/innioasis/y1/utils/PhotosDialog$SubItem;",
        "getSubs",
        "()Ljava/util/List;",
        "subs$delegate",
        "wasDown",
        "whatshowpicture",
        "allSelect",
        "",
        "antiClockwise",
        "cancelMultiSelect",
        "clockwise",
        "closeSubmenu",
        "confirm",
        "delete",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "fileIsDuplicate",
        "filename",
        "end",
        "isDirectory",
        "getViewBinding",
        "initView",
        "isAllowRename",
        "file",
        "Ljava/io/File;",
        "isOneFolder",
        "pathFile",
        "longConfirm",
        "longEnter",
        "longPlay",
        "longTop",
        "onResume",
        "quit",
        "removeItems",
        "rename",
        "selectByPosition",
        "pos",
        "setPathFiles",
        "path",
        "shortEnter",
        "shortLeft",
        "shortRight",
        "shortTop",
        "showPicture",
        "toPathFolder",
        "upDataImager",
        "Item",
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

.field private emptyDirectoryPath:Ljava/lang/String;

.field private final handler:Lcom/innioasis/y1/activity/PhotosActivity$handler$1;

.field private isLongDown:Z

.field private isMultiSelect:Z

.field private final multiSelectIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nameLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final noAllowRenameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nowPath:Ljava/lang/String;

.field private nowPicturePath:Ljava/lang/String;

.field private nowTitle:Ljava/lang/String;

.field private pictureDisplayMods:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private final stackIndex$delegate:Lkotlin/Lazy;

.field private final stackList$delegate:Lkotlin/Lazy;

.field private final stackTitle$delegate:Lkotlin/Lazy;

.field private subDialog:Lcom/innioasis/y1/utils/PhotosDialog;

.field private final subs$delegate:Lkotlin/Lazy;

.field private wasDown:Z

.field private final whatshowpicture:I


# direct methods
.method public static synthetic $r8$lambda$OBD-FnDUKEcjWvfTaLAW4AIxtBg(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/y1/activity/PhotosActivity;->toPathFolder$lambda-0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    const/16 v0, 0xa

    .line 54
    iput v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->whatshowpicture:I

    .line 62
    new-instance v0, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/PhotosActivity$adapter$2;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 109
    new-instance v0, Lcom/innioasis/y1/activity/PhotosActivity$subs$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/PhotosActivity$subs$2;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->subs$delegate:Lkotlin/Lazy;

    .line 135
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;

    invoke-direct {v1, p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->handler:Lcom/innioasis/y1/activity/PhotosActivity$handler$1;

    const-string v0, "/storage/sdcard0"

    .line 194
    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowPath:Ljava/lang/String;

    .line 196
    sget-object v0, Lcom/innioasis/y1/activity/PhotosActivity$stackList$2;->INSTANCE:Lcom/innioasis/y1/activity/PhotosActivity$stackList$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->stackList$delegate:Lkotlin/Lazy;

    .line 199
    sget-object v0, Lcom/innioasis/y1/activity/PhotosActivity$stackIndex$2;->INSTANCE:Lcom/innioasis/y1/activity/PhotosActivity$stackIndex$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->stackIndex$delegate:Lkotlin/Lazy;

    .line 202
    sget-object v0, Lcom/innioasis/y1/activity/PhotosActivity$stackTitle$2;->INSTANCE:Lcom/innioasis/y1/activity/PhotosActivity$stackTitle$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->stackTitle$delegate:Lkotlin/Lazy;

    const-string v0, ""

    .line 207
    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowPicturePath:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowTitle:Ljava/lang/String;

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->multiSelectIndexes:Ljava/util/List;

    .line 442
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nameLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 449
    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->emptyDirectoryPath:Ljava/lang/String;

    const-string v0, "Audiobooks"

    .line 478
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->noAllowRenameList:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$allSelect(Lcom/innioasis/y1/activity/PhotosActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->allSelect()V

    return-void
.end method

.method public static final synthetic access$cancelMultiSelect(Lcom/innioasis/y1/activity/PhotosActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->cancelMultiSelect()V

    return-void
.end method

.method public static final synthetic access$closeSubmenu(Lcom/innioasis/y1/activity/PhotosActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->closeSubmenu()V

    return-void
.end method

.method public static final synthetic access$delete(Lcom/innioasis/y1/activity/PhotosActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->delete()V

    return-void
.end method

.method public static final synthetic access$fileIsDuplicate(Lcom/innioasis/y1/activity/PhotosActivity;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/innioasis/y1/activity/PhotosActivity;->fileIsDuplicate(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getAdapter(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getEmptyDirectoryPath$p(Lcom/innioasis/y1/activity/PhotosActivity;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->emptyDirectoryPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getMultiSelectIndexes$p(Lcom/innioasis/y1/activity/PhotosActivity;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->multiSelectIndexes:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getNameLiveData$p(Lcom/innioasis/y1/activity/PhotosActivity;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nameLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public static final synthetic access$getNowPath$p(Lcom/innioasis/y1/activity/PhotosActivity;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowPath:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getProgressDialog$p(Lcom/innioasis/y1/activity/PhotosActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static final synthetic access$getSubDialog$p(Lcom/innioasis/y1/activity/PhotosActivity;)Lcom/innioasis/y1/utils/PhotosDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->subDialog:Lcom/innioasis/y1/utils/PhotosDialog;

    return-object p0
.end method

.method public static final synthetic access$getWhatshowpicture$p(Lcom/innioasis/y1/activity/PhotosActivity;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->whatshowpicture:I

    return p0
.end method

.method public static final synthetic access$isAllowRename(Lcom/innioasis/y1/activity/PhotosActivity;Ljava/io/File;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/PhotosActivity;->isAllowRename(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$removeItems(Lcom/innioasis/y1/activity/PhotosActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->removeItems()V

    return-void
.end method

.method public static final synthetic access$rename(Lcom/innioasis/y1/activity/PhotosActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->rename()V

    return-void
.end method

.method public static final synthetic access$setEmptyDirectoryPath$p(Lcom/innioasis/y1/activity/PhotosActivity;Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->emptyDirectoryPath:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setMultiSelect$p(Lcom/innioasis/y1/activity/PhotosActivity;Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->isMultiSelect:Z

    return-void
.end method

.method public static final synthetic access$setNameLiveData$p(Lcom/innioasis/y1/activity/PhotosActivity;Landroidx/lifecycle/MutableLiveData;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nameLiveData:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$setPathFiles(Lcom/innioasis/y1/activity/PhotosActivity;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/PhotosActivity;->setPathFiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setPictureDisplayMods$p(Lcom/innioasis/y1/activity/PhotosActivity;I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->pictureDisplayMods:I

    return-void
.end method

.method private final allSelect()V
    .locals 6

    .line 384
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 385
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v4, "temptemp"

    invoke-virtual {v3, v4}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    iget-object v3, p0, Lcom/innioasis/y1/activity/PhotosActivity;->multiSelectIndexes:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final cancelMultiSelect()V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->isMultiSelect:Z

    .line 376
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final closeSubmenu()V
    .locals 3

    .line 445
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->cancelMultiSelect()V

    .line 446
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "photosDialog"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\u5173\u95ed\u7f16\u8f91\u6a21\u5f0f"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final delete()V
    .locals 7

    const-string v0, "sd"

    .line 455
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->showOrHideDialog(Ljava/lang/String;)V

    .line 456
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    new-instance v0, Lcom/innioasis/y1/activity/PhotosActivity$delete$1;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/innioasis/y1/activity/PhotosActivity$delete$1;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final fileIsDuplicate(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .line 571
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 870
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    .line 572
    invoke-virtual {v1}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    return v3

    .line 573
    :cond_1
    invoke-virtual {v1}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    return v3

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private final getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/innioasis/y1/base/BaseBindingAdapter<",
            "Lcom/innioasis/y1/activity/PhotosActivity$Item;",
            "Lcom/innioasis/y1/databinding/ItemPhotosBinding;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/base/BaseBindingAdapter;

    return-object v0
.end method

.method private final getStackIndex()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->stackIndex$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method private final getStackList()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/PhotosActivity$Item;",
            ">;>;"
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->stackList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method private final getStackTitle()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->stackTitle$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    return-object v0
.end method

.method private final getSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/utils/PhotosDialog$SubItem;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->subs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final isAllowRename(Ljava/io/File;)Z
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->noAllowRenameList:Ljava/util/List;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 481
    :cond_0
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/database/Y1Repository;->getSongsByParentPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 482
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private final isOneFolder(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 275
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 278
    aget-object p1, v0, v3

    const-string v0, "it[0]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/innioasis/y1/activity/PhotosActivity;->isOneFolder(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private final longEnter()V
    .locals 0

    .line 682
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->sleepScreen()V

    .line 683
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->askShutdown()V

    return-void
.end method

.method private final longPlay()V
    .locals 0

    return-void
.end method

.method private final longTop()V
    .locals 12

    .line 687
    iget-boolean v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->isMultiSelect:Z

    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->selectByPosition(I)V

    :cond_0
    const/4 v0, 0x0

    .line 690
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->isMultiSelect:Z

    .line 691
    new-instance v11, Lcom/innioasis/y1/utils/PhotosDialog;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getSubs()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 744
    new-instance v0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/PhotosActivity$longTop$1;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;)V

    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object v1, v11

    move-object v3, p0

    .line 691
    invoke-direct/range {v1 .. v10}, Lcom/innioasis/y1/utils/PhotosDialog;-><init>(Landroid/content/Context;Lcom/innioasis/y1/activity/PhotosActivity;Ljava/util/List;ZZILkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 745
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 746
    new-instance v0, Lcom/innioasis/y1/activity/PhotosActivity$longTop$2$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/PhotosActivity$longTop$2$1;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v11, v0}, Lcom/innioasis/y1/utils/PhotosDialog;->setAfterSetWallpaper(Lkotlin/jvm/functions/Function0;)V

    .line 749
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/innioasis/y1/utils/PhotosDialog;->setPath(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v11}, Lcom/innioasis/y1/utils/PhotosDialog;->show()V

    .line 691
    :cond_2
    iput-object v11, p0, Lcom/innioasis/y1/activity/PhotosActivity;->subDialog:Lcom/innioasis/y1/utils/PhotosDialog;

    return-void
.end method

.method private final removeItems()V
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->multiSelectIndexes:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->sortDescending(Ljava/util/List;)V

    .line 413
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 415
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->multiSelectIndexes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 418
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 419
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 420
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 421
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    goto/16 :goto_2

    .line 423
    :cond_3
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v2, "removeItems"

    invoke-virtual {v0, v2}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 424
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/PhotosActivity;->setMark(I)V

    .line 425
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 426
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->setMark(I)V

    goto :goto_1

    .line 428
    :cond_5
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 429
    sget-object v0, Lcom/innioasis/music/util/Other;->INSTANCE:Lcom/innioasis/music/util/Other;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/innioasis/music/util/Other;->hideV(Landroid/view/View;)V

    .line 430
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/PhotosActivity;->setMark(I)V

    goto :goto_2

    .line 432
    :cond_6
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->upDataImager()V

    goto :goto_2

    .line 437
    :cond_7
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_8

    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/PhotosActivity;->setMark(I)V

    .line 439
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private final rename()V
    .locals 12

    .line 490
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    .line 491
    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "."

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v1

    .line 492
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v3, ""

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 493
    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 495
    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 499
    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 502
    :goto_0
    new-instance v1, Lcom/innioasis/y1/utils/InputMethodDialog;

    move-object v7, p0

    check-cast v7, Landroid/app/Activity;

    new-instance v3, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;

    invoke-direct {v3, p0, v2, v4, v0}, Lcom/innioasis/y1/activity/PhotosActivity$rename$1;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/innioasis/y1/activity/PhotosActivity$Item;)V

    move-object v8, v3

    check-cast v8, Lcom/innioasis/y1/utils/InputMethodDialog$Callback;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v11}, Lcom/innioasis/y1/utils/InputMethodDialog;-><init>(Landroid/app/Activity;Lcom/innioasis/y1/utils/InputMethodDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 561
    invoke-virtual {v1}, Lcom/innioasis/y1/utils/InputMethodDialog;->show()V

    .line 562
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/utils/InputMethodDialog;->setEditText(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nameLiveData:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final selectByPosition(I)V
    .locals 2

    if-ltz p1, :cond_2

    .line 362
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->multiSelectIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->multiSelectIndexes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyItemChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final setPathFiles(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/innioasis/y1/activity/PhotosActivity$Item;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 293
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    sget-object v3, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "/storage/sdcard0"

    .line 295
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f1100e0

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v4, "resources.getString(R.string.main_photos)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/PhotosActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "{\n            //\u663e\u793a\u6807\u9898\n   \u2026ng.main_photos)\n        }"

    .line 297
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "pathFile.name"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/activity/PhotosActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "{\n            //\u663e\u793a\u6807\u9898\n   \u2026  pathFile.name\n        }"

    .line 301
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    :goto_0
    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowTitle:Ljava/lang/String;

    .line 305
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-direct {p0, v2}, Lcom/innioasis/y1/activity/PhotosActivity;->isOneFolder(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/innioasis/y1/utils/WallpaperUtils;->getPicture(Ljava/io/File;)V

    .line 308
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getItemFolderListData()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 309
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getItemFileListData()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 310
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortByName()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    .line 311
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 854
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_1

    new-instance p1, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortBy$1;

    invoke-direct {p1}, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortBy$1;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 856
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_8

    new-instance p1, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortBy$2;

    invoke-direct {p1}, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortBy$2;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 858
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_3

    new-instance p1, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortByDescending$1;

    invoke-direct {p1}, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortByDescending$1;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 860
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_8

    new-instance p1, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortByDescending$2;

    invoke-direct {p1}, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortByDescending$2;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 323
    :cond_4
    sget-object p1, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isSortLogic()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 862
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_5

    new-instance p1, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortBy$3;

    invoke-direct {p1}, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortBy$3;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 864
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_8

    new-instance p1, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortBy$4;

    invoke-direct {p1}, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortBy$4;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 866
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_7

    new-instance p1, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortByDescending$3;

    invoke-direct {p1}, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortByDescending$3;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 868
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_8

    new-instance p1, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortByDescending$4;

    invoke-direct {p1}, Lcom/innioasis/y1/activity/PhotosActivity$setPathFiles$$inlined$sortByDescending$4;-><init>()V

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 331
    :cond_8
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    .line 332
    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 333
    check-cast v1, Ljava/util/Collection;

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method private final shortEnter()V
    .locals 0

    .line 670
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->confirm()V

    return-void
.end method

.method private final shortLeft()V
    .locals 0

    .line 678
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->antiClockwise()V

    return-void
.end method

.method private final shortRight()V
    .locals 0

    .line 674
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->clockwise()V

    return-void
.end method

.method private final shortTop()V
    .locals 8

    .line 614
    iget-boolean v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->isMultiSelect:Z

    if-eqz v0, :cond_0

    .line 615
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->cancelMultiSelect()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 618
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->isMultiSelect:Z

    .line 619
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 621
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 623
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getStackList()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 624
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->setList(Ljava/util/Collection;)V

    .line 626
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getStackIndex()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "stackIndex.pop()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->setMark(I)V

    .line 628
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getStackList()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "items"

    .line 629
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$1;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 633
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getStackTitle()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "stackTitle.pop()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowTitle:Ljava/lang/String;

    .line 634
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/PhotosActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 637
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

    const/4 v4, 0x0

    new-instance v1, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2;

    const/4 v5, 0x0

    invoke-direct {v1, v0, p0, v5}, Lcom/innioasis/y1/activity/PhotosActivity$shortTop$2;-><init>(Ljava/util/List;Lcom/innioasis/y1/activity/PhotosActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const-string v0, ""

    .line 661
    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->emptyDirectoryPath:Ljava/lang/String;

    goto :goto_0

    .line 664
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->finish()V

    :goto_0
    return-void
.end method

.method private final showPicture(Ljava/lang/String;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->handler:Lcom/innioasis/y1/activity/PhotosActivity$handler$1;

    iget v1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->whatshowpicture:I

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->removeMessages(I)V

    .line 232
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 233
    iget v1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->whatshowpicture:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 234
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->handler:Lcom/innioasis/y1/activity/PhotosActivity$handler$1;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/activity/PhotosActivity$handler$1;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private final toPathFolder(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    .line 244
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->setMark(I)V

    const-string v1, "/storage"

    .line 245
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowPath:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f110156

    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/PhotosActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v4, 0x1

    .line 251
    invoke-static {v1, v3, v2, v4, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 254
    sget-object v1, Lcom/innioasis/y1/activity/PhotosActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/innioasis/y1/activity/PhotosActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 255
    :cond_1
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

    new-instance v0, Lcom/innioasis/y1/activity/PhotosActivity$toPathFolder$2;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/innioasis/y1/activity/PhotosActivity$toPathFolder$2;-><init>(Lcom/innioasis/y1/activity/PhotosActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private static final toPathFolder$lambda-0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final upDataImager()V
    .locals 2

    .line 342
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowPicturePath:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    iput-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowPicturePath:Ljava/lang/String;

    .line 348
    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->showPicture(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 3

    .line 772
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    if-lez v0, :cond_4

    .line 776
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->isDirectory()Z

    move-result v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 777
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 781
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->setMark(I)V

    .line 783
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyItemRangeChanged(II)V

    .line 784
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 785
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->upDataImager()V

    :cond_4
    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 761
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->setMark(I)V

    .line 763
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyItemRangeChanged(II)V

    .line 764
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 765
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->upDataImager()V

    :cond_0
    return-void
.end method

.method public confirm()V
    .locals 2

    .line 794
    iget-boolean v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->isMultiSelect:Z

    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->selectByPosition(I)V

    .line 796
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->clockwise()V

    goto/16 :goto_0

    .line 798
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 801
    iget v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->pictureDisplayMods:I

    if-nez v0, :cond_1

    .line 803
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x1

    .line 804
    iput v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->pictureDisplayMods:I

    goto/16 :goto_0

    .line 807
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getPhotos()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    .line 808
    iput v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->pictureDisplayMods:I

    goto/16 :goto_0

    .line 813
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v0

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    return-void

    .line 816
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 819
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 820
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getStackList()Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getStackIndex()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getStackTitle()Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->toPathFolder(Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :cond_4
    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/PhotosActivity$Item;

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/PhotosActivity$Item;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->showPicture(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 836
    sget-object v0, Lcom/innioasis/y1/activity/PhotosActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 582
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-nez p1, :cond_3

    return v0

    .line 584
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    .line 585
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->wasDown:Z

    .line 586
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 587
    iput-boolean v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->isLongDown:Z

    .line 588
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 589
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result v1

    if-ne p1, v1, :cond_4

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->longTop()V

    goto/16 :goto_3

    .line 590
    :cond_4
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v1

    if-ne p1, v1, :cond_5

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->longEnter()V

    goto/16 :goto_3

    .line 591
    :cond_5
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result v1

    if-ne p1, v1, :cond_f

    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->longClickPlayBtnToStop()V

    goto/16 :goto_3

    .line 595
    :cond_6
    iget-boolean v1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->isLongDown:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/innioasis/y1/activity/PhotosActivity;->wasDown:Z

    if-eqz v1, :cond_d

    .line 596
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 597
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result v1

    if-ne p1, v1, :cond_7

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->antiClockwise()V

    goto :goto_2

    .line 598
    :cond_7
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_DOWN()I

    move-result v1

    if-ne p1, v1, :cond_8

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->clockwise()V

    goto :goto_2

    .line 599
    :cond_8
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result v1

    if-ne p1, v1, :cond_9

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->shortLeft()V

    goto :goto_2

    .line 600
    :cond_9
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result v1

    if-ne p1, v1, :cond_a

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->shortRight()V

    goto :goto_2

    .line 601
    :cond_a
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result v1

    if-ne p1, v1, :cond_b

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->shortTop()V

    goto :goto_2

    .line 602
    :cond_b
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_PLAY()I

    move-result v1

    if-ne p1, v1, :cond_c

    sget-object p1, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {p1}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/innioasis/y1/service/PlayerService;->playOrPause()V

    goto :goto_2

    .line 603
    :cond_c
    sget-object v1, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v1}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v1

    if-ne p1, v1, :cond_e

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->shortEnter()V

    goto :goto_2

    .line 606
    :cond_d
    iput-boolean v2, p0, Lcom/innioasis/y1/activity/PhotosActivity;->isLongDown:Z

    .line 608
    :cond_e
    :goto_2
    iput-boolean v2, p0, Lcom/innioasis/y1/activity/PhotosActivity;->wasDown:Z

    :cond_f
    :goto_3
    return v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityPhotosBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityPhotosBinding;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityPhotosBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 4

    .line 218
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.main_photos)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getAdapter()Lcom/innioasis/y1/base/BaseBindingAdapter;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 220
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 222
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityPhotosBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 224
    iget-object v0, p0, Lcom/innioasis/y1/activity/PhotosActivity;->nowPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/innioasis/y1/activity/PhotosActivity;->toPathFolder(Ljava/lang/String;)V

    return-void
.end method

.method public longConfirm()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 850
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 851
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/PhotosActivity;->updateBaseWallpaper()V

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
