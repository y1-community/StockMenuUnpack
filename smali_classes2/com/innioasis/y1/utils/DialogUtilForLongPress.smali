.class public final Lcom/innioasis/y1/utils/DialogUtilForLongPress;
.super Lcom/innioasis/y1/base/BaseDialog;
.source "DialogUtilForLongPress.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001:\u0001\u001dB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0012\u0010\u0013\u001a\u00020\u000f2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0014J\u001e\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\t\u001a\u00020\nJ\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0010\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u0005H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/DialogUtilForLongPress;",
        "Lcom/innioasis/y1/base/BaseDialog;",
        "activity",
        "Landroid/app/Activity;",
        "themeResId",
        "",
        "(Landroid/app/Activity;I)V",
        "binding",
        "Lcom/innioasis/y1/databinding/PopupDialogBinding;",
        "callback",
        "Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;",
        "canSelect",
        "",
        "isConfirm",
        "longDown",
        "",
        "keyCode",
        "repeatCount",
        "longDownFinish",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setDialogTitle",
        "title",
        "",
        "msg",
        "shortUp",
        "switchBut",
        "direction",
        "DialogCallback",
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
.field private final activity:Landroid/app/Activity;

.field private binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

.field private callback:Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;

.field private canSelect:Z

.field private isConfirm:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p2}, Lcom/innioasis/y1/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 21
    iput-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->activity:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->isConfirm:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7f120118

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;-><init>(Landroid/app/Activity;I)V

    return-void
.end method

.method private final switchBut(I)V
    .locals 6

    .line 59
    iget-boolean v0, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->isConfirm:Z

    const v1, 0x7f080096

    const v2, 0x7f080095

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    if-gez p1, :cond_4

    .line 60
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v0, p1, v2, v4}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetBackground(Landroid/widget/TextView;IZ)V

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v0, p1, v1, v5}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetBackground(Landroid/widget/TextView;IZ)V

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v0, p1, v3, v4}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetTextColor(Landroid/widget/TextView;IZ)V

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v0, p1, v3, v5}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetTextColor(Landroid/widget/TextView;IZ)V

    .line 64
    :cond_3
    iget-boolean p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->isConfirm:Z

    xor-int/2addr p1, v5

    iput-boolean p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->isConfirm:Z

    goto :goto_0

    :cond_4
    if-nez v0, :cond_9

    if-lez p1, :cond_9

    .line 66
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v0, p1, v1, v5}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetBackground(Landroid/widget/TextView;IZ)V

    .line 67
    :cond_5
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v0, p1, v2, v4}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetBackground(Landroid/widget/TextView;IZ)V

    .line 68
    :cond_6
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v0, p1, v3, v5}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetTextColor(Landroid/widget/TextView;IZ)V

    .line 69
    :cond_7
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    if-eqz p1, :cond_8

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v0, p1, v3, v4}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetTextColor(Landroid/widget/TextView;IZ)V

    .line 70
    :cond_8
    iget-boolean p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->isConfirm:Z

    xor-int/2addr p1, v5

    iput-boolean p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->isConfirm:Z

    :cond_9
    :goto_0
    return-void
.end method


# virtual methods
.method public longDown(II)V
    .locals 0

    return-void
.end method

.method public longDownFinish(I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 76
    invoke-super {p0, p1}, Lcom/innioasis/y1/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 77
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/innioasis/y1/databinding/PopupDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    .line 78
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/PopupDialogBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->setContentView(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f080096

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetBackground(Landroid/widget/TextView;IZ)V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const v1, 0x7f080095

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetBackground(Landroid/widget/TextView;IZ)V

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->card:Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->dialogBGColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    const/high16 v0, -0x1000000

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->title:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->dialogTextColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->dialogTextColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void
.end method

.method public final setDialogTitle(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;)V
    .locals 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\u663e\u793a\u5f39\u7a97"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iput-object p3, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->callback:Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;

    .line 92
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->show()V

    .line 93
    iget-object p3, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p3, :cond_0

    .line 94
    iget-object v0, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->title:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f110075

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f11006e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070093

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p2, -0x2

    .line 102
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public shortUp(I)V
    .locals 3

    .line 30
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_DOWN()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->switchBut(I)V

    goto :goto_5

    .line 31
    :cond_2
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result v0

    if-ne p1, v0, :cond_3

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->switchBut(I)V

    goto :goto_5

    .line 32
    :cond_5
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    if-ne p1, v0, :cond_8

    .line 33
    iget-boolean p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->isConfirm:Z

    if-eqz p1, :cond_6

    .line 34
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "\u786e\u8ba4"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->callback:Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;->confirm()V

    goto :goto_4

    .line 37
    :cond_6
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->callback:Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/innioasis/y1/utils/DialogUtilForLongPress$DialogCallback;->cancel()V

    .line 40
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->dismiss()V

    goto :goto_5

    .line 42
    :cond_8
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result v0

    if-ne p1, v0, :cond_9

    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtilForLongPress;->dismiss()V

    :cond_9
    :goto_5
    return-void
.end method
