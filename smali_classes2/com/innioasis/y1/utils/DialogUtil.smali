.class public final Lcom/innioasis/y1/utils/DialogUtil;
.super Lcom/innioasis/y1/base/BaseDialog;
.source "DialogUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogUtil.kt\ncom/innioasis/y1/utils/DialogUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,229:1\n1#2:230\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0001#B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0007H\u0016J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J\u0012\u0010\u0014\u001a\u00020\u00102\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0014J2\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0005J.\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u000cJ2\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0005J\u001e\u0010 \u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010!\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J\u0008\u0010\"\u001a\u00020\u0010H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/DialogUtil;",
        "Lcom/innioasis/y1/base/BaseDialog;",
        "activity",
        "Landroid/app/Activity;",
        "isFromLongPress",
        "",
        "themeResId",
        "",
        "(Landroid/app/Activity;ZI)V",
        "binding",
        "Lcom/innioasis/y1/databinding/PopupDialogBinding;",
        "callback",
        "Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;",
        "isConfirm",
        "isOnlyOneButton",
        "longDown",
        "",
        "keyCode",
        "repeatCount",
        "longDownFinish",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setDialogTitle",
        "Landroid/app/Dialog;",
        "title",
        "",
        "msg",
        "cancelable",
        "confirm",
        "cancel",
        "setDialogTitleOnlyOneButton",
        "setDialogTitleWarning",
        "shortUp",
        "switchBut",
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

.field private callback:Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

.field private isConfirm:Z

.field private final isFromLongPress:Z

.field private isOnlyOneButton:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ZI)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p3}, Lcom/innioasis/y1/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    iput-object p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->activity:Landroid/app/Activity;

    .line 23
    iput-boolean p2, p0, Lcom/innioasis/y1/utils/DialogUtil;->isFromLongPress:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const p3, 0x7f120118

    .line 21
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/innioasis/y1/utils/DialogUtil;-><init>(Landroid/app/Activity;ZI)V

    return-void
.end method

.method public static synthetic setDialogTitle$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic setDialogTitleOnlyOneButton$default(Lcom/innioasis/y1/utils/DialogUtil;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZILjava/lang/Object;)Landroid/app/Dialog;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    move v4, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 168
    invoke-virtual/range {v0 .. v5}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitleOnlyOneButton(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZ)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private final switchBut()V
    .locals 7

    .line 87
    iget-boolean v0, p0, Lcom/innioasis/y1/utils/DialogUtil;->isConfirm:Z

    const v1, 0x7f080095

    const v2, 0x7f080096

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v6, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v6, v0, v1, v4}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetBackground(Landroid/widget/TextView;IZ)V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1, v0, v2, v5}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetBackground(Landroid/widget/TextView;IZ)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1, v0, v3, v4}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetTextColor(Landroid/widget/TextView;IZ)V

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1, v0, v3, v5}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetTextColor(Landroid/widget/TextView;IZ)V

    goto :goto_0

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    sget-object v6, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v6, v0, v2, v5}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetBackground(Landroid/widget/TextView;IZ)V

    .line 95
    :cond_4
    iget-object v0, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v2, v0, v1, v4}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetBackground(Landroid/widget/TextView;IZ)V

    .line 96
    :cond_5
    iget-object v0, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1, v0, v3, v5}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetTextColor(Landroid/widget/TextView;IZ)V

    .line 97
    :cond_6
    iget-object v0, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1, v0, v3, v4}, Lcom/innioasis/y1/theme/ThemeManager;->optionSetTextColor(Landroid/widget/TextView;IZ)V

    :cond_7
    :goto_0
    return-void
.end method


# virtual methods
.method public longDown(II)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/innioasis/y1/utils/DialogUtil;->callback:Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/innioasis/y1/base/BaseDialog;

    invoke-virtual {v0, v2, p1, p2}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;->longDown(Lcom/innioasis/y1/base/BaseDialog;II)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 73
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    and-int/2addr p1, v1

    if-eqz p1, :cond_4

    .line 74
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->activity:Landroid/app/Activity;

    instance-of p2, p1, Lcom/innioasis/y1/base/BaseActivity;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/innioasis/y1/base/BaseActivity;

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity;->askShutdown()V

    :cond_4
    return-void
.end method

.method public longDownFinish(I)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Lcom/innioasis/y1/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/innioasis/y1/databinding/PopupDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    .line 104
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/PopupDialogBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/DialogUtil;->setContentView(Landroid/view/View;)V

    .line 105
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->card:Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/innioasis/y1/theme/ThemeManager;->dialogBGColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    const/high16 v0, -0x1000000

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->title:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->dialogTextColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    sget-object v1, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    invoke-virtual {v1, v0}, Lcom/innioasis/y1/theme/ThemeManager;->dialogTextColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    :cond_2
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil;->switchBut()V

    return-void
.end method

