.class public final Lcom/innioasis/y1/activity/MainActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "MainActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/MainActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityMainBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0013\u001a\u00020\u0014H\u0017J\u0008\u0010\u0015\u001a\u00020\u0014H\u0017J\u0008\u0010\u0016\u001a\u00020\u0014H\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0002H\u0016J\u0008\u0010\u001b\u001a\u00020\u0014H\u0002J\u0008\u0010\u001c\u001a\u00020\u0014H\u0017J\u0008\u0010\u001d\u001a\u00020\u0014H\u0016J\u0008\u0010\u001e\u001a\u00020\u0014H\u0016J\u0012\u0010\u001f\u001a\u00020\u00142\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0014J\u0008\u0010\"\u001a\u00020\u0014H\u0014J\u0008\u0010#\u001a\u00020\u0014H\u0016J\u0008\u0010$\u001a\u00020\u0014H\u0002J\u0008\u0010%\u001a\u00020\u0014H\u0002J\u0008\u0010&\u001a\u00020\u0014H\u0002J\u0008\u0010\'\u001a\u00020\u0014H\u0002R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000bX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/innioasis/y1/activity/MainActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityMainBinding;",
        "()V",
        "adapter",
        "Lcom/innioasis/y1/base/BaseBindingAdapter;",
        "",
        "Lcom/innioasis/y1/databinding/ItemMainBinding;",
        "desktopBitmapCode",
        "",
        "enableSpeedClockwise",
        "",
        "getEnableSpeedClockwise",
        "()Z",
        "itemList",
        "",
        "lock",
        "random",
        "Ljava/util/Random;",
        "antiClockwise",
        "",
        "clockwise",
        "confirm",
        "direction",
        "d",
        "Lcom/innioasis/y1/base/BaseActivity$Direction;",
        "getViewBinding",
        "initRecycler",
        "initView",
        "longConfirm",
        "onBackPressed",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
        "onResume",
        "quit",
        "randomPlay",
        "selItem",
        "test",
        "toFmActivity",
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
.field private adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/innioasis/y1/base/BaseBindingAdapter<",
            "Ljava/lang/String;",
            "Lcom/innioasis/y1/databinding/ItemMainBinding;",
            ">;"
        }
    .end annotation
.end field

.field private desktopBitmapCode:I

.field private final enableSpeedClockwise:Z

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lock:Z

.field private final random:Ljava/util/Random;


