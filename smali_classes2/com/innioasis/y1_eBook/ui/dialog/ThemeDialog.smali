.class public final Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;
.super Lcom/innioasis/y1/base/BaseDialog;
.source "ThemeDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThemeDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThemeDialog.kt\ncom/innioasis/y1_eBook/ui/dialog/ThemeDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1#2:140\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001 B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0012\u0010\u0018\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0018\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0007H\u0016R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;",
        "Lcom/innioasis/y1/base/BaseDialog;",
        "mActivity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;",
        "id",
        "",
        "(Landroid/app/Activity;Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;I)V",
        "binding",
        "Lcom/innioasis/y1/databinding/DialogBookThemeBinding;",
        "getBinding",
        "()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "index",
        "isUseUp",
        "",
        "itemSum",
        "longDown",
        "",
        "keyCode",
        "repeatCount",
        "longDownFinish",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyUp",
        "event",
        "Landroid/view/KeyEvent;",
        "selIndex",
        "shortUp",
        "Callback",
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
.field private final binding$delegate:Lkotlin/Lazy;

.field private final callback:Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;

.field private index:I

.field private isUseUp:Z

.field private itemSum:I

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public static synthetic $r8$lambda$jBodOGGdrcigOSvOH5ti9QAEUek(Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->onCreate$lambda-1(Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;I)V
    .locals 1

    const-string v0, "mActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p3}, Lcom/innioasis/y1/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 19
    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->mActivity:Landroid/app/Activity;

    .line 20
    iput-object p2, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->callback:Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;

    .line 25
    new-instance p1, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$binding$2;-><init>(Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->binding$delegate:Lkotlin/Lazy;

    const/4 p1, 0x5

    .line 34
    iput p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->itemSum:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const p3, 0x7f120118

    .line 18
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;-><init>(Landroid/app/Activity;Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;I)V

    return-void
.end method

.method private final getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    return-object v0
.end method

.method private static final onCreate$lambda-1(Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->isUseUp:Z

    return-void
.end method

.method private final selIndex(I)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->callback:Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;

    sget-object v1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->INSTANCE:Lcom/innioasis/y1_eBook/utils/EbookSpUtils;

    invoke-virtual {v1, p1}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->saveTheme(I)Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$Callback;->setTheme(Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;)V

    .line 72
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg0:Landroid/widget/ImageView;

    const v1, 0x7f0800c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg1:Landroid/widget/ImageView;

    const v1, 0x7f0800c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg2:Landroid/widget/ImageView;

    const v1, 0x7f0800c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg3:Landroid/widget/ImageView;

    const v1, 0x7f0800cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg4:Landroid/widget/ImageView;

    const v1, 0x7f0800cd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg4:Landroid/widget/ImageView;

    const v0, 0x7f0800ce

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg3:Landroid/widget/ImageView;

    const v0, 0x7f0800cc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg2:Landroid/widget/ImageView;

    const v0, 0x7f0800ca

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg1:Landroid/widget/ImageView;

    const v0, 0x7f0800c8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    :cond_4
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->itemThemeImg0:Landroid/widget/ImageView;

    const v0, 0x7f0800c6

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public longDown(II)V
    .locals 3

    .line 119
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 120
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->mActivity:Landroid/app/Activity;

    instance-of p2, p1, Lcom/innioasis/y1/base/BaseActivity;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/innioasis/y1/base/BaseActivity;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity;->askShutdown()V

    :cond_3
    return-void
.end method

.method public longDownFinish(I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/innioasis/y1/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dialog onCreate ++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p1}, Lcom/innioasis/y1/theme/ThemeManager;->menuBGColor()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookThemeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/DialogBookThemeBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->setContentView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 52
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 53
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 54
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    :goto_1
    new-instance p1, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    sget-object p1, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->INSTANCE:Lcom/innioasis/y1_eBook/utils/EbookSpUtils;

    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils;->getTheme()Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/innioasis/y1_eBook/utils/EbookSpUtils$Theme;->getId()I

    move-result p1

    iput p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->index:I

    .line 67
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->selIndex(I)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-boolean v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->isUseUp:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->isUseUp:Z

    return p1

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/innioasis/y1/base/BaseDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shortUp(I)V
    .locals 3

    .line 89
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 90
    iget p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->index:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->index:I

    if-gez p1, :cond_2

    .line 92
    iput v1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->index:I

    return-void

    .line 95
    :cond_2
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->selIndex(I)V

    goto :goto_4

    .line 98
    :cond_3
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_DOWN()I

    move-result v0

    if-ne p1, v0, :cond_4

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    .line 99
    iget p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->index:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->index:I

    .line 100
    iget v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->itemSum:I

    if-lt p1, v0, :cond_6

    sub-int/2addr v0, v2

    .line 101
    iput v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->index:I

    return-void

    .line 104
    :cond_6
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->selIndex(I)V

    goto :goto_4

    .line 107
    :cond_7
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    if-eq p1, v0, :cond_9

    .line 111
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 112
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->getOnBack()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 113
    :cond_8
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ThemeDialog;->dismiss()V

    :cond_9
    :goto_4
    return-void
.end method
