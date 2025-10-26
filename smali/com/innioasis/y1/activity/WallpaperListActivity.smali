.class public final Lcom/innioasis/y1/activity/WallpaperListActivity;
.super Lcom/innioasis/y1/base/BaseActivity;
.source "WallpaperListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/activity/WallpaperListActivity$Companion;,
        Lcom/innioasis/y1/activity/WallpaperListActivity$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/innioasis/y1/base/BaseActivity<",
        "Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0005\u0018\u0000 \u001e2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u000eH\u0017J\u0008\u0010\u000f\u001a\u00020\u000eH\u0017J\u0008\u0010\u0010\u001a\u00020\u000eH\u0017J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0008\u0010\u0015\u001a\u00020\u000eH\u0016J\u0008\u0010\u0016\u001a\u00020\u000eH\u0016J\"\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u000b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0015J\u0008\u0010\u001c\u001a\u00020\u000eH\u0016J\u0008\u0010\u001d\u001a\u00020\u000eH\u0002R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/innioasis/y1/activity/WallpaperListActivity;",
        "Lcom/innioasis/y1/base/BaseActivity;",
        "Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;",
        "()V",
        "adapter",
        "com/innioasis/y1/activity/WallpaperListActivity$adapter$2$1",
        "getAdapter",
        "()Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "desktopRequestCode",
        "",
        "globalRequestCode",
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
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "quit",
        "updateRight",
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
.field public static final Companion:Lcom/innioasis/y1/activity/WallpaperListActivity$Companion;

.field public static final TYPE_DESKTOP:I = 0x1

.field public static final TYPE_GLOBAL:I = 0x2


# instance fields
.field private final adapter$delegate:Lkotlin/Lazy;

.field private final desktopRequestCode:I

.field private final globalRequestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/innioasis/y1/activity/WallpaperListActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/innioasis/y1/activity/WallpaperListActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/innioasis/y1/activity/WallpaperListActivity;->Companion:Lcom/innioasis/y1/activity/WallpaperListActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/innioasis/y1/base/BaseActivity;-><init>()V

    const/4 v0, 0x2

    .line 27
    iput v0, p0, Lcom/innioasis/y1/activity/WallpaperListActivity;->desktopRequestCode:I

    const/4 v0, 0x3

    .line 28
    iput v0, p0, Lcom/innioasis/y1/activity/WallpaperListActivity;->globalRequestCode:I

    .line 31
    new-instance v0, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2;-><init>(Lcom/innioasis/y1/activity/WallpaperListActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/innioasis/y1/activity/WallpaperListActivity;->adapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$updateRight(Lcom/innioasis/y1/activity/WallpaperListActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->updateRight()V

    return-void
.end method

.method private final getAdapter()Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/innioasis/y1/activity/WallpaperListActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;

    return-object v0
.end method

.method private final updateRight()V
    .locals 3

    .line 176
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getMark()I

    move-result v0

    const v1, 0x7f08006b

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 192
    :cond_0
    sget-object v0, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmapPreview()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;->img:Landroid/widget/ImageView;

    sget-object v1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getGlobalBitmapPreview()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 185
    :cond_2
    sget-object v0, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmapPreview()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;->img:Landroid/widget/ImageView;

    sget-object v1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    invoke-virtual {v1}, Lcom/innioasis/y1/utils/WallpaperUtils;->getDesktopBitmapPreview()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;->img:Landroid/widget/ImageView;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_4
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getWallpaperBlur()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;->img:Landroid/widget/ImageView;

    const v1, 0x7f08006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 181
    :cond_5
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;->img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public antiClockwise()V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getMark()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->setMark(I)V

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 88
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->updateRight()V

    return-void
.end method

.method public clockwise()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getMark()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getMark()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->setMark(I)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->notifyDataSetChanged()V

    .line 79
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->updateRight()V

    return-void
.end method

.method public confirm()V
    .locals 5

    .line 98
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getMark()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v2, "type"

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    const-class v0, Lcom/innioasis/y1/activity/WallpaperActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lcom/innioasis/y1/activity/WallpaperListActivity;->globalRequestCode:I

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/innioasis/y1/activity/WallpaperListActivity;->toActivity(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 116
    :cond_1
    const-class v0, Lcom/innioasis/y1/activity/WallpaperActivity;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p0, Lcom/innioasis/y1/activity/WallpaperListActivity;->desktopRequestCode:I

    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/innioasis/y1/activity/WallpaperListActivity;->toActivity(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 100
    :cond_2
    sget-object v0, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->getWallpaperBlur()Z

    move-result v0

    xor-int/2addr v0, v1

    .line 101
    sget-object v2, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->INSTANCE:Lcom/innioasis/y1/utils/SharedPreferencesUtils;

    invoke-virtual {v2, v0}, Lcom/innioasis/y1/utils/SharedPreferencesUtils;->setWallpaperBlur(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11019a

    .line 104
    invoke-virtual {p0, v2}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const v3, 0x7f11019c

    .line 105
    invoke-virtual {p0, v3}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 102
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    new-instance v2, Lcom/innioasis/y1/activity/WallpaperListActivity$confirm$1;

    invoke-direct {v2, v0, p0}, Lcom/innioasis/y1/activity/WallpaperListActivity$confirm$1;-><init>(Landroid/app/ProgressDialog;Lcom/innioasis/y1/activity/WallpaperListActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2}, Lcom/innioasis/y1/utils/WallpaperUtils;->loadBitmap(Lkotlin/jvm/functions/Function0;)V

    .line 114
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->notifyDataSetChanged()V

    :goto_0
    return-void
.end method

.method public direction(Lcom/innioasis/y1/base/BaseActivity$Direction;)V
    .locals 1

    const-string v0, "d"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/innioasis/y1/activity/WallpaperListActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity$Direction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->finish()V

    :goto_0
    return-void
.end method

.method public bridge synthetic getViewBinding()Landroidx/viewbinding/ViewBinding;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getViewBinding()Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    move-result-object v0

    check-cast v0, Landroidx/viewbinding/ViewBinding;

    return-object v0
.end method

.method public getViewBinding()Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    move-result-object v0

    const-string v1, "inflate(layoutInflater)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public initView()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resources.getString(R.string.setting_wallpaper)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->setStateBarLeftText(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 65
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getVb()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;

    iget-object v0, v0, Lcom/innioasis/y1/databinding/ActivityWallpaperListBinding;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 67
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110199

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026g_wallpaper_ground_glass)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->addData(Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026etting_wallpaper_desktop)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->addData(Ljava/lang/Object;)V

    .line 69
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getAdapter()Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;

    move-result-object v0

    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026setting_wallpaper_global)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/activity/WallpaperListActivity$adapter$2$1;->addData(Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/innioasis/y1/utils/WallpaperUtils;->INSTANCE:Lcom/innioasis/y1/utils/WallpaperUtils;

    sget-object v1, Lcom/innioasis/y1/activity/WallpaperListActivity$initView$1;->INSTANCE:Lcom/innioasis/y1/activity/WallpaperListActivity$initView$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/utils/WallpaperUtils;->loadBitmap(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public longConfirm()V
    .locals 0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/innioasis/y1/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->updateRight()V

    .line 165
    invoke-virtual {p0}, Lcom/innioasis/y1/activity/WallpaperListActivity;->updateBaseWallpaper()V

    :cond_0
    return-void
.end method

.method public quit()V
    .locals 0

    return-void
.end method