.method public final setDialogTitle(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZ)Landroid/app/Dialog;
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iput-boolean p4, p0, Lcom/innioasis/y1/utils/DialogUtil;->isConfirm:Z

    .line 146
    sget-object p4, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "\u663e\u793a\u5f39\u7a97"

    invoke-virtual {p4, v1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iput-object p3, p0, Lcom/innioasis/y1/utils/DialogUtil;->callback:Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    .line 148
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    .line 149
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil;->switchBut()V

    .line 150
    invoke-virtual {p0, p5}, Lcom/innioasis/y1/utils/DialogUtil;->setCancelable(Z)V

    .line 151
    iget-object p3, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p3, :cond_0

    .line 152
    iget-object p4, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->title:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const/high16 p4, -0x1000000

    invoke-virtual {p2, p4}, Lcom/innioasis/y1/theme/ThemeManager;->dialogTextColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/innioasis/y1/utils/DialogUtil;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f110086

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/innioasis/y1/utils/DialogUtil;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110083

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070093

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p2, -0x2

    .line 161
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 164
    :goto_1
    move-object p1, p0

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public final setDialogTitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;)V
    .locals 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "confirm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancel"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\u663e\u793a\u5f39\u7a97"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iput-object p5, p0, Lcom/innioasis/y1/utils/DialogUtil;->callback:Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    .line 200
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    .line 201
    iget-object p5, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p5, :cond_0

    .line 202
    iget-object v0, p5, Lcom/innioasis/y1/databinding/PopupDialogBinding;->title:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p1, p5, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p1, p5, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    sget-object p2, Lcom/innioasis/y1/theme/ThemeManager;->INSTANCE:Lcom/innioasis/y1/theme/ThemeManager;

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Lcom/innioasis/y1/theme/ThemeManager;->dialogTextColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object p1, p5, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object p1, p5, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    check-cast p4, Ljava/lang/CharSequence;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070093

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p2, -0x2

    .line 211
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 213
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public final setDialogTitleOnlyOneButton(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZ)Landroid/app/Dialog;
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p0 .. p5}, Lcom/innioasis/y1/utils/DialogUtil;->setDialogTitle(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;ZZ)Landroid/app/Dialog;

    move-result-object p1

    .line 175
    iget-object p2, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p2, :cond_0

    .line 176
    iget-object p2, p2, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 p2, 0x1

    .line 179
    iput-boolean p2, p0, Lcom/innioasis/y1/utils/DialogUtil;->isConfirm:Z

    .line 180
    iput-boolean p2, p0, Lcom/innioasis/y1/utils/DialogUtil;->isOnlyOneButton:Z

    .line 181
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil;->switchBut()V

    return-object p1
.end method

.method public final setDialogTitleWarning(Ljava/lang/String;Ljava/lang/String;Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;)V
    .locals 3

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "\u663e\u793a\u5f39\u7a97"

    invoke-virtual {v0, v2, v1}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iput-object p3, p0, Lcom/innioasis/y1/utils/DialogUtil;->callback:Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    .line 115
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->show()V

    .line 117
    iget-object p3, p0, Lcom/innioasis/y1/utils/DialogUtil;->binding:Lcom/innioasis/y1/databinding/PopupDialogBinding;

    if-eqz p3, :cond_0

    .line 118
    iget-object v0, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->title:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/innioasis/y1/utils/DialogUtil;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f110086

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p1, p3, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/innioasis/y1/utils/DialogUtil;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110083

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070093

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 p2, -0x2

    .line 127
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->getWindow()Landroid/view/Window;

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

    .line 34
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
    if-eqz v0, :cond_3

    .line 36
    iget-boolean p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->isOnlyOneButton:Z

    if-eqz p1, :cond_2

    return-void

    .line 39
    :cond_2
    iput-boolean v1, p0, Lcom/innioasis/y1/utils/DialogUtil;->isConfirm:Z

    .line 40
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil;->switchBut()V

    goto :goto_5

    .line 43
    :cond_3
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result v0

    if-ne p1, v0, :cond_4

    :goto_2
    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result v0

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_6

    .line 44
    iput-boolean v2, p0, Lcom/innioasis/y1/utils/DialogUtil;->isConfirm:Z

    .line 45
    invoke-direct {p0}, Lcom/innioasis/y1/utils/DialogUtil;->switchBut()V

    goto :goto_5

    .line 48
    :cond_6
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 49
    iget-boolean p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->isConfirm:Z

    if-eqz p1, :cond_7

    .line 50
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "\u786e\u8ba4"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->callback:Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;->confirm()V

    goto :goto_4

    .line 53
    :cond_7
    sget-object p1, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {p1, v1, v0}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lcom/innioasis/y1/utils/DialogUtil;->callback:Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/DialogUtil$DialogCallback;->cancel()V

    .line 56
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->dismiss()V

    goto :goto_5

    .line 59
    :cond_9
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 60
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->getOnBack()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 61
    :cond_a
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/DialogUtil;->dismiss()V

    :cond_b
    :goto_5
    return-void
.end method