# direct methods
.method public static synthetic $r8$lambda$8ZXFthcgORENLAT5xi55SukuL5U(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/innioasis/y1/activity/MainActivity;->initView$lambda-0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tiRWtsCzks-33tBNOxCbfd_dFwI(Lcom/innioasis/y1/activity/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/innioasis/y1/activity/MainActivity;->initRecycler$lambda-2(Lcom/innioasis/y1/activity/MainActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    .line 387
    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/innioasis/y1/activity/MainActivity;->random:Ljava/util/Random;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/innioasis/y1/activity/MainActivity;)Lcom/innioasis/y1/base/BaseBindingAdapter;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/innioasis/y1/activity/MainActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/innioasis/y1/activity/MainActivity;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/innioasis/y1/activity/MainActivity;->lock:Z

    return p0
.end method

.method public static final synthetic access$setDesktopBitmapCode$p(Lcom/innioasis/y1/activity/MainActivity;I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/innioasis/y1/activity/MainActivity;->desktopBitmapCode:I

    return-void
.end method

.method public static final synthetic access$setLock$p(Lcom/innioasis/y1/activity/MainActivity;Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/innioasis/y1/activity/MainActivity;->lock:Z

    return-void
.end method

.method public static final synthetic access$toFmActivity(Lcom/innioasis/y1/activity/MainActivity;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/innioasis/y1/activity/MainActivity;->toFmActivity()V

    return-void
.end method

.method private final initRecycler()V
    .locals 5

    .line 415
    new-instance v0, Lcom/innioasis/y1/activity/MainActivity$initRecycler$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/MainActivity$initRecycler$1;-><init>(Lcom/innioasis/y1/activity/MainActivity;)V

    check-cast v0, Lcom/innioasis/y1/base/BaseBindingAdapter;

    iput-object v0, p0, Lcom/innioasis/y1/activity/MainActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    .line 439
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;->rcList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/innioasis/y1/activity/MainActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    const-string v2, "adapter"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 440
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;->rcList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 441
    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_1
    iget-object v1, p0, Lcom/innioasis/y1/activity/MainActivity;->itemList:Ljava/util/List;

    if-nez v1, :cond_2

    const-string v1, "itemList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/innioasis/y1/base/BaseBindingAdapter;->setData$com_github_CymChad_brvah(Ljava/util/List;)V

    .line 442
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;->rcList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/innioasis/y1/activity/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/innioasis/y1/activity/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/innioasis/y1/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final initRecycler$lambda-2(Lcom/innioasis/y1/activity/MainActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;->rcList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private static final initView$lambda-0(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final randomPlay()V
    .locals 4

    .line 389
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/innioasis/y1/database/Y1Repository;->getSongsSync$default(Lcom/innioasis/y1/database/Y1Repository;IILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableList<com.innioasis.y1.database.Song>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 391
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/innioasis/y1/activity/MainActivity;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    mul-float v1, v1, v2

    .line 399
    sget-object v2, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v2}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v2

    if-eqz v2, :cond_1

    float-to-int v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/innioasis/y1/service/PlayerService;->setMusicPlaylist(Ljava/util/List;I)V

    .line 400
    :cond_1
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lcom/innioasis/music/MusicPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final selItem()V
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 450
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "vb.ivNow"

    if-eqz v1, :cond_1

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080163

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080164

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 452
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080162

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 453
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080159

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 454
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100da

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08015c

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 455
    :cond_5
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100db

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08015d

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 456
    :cond_6
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100dc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08015e

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 457
    :cond_7
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100dd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08015f

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto/16 :goto_0

    .line 458
    :cond_8
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080165

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 459
    :cond_9
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080166

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 460
    :cond_a
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f08015b

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    goto :goto_0

    :cond_b
    const v1, 0x7f1100e3

    .line 461
    invoke-virtual {p0, v1}, Lcom/innioasis/y1/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->ivNow:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f080167

    invoke-virtual {v0, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->commonSetIcon(Landroid/widget/ImageView;I)V

    :cond_c
    :goto_0
    return-void
.end method

.method private final test()V
    .locals 9

    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 137
    :try_start_0
    const-class v3, Landroid/app/Activity;

    const-string v4, "getSystemService"

    new-array v5, v2, [Ljava/lang/Class;

    .line 140
    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "Activity::class.java.get\u2026ice\", String::class.java)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    const-class v4, Landroid/content/Context;

    const-string v5, "AUDIOPROFILE_SERVICE"

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const-string v5, "Context::class.java.getD\u2026d(\"AUDIOPROFILE_SERVICE\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setSoundEffectEnabled"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    .line 148
    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v2

    .line 147
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const-string v5, "mProfileManager::class.j\u2026:class.java\n            )"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "mtk_audioprofile_general"

    aput-object v6, v5, v1

    .line 151
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 153
    sget-object v4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v4, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/Throwable;)V

    .line 156
    :goto_0
    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3, v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setMusicRepeatMode(I)V

    .line 158
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 160
    :try_start_1
    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 164
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 171
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :cond_0
    :goto_1
    const/16 v0, 0xff

    const-string v2, "screen_brightness"

    .line 173
    invoke-static {v3, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "audio"

    .line 177
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 178
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 179
    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method private final toFmActivity()V
    .locals 4

    .line 467
    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getHeadsetValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/innioasis/y1/utils/Static;->INSTANCE:Lcom/innioasis/y1/utils/Static;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static;->getHeadsetValue()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/Static$Headset;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/Static$Headset;->isPlugged()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 474
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 475
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->getPlaying()Lcom/innioasis/y1/service/PlayerService$Playing;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/innioasis/y1/activity/MainActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/innioasis/y1/service/PlayerService$Playing;->ordinal()I

    move-result v1

    aget v0, v0, v1

    :goto_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    goto :goto_2

    .line 476
    :cond_4
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/innioasis/y1/service/PlayerService;->stop()V

    .line 499
    :cond_5
    :goto_2
    const-class v0, Lcom/innioasis/fm/FMMainActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->toActivity(Ljava/lang/Class;)V

    return-void

    .line 468
    :cond_6
    :goto_3
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "\u8033\u673a\u672a\u8fde\u63a5   \u4e0d\u5141\u8bb8\u6253\u5f00\u6536\u97f3\u673a"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110139

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 469
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->setMark(I)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity;->itemList:Ljava/util/List;

    if-nez v0, :cond_1

    const-string v0, "itemList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->setMark(I)V

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    if-nez v0, :cond_2

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 268
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;->rcList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 269
    invoke-direct {p0}, Lcom/innioasis/y1/activity/MainActivity;->selItem()V

    return-void
.end method

.method public clockwise()V
    .locals 3

    .line 250
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v0

    iget-object v1, p0, Lcom/innioasis/y1/activity/MainActivity;->itemList:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "itemList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->setMark(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->setMark(I)V

    .line 255
    :goto_0
    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    if-nez v0, :cond_2

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Lcom/innioasis/y1/base/BaseBindingAdapter;->notifyDataSetChanged()V

    .line 256
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityMainBinding;->rcList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 257
    invoke-direct {p0}, Lcom/innioasis/y1/activity/MainActivity;->selItem()V

    return-void
.end method

.method public confirm()V
    .locals 8

    .line 282
    iget-object v0, p0, Lcom/innioasis/y1/activity/MainActivity;->adapter:Lcom/innioasis/y1/base/BaseBindingAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "adapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseBindingAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getMark()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance v0, Lcom/innioasis/y1/activity/MainActivity$confirm$1;

    invoke-direct {v0, p0, v1}, Lcom/innioasis/y1/activity/MainActivity$confirm$1;-><init>(Lcom/innioasis/y1/activity/MainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto/16 :goto_0

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    const-class v0, Lcom/innioasis/y1/activity/video/VideoListActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->toActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 337
    :cond_2
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 338
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 339
    :cond_3
    const-class v0, Lcom/innioasis/music/MusicMainActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->toActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 342
    :cond_4
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100d9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 343
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 344
    :cond_5
    const-class v0, Lcom/innioasis/y1/activity/BluetoothActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->toActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 347
    :cond_6
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100d8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 348
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 349
    :cond_7
    const-class v0, Lcom/innioasis/y1/activity/EbookActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->toActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 352
    :cond_8
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100da

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 353
    const-class v0, Lcom/innioasis/y1_eBook/ui/main/MainActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->toActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 356
    :cond_9
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100db

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 357
    const-class v0, Lcom/innioasis/y1_calculator/ui/CalculatorActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->toActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 360
    :cond_a
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100dc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 361
    const-class v0, Lcom/innioasis/y1_calendar/ui/CalendarActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->toActivity(Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 365
    :cond_b
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100dd

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 366
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 367
    :cond_c
    invoke-direct {p0}, Lcom/innioasis/y1/activity/MainActivity;->toFmActivity()V

    goto :goto_0

    .line 370
    :cond_d
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100e2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 371
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 372
    :cond_e
    const-class v0, Lcom/innioasis/y1/activity/SettingActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->toActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 375
    :cond_f
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100e1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 376
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 377
    :cond_10
    invoke-direct {p0}, Lcom/innioasis/y1/activity/MainActivity;->randomPlay()V

    goto :goto_0

    .line 380
    :cond_11
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100e0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 381
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getPlayerService()Lcom/innioasis/y1/service/PlayerService;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/service/PlayerService;->muteOrNoMuteMusic(Z)V

    .line 382
    :cond_12
    const-class v0, Lcom/innioasis/y1/activity/PhotosActivity;

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->toActivity(Ljava/lang/Class;)V

    :cond_13
    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getEnableSpeedClockwise()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/innioasis/y1/activity/MainActivity;->enableSpeedClockwise:Z

    return v0
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityMainBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityMainBinding;
    .locals 2

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->setTransparent(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityMainBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 6

    .line 77
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.page_home)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 78
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "restore2"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eae\u5c4f\u5f00\u673a\u65f6\u95f4 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bb0\u5f55\u8bed\u8a00  \u4e2d\u6587\uff1f "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getLanguage()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u8bed\u8a00  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Forest;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 85
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 86
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f11019a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f11019c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 84
    invoke-static {v0, v1, v3, v4, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    sget-object v1, Lcom/innioasis/y1/activity/MainActivity$$ExternalSyntheticLambda0;->INSTANCE:Lcom/innioasis/y1/activity/MainActivity$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 92
    :cond_1
    sget-object v1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    new-instance v3, Lcom/innioasis/y1/activity/MainActivity$initView$2;

    invoke-direct {v3, p0, v0}, Lcom/innioasis/y1/activity/MainActivity$initView$2;-><init>(Lcom/innioasis/y1/activity/MainActivity;Landroid/app/ProgressDialog;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v3}, Lcom/innioasis/y1/utils/WallpaperUtils;->loadBitmap(Lkotlin/jvm/functions/Function0;)V

    :cond_2
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 109
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100df

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 110
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1100de

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    .line 111
    sget-object v3, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isV4()Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1100e3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    aput-object v3, v0, v1

    const/4 v1, 0x3

    .line 112
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1100d8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    .line 113
    sget-object v3, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isShowEbook()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isRockBox()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1100da

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    aput-object v3, v0, v1

    const/4 v1, 0x5

    .line 114
    sget-object v3, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isV4()Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isRockBox()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1100db

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    move-object v3, v4

    :goto_3
    aput-object v3, v0, v1

    const/4 v1, 0x6

    .line 115
    sget-object v3, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isV4()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isRockBox()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1100dc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    move-object v3, v4

    :goto_4
    aput-object v3, v0, v1

    const/4 v1, 0x7

    .line 116
    sget-object v3, Lcom/innioasis/y1/utils/BuildFlavorUtil;->INSTANCE:Lcom/innioasis/y1/utils/BuildFlavorUtil;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/BuildFlavorUtil;->isV4()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_7
    aput-object v4, v0, v1

    const/16 v1, 0x8

    .line 117
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0x9

    .line 118
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/16 v1, 0xa

    .line 119
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 108
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/innioasis/y1/activity/MainActivity$initView$3$1;->INSTANCE:Lcom/innioasis/y1/activity/MainActivity$initView$3$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 108
    iput-object v0, p0, Lcom/innioasis/y1/activity/MainActivity;->itemList:Ljava/util/List;

    .line 124
    invoke-direct {p0}, Lcom/innioasis/y1/activity/MainActivity;->initRecycler()V

    .line 125
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getAppFirstUse()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 126
    sget-object v0, Lcom/innioasis/y1/Y1Application;->Companion:Lcom/innioasis/y1/Y1Application$Companion;

    invoke-virtual {v0}, Lcom/innioasis/y1/Y1Application$Companion;->getY1Repository()Lcom/innioasis/y1/database/Y1Repository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/database/Y1Repository;->refreshDatabase()V

    .line 127
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setAppFirstUse(Z)V

    .line 128
    sget-object v0, Lcom/innioasis/y1/utils/Utils;->INSTANCE:Lcom/innioasis/y1/utils/Utils;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/Utils;->initKeyToneState(Landroid/app/Activity;)V

    .line 130
    :cond_8
    invoke-direct {p0}, Lcom/innioasis/y1/activity/MainActivity;->selItem()V

    .line 131
    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/innioasis/y1/databinding/ActivityMainBinding;->back:Landroid/widget/ImageView;

    const-string v2, "vb.back"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->setDeskMask(Landroid/widget/ImageView;)V

    return-void
.end method

.method public longConfirm()V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 185
    invoke-super {p0, p1}, Lcom/innioasis/y1/base/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 187
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "NewIntent loadBitmap"

    invoke-virtual {p1, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    .line 189
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    new-instance v0, Lcom/innioasis/y1/activity/MainActivity$onNewIntent$1;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/MainActivity$onNewIntent$1;-><init>(Lcom/innioasis/y1/activity/MainActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->loadBitmap(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 196
    :cond_0
    iget p1, p0, Lcom/innioasis/y1/activity/MainActivity;->desktopBitmapCode:I

    sget-object v1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eq p1, v1, :cond_3

    .line 197
    sget-object p1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_2
    iput v0, p0, Lcom/innioasis/y1/activity/MainActivity;->desktopBitmapCode:I

    .line 198
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v2}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 205
    invoke-super {p0}, Lcom/innioasis/y1/base/BaseActivity;->onResume()V

    .line 206
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->isInTitle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.page_home)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/MainActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 211
    :cond_0
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\u6e32\u67d3mian \u58c1\u7eb8"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v3}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 215
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/sdcard0/Audiobooks"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    const/4 v0, 0x0

    .line 218
    :try_start_0
    sget-object v1, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    const/4 v4, 0x0

    new-instance v1, Lcom/innioasis/y1/activity/MainActivity$onResume$1;

    invoke-direct {v1, p0, v0}, Lcom/innioasis/y1/activity/MainActivity$onResume$1;-><init>(Lcom/innioasis/y1/activity/MainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :catch_0
    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/innioasis/y1/activity/MainActivity$onResume$2;

    invoke-direct {v1, p0, v0}, Lcom/innioasis/y1/activity/MainActivity$onResume$2;-><init>(Lcom/innioasis/y1/activity/MainActivity;Lkotlin/coroutines/Continuation;)V

    move-object v5, v1

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
