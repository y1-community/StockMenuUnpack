.class public final Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;
.super Lcom/innioasis/y1/base/BaseDialog;
.source "ReadingSettingsDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReadingSettingsDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReadingSettingsDialog.kt\ncom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001:\u0001 B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0007H\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0007H\u0016J\u0012\u0010\u0018\u001a\u00020\u00142\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0018\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0007H\u0002J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0007H\u0016R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;",
        "Lcom/innioasis/y1/base/BaseDialog;",
        "mActivity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;",
        "id",
        "",
        "(Landroid/app/Activity;Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;I)V",
        "binding",
        "Lcom/innioasis/y1/databinding/DialogBookSettingBinding;",
        "getBinding",
        "()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;",
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

.field private final callback:Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;

.field private index:I

.field private isUseUp:Z

.field private itemSum:I

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public static synthetic $r8$lambda$mIGwg-71CVMqd5VOTByzl2YR5UM(Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->onCreate$lambda-1(Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;I)V
    .locals 1

    const-string v0, "mActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p3}, Lcom/innioasis/y1/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->mActivity:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->callback:Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;

    .line 31
    new-instance p1, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$binding$2;-><init>(Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->binding$delegate:Lkotlin/Lazy;

    const/4 p1, 0x6

    .line 40
    iput p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->itemSum:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const p3, 0x7f120118

    .line 24
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;-><init>(Landroid/app/Activity;Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;I)V

    return-void
.end method

.method private final getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    return-object v0
.end method

.method private static final onCreate$lambda-1(Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->isUseUp:Z

    return-void
.end method

.method private final selIndex(I)V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemChapterImg:Landroid/widget/ImageView;

    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkAddImg:Landroid/widget/ImageView;

    const v1, 0x7f0800bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkListImg:Landroid/widget/ImageView;

    const v1, 0x7f0800c1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontBigImg:Landroid/widget/ImageView;

    const v1, 0x7f0800bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontSmallImg:Landroid/widget/ImageView;

    const v1, 0x7f0800bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemThemeImg:Landroid/widget/ImageView;

    const v1, 0x7f0800c3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemChapterTv:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkAddTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkListTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontBigTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontSmallTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 101
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemThemeTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "#08D4CC"

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemThemeImg:Landroid/widget/ImageView;

    const v1, 0x7f0800c4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemThemeTv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontSmallImg:Landroid/widget/ImageView;

    const v1, 0x7f0800be

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontSmallTv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontBigImg:Landroid/widget/ImageView;

    const v1, 0x7f0800bc

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontBigTv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 116
    :cond_3
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkListImg:Landroid/widget/ImageView;

    const v1, 0x7f0800c2

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkListTv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 111
    :cond_4
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkAddImg:Landroid/widget/ImageView;

    const v1, 0x7f0800c0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkAddTv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 106
    :cond_5
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemChapterImg:Landroid/widget/ImageView;

    const v1, 0x7f0800ba

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemChapterTv:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public longDown(II)V
    .locals 3

    .line 178
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

    .line 179
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->mActivity:Landroid/app/Activity;

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

    .line 52
    invoke-super {p0, p1}, Lcom/innioasis/y1/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dialog onCreate ++++++++++++++++++++++++++++++"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    sget-object p1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {p1}, Lcom/innioasis/y1/theme/ThemeManager;->menuBGColor()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->setContentView(Landroid/view/View;)V

    .line 57
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    .line 58
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 59
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 60
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 63
    :goto_1
    new-instance p1, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;)V

    invoke-virtual {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 67
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemChapterTv:Landroid/widget/TextView;

    const v0, 0x7f11005d

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemChapterImg:Landroid/widget/ImageView;

    const v0, 0x7f0800b9

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkAddTv:Landroid/widget/TextView;

    const v0, 0x7f110061

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkAddImg:Landroid/widget/ImageView;

    const v0, 0x7f0800bf

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkListTv:Landroid/widget/TextView;

    const v0, 0x7f110062

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemBookmarkListImg:Landroid/widget/ImageView;

    const v0, 0x7f0800c1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 76
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontBigTv:Landroid/widget/TextView;

    const v0, 0x7f11005e

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontBigImg:Landroid/widget/ImageView;

    const v0, 0x7f0800bb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontSmallTv:Landroid/widget/TextView;

    const v0, 0x7f11005f

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemFontSmallImg:Landroid/widget/ImageView;

    const v0, 0x7f0800bd

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemThemeTv:Landroid/widget/TextView;

    const v0, 0x7f110063

    invoke-static {v0}, Lcom/innioasis/y1_eBook/base/BaseKt;->getResStr(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-direct {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogBookSettingBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogBookSettingBinding;->itemThemeImg:Landroid/widget/ImageView;

    const v0, 0x7f0800c3

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    iget p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->index:I

    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->selIndex(I)V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-boolean v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->isUseUp:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->isUseUp:Z

    return p1

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/innioasis/y1/base/BaseDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shortUp(I)V
    .locals 3

    .line 140
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

    .line 141
    iget p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->index:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->index:I

    if-gez p1, :cond_2

    .line 143
    iput v1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->index:I

    return-void

    .line 146
    :cond_2
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->selIndex(I)V

    goto/16 :goto_4

    .line 149
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

    .line 150
    iget p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->index:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->index:I

    .line 151
    iget v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->itemSum:I

    if-lt p1, v0, :cond_6

    sub-int/2addr v0, v2

    .line 152
    iput v0, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->index:I

    return-void

    .line 155
    :cond_6
    invoke-direct {p0, p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->selIndex(I)V

    goto :goto_4

    .line 158
    :cond_7
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 160
    iget p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->index:I

    if-eqz p1, :cond_d

    if-eq p1, v2, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_8

    goto :goto_4

    .line 166
    :cond_8
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->callback:Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;

    invoke-interface {p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;->theme()V

    goto :goto_4

    .line 165
    :cond_9
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->callback:Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;

    invoke-interface {p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;->fontSmall()V

    goto :goto_4

    .line 164
    :cond_a
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->callback:Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;

    invoke-interface {p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;->fontBig()V

    goto :goto_4

    .line 163
    :cond_b
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->callback:Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;

    invoke-interface {p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;->markList()V

    goto :goto_4

    .line 162
    :cond_c
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->callback:Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;

    invoke-interface {p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;->addMark()V

    goto :goto_4

    .line 161
    :cond_d
    iget-object p1, p0, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->callback:Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;

    invoke-interface {p1}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog$Callback;->openChapter()V

    goto :goto_4

    .line 170
    :cond_e
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 171
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->getOnBack()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 172
    :cond_f
    invoke-virtual {p0}, Lcom/innioasis/y1_eBook/ui/dialog/ReadingSettingsDialog;->dismiss()V

    :cond_10
    :goto_4
    return-void
.end method
