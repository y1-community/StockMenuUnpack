.class public final Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;
.super Lcom/innioasis/y1/base/BaseDialog;
.source "MediaUnmountableReceiver.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/innioasis/y1/receiver/MediaUnmountableReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormatDialog"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0016J\u0010\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J\u0012\u0010\u0019\u001a\u00020\u00132\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0014JU\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0008\u0010 \u001a\u0004\u0018\u00010\u001e2\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u000f2!\u0010\r\u001a\u001d\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u00130\u000eJ\u0010\u0010#\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0005H\u0016J\u0008\u0010$\u001a\u00020\u0013H\u0002R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR+\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u0008\u0010\u0012\u0008\u0008\u0011\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;",
        "Lcom/innioasis/y1/base/BaseDialog;",
        "context",
        "Landroid/content/Context;",
        "themeResId",
        "",
        "(Landroid/content/Context;I)V",
        "binding",
        "Lcom/innioasis/y1/databinding/PopupDialogBinding;",
        "getBinding",
        "()Lcom/innioasis/y1/databinding/PopupDialogBinding;",
        "binding$delegate",
        "Lkotlin/Lazy;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "isLeftPress",
        "",
        "isLeftSelected",
        "longDown",
        "keyCode",
        "repeatCount",
        "longDownFinish",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setAndShow",
        "message",
        "",
        "leftBtnText",
        "rightBtnText",
        "messageIsRed",
        "defaultLeftIsSelected",
        "shortUp",
        "switchBtn",
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

.field private callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isLeftSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 129
    new-instance p1, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog$binding$2;-><init>(Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->binding$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const p2, 0x7f120118

    .line 123
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private final getBinding()Lcom/innioasis/y1/databinding/PopupDialogBinding;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;

    return-object v0
.end method

.method private final switchBtn()V
    .locals 3

    .line 165
    iget-boolean v0, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->isLeftSelected:Z

    const v1, 0x7f080095

    const v2, 0x7f080096

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getBinding()Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 167
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getBinding()Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getBinding()Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 170
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getBinding()Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

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
    .locals 2

    .line 152
    invoke-super {p0, p1}, Lcom/innioasis/y1/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getBinding()Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/PopupDialogBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->setContentView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v0, -0x2

    .line 156
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public final setAndShow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->show()V

    .line 183
    iput-boolean p5, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->isLeftSelected:Z

    .line 184
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->switchBtn()V

    .line 185
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getBinding()Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object p5

    iget-object p5, p5, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getBinding()Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->msg:Landroid/widget/TextView;

    if-eqz p4, :cond_0

    const/high16 p4, -0x10000

    goto :goto_0

    :cond_0
    const/high16 p4, -0x1000000

    :goto_0
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 187
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getBinding()Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->confirm:Landroid/widget/TextView;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->getBinding()Lcom/innioasis/y1/databinding/PopupDialogBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/PopupDialogBinding;->close:Landroid/widget/TextView;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iput-object p6, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public shortUp(I)V
    .locals 3

    .line 135
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

    .line 136
    iput-boolean v1, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->isLeftSelected:Z

    .line 137
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->switchBtn()V

    goto :goto_4

    .line 139
    :cond_2
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result v0

    if-ne p1, v0, :cond_3

    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result v0

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 140
    iput-boolean v2, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->isLeftSelected:Z

    .line 141
    invoke-direct {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->switchBtn()V

    goto :goto_4

    .line 143
    :cond_5
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 144
    iget-object p1, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->callback:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->isLeftSelected:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_6
    invoke-virtual {p0}, Lcom/innioasis/y1/receiver/MediaUnmountableReceiver$FormatDialog;->dismiss()V

    :cond_7
    :goto_4
    return-void
.end method
