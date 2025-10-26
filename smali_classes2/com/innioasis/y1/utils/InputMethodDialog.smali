.class public final Lcom/innioasis/y1/utils/InputMethodDialog;
.super Landroid/app/Dialog;
.source "InputMethodDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/innioasis/y1/utils/InputMethodDialog$MyViewHolder;,
        Lcom/innioasis/y1/utils/InputMethodDialog$MyAdapter;,
        Lcom/innioasis/y1/utils/InputMethodDialog$Callback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0003<=>B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010*\u001a\u00020\'2\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0007H\u0002J\u0010\u00100\u001a\u00020.2\u0006\u00101\u001a\u00020\u001bH\u0002J\u0008\u00102\u001a\u00020.H\u0002J\u0010\u00103\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0007H\u0002J\u0008\u00104\u001a\u00020.H\u0002J\u0012\u00105\u001a\u00020.2\u0008\u00106\u001a\u0004\u0018\u000107H\u0014J\u0008\u00108\u001a\u00020.H\u0002J\u000e\u00109\u001a\u00020.2\u0006\u0010 \u001a\u00020\u001bJ\u0008\u0010:\u001a\u00020.H\u0002J\u0010\u0010;\u001a\u00020.2\u0006\u0010/\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\t\u001a\u00060\nR\u00020\u00008BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R!\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u000e\u001a\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u001f\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010!\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001b8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u001b0)X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006?"
    }
    d2 = {
        "Lcom/innioasis/y1/utils/InputMethodDialog;",
        "Landroid/app/Dialog;",
        "activity",
        "Landroid/app/Activity;",
        "callback",
        "Lcom/innioasis/y1/utils/InputMethodDialog$Callback;",
        "themeResId",
        "",
        "(Landroid/app/Activity;Lcom/innioasis/y1/utils/InputMethodDialog$Callback;I)V",
        "adapter",
        "Lcom/innioasis/y1/utils/InputMethodDialog$MyAdapter;",
        "getAdapter",
        "()Lcom/innioasis/y1/utils/InputMethodDialog$MyAdapter;",
        "adapter$delegate",
        "Lkotlin/Lazy;",
        "binding",
        "Lcom/innioasis/y1/databinding/DialogInputMethodBinding;",
        "getBinding",
        "()Lcom/innioasis/y1/databinding/DialogInputMethodBinding;",
        "binding$delegate",
        "charMaxCount",
        "getCharMaxCount",
        "()I",
        "setCharMaxCount",
        "(I)V",
        "charsTable",
        "",
        "",
        "getCharsTable",
        "()Ljava/util/List;",
        "charsTable$delegate",
        "downCount",
        "value",
        "editTextValue",
        "getEditTextValue",
        "()Ljava/lang/String;",
        "setEditTextValue",
        "(Ljava/lang/String;)V",
        "isDown",
        "",
        "valueLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "dispatchKeyEvent",
        "event",
        "Landroid/view/KeyEvent;",
        "down",
        "",
        "key",
        "inputChar",
        "char",
        "leftMove",
        "long",
        "onBack",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "rightMove",
        "setEditText",
        "sleepScreen",
        "up",
        "Callback",
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
.field private final activity:Landroid/app/Activity;

.field private final adapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lkotlin/Lazy;

.field private final callback:Lcom/innioasis/y1/utils/InputMethodDialog$Callback;

.field private charMaxCount:I

.field private final charsTable$delegate:Lkotlin/Lazy;

.field private downCount:I

.field private isDown:Z

.field private valueLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/innioasis/y1/utils/InputMethodDialog$Callback;I)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    iput-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->activity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->callback:Lcom/innioasis/y1/utils/InputMethodDialog$Callback;

    .line 28
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const-string p2, ""

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 40
    sget-object p1, Lcom/innioasis/y1/utils/InputMethodDialog$charsTable$2;->INSTANCE:Lcom/innioasis/y1/utils/InputMethodDialog$charsTable$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->charsTable$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Lcom/innioasis/y1/utils/InputMethodDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/InputMethodDialog$binding$2;-><init>(Lcom/innioasis/y1/utils/InputMethodDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->binding$delegate:Lkotlin/Lazy;

    .line 61
    new-instance p1, Lcom/innioasis/y1/utils/InputMethodDialog$adapter$2;

    invoke-direct {p1, p0}, Lcom/innioasis/y1/utils/InputMethodDialog$adapter$2;-><init>(Lcom/innioasis/y1/utils/InputMethodDialog;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->adapter$delegate:Lkotlin/Lazy;

    const/16 p1, 0x2710

    .line 66
    iput p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->charMaxCount:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/innioasis/y1/utils/InputMethodDialog$Callback;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const p3, 0x7f120119

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/innioasis/y1/utils/InputMethodDialog;-><init>(Landroid/app/Activity;Lcom/innioasis/y1/utils/InputMethodDialog$Callback;I)V

    return-void
.end method

.method public static final synthetic access$getActivity$p(Lcom/innioasis/y1/utils/InputMethodDialog;)Landroid/app/Activity;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static final synthetic access$getCharsTable(Lcom/innioasis/y1/utils/InputMethodDialog;)Ljava/util/List;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getCharsTable()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final down(I)V
    .locals 1

    .line 113
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_LEFT()I

    move-result v0

    if-ne p1, v0, :cond_0

    const-string p1, "-"

    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->inputChar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final getAdapter()Lcom/innioasis/y1/utils/InputMethodDialog$MyAdapter;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/utils/InputMethodDialog$MyAdapter;

    return-object v0
.end method

.method private final getBinding()Lcom/innioasis/y1/databinding/DialogInputMethodBinding;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->binding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/innioasis/y1/databinding/DialogInputMethodBinding;

    return-object v0
.end method

.method private final getCharsTable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->charsTable$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getEditTextValue()Ljava/lang/String;
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogInputMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogInputMethodBinding;->inputBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final inputChar(Ljava/lang/String;)V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->charMaxCount:I

    const/4 v3, 0x0

    const-string v4, "-"

    if-le v1, v2, :cond_1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    iget-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->activity:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    .line 152
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110167

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 150
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 154
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 157
    :cond_1
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return-void

    .line 158
    :cond_4
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 161
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 162
    :goto_1
    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->setEditTextValue(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final leftMove()V
    .locals 5

    .line 139
    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getAdapter()Lcom/innioasis/y1/utils/InputMethodDialog$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogInputMethodBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/innioasis/y1/databinding/DialogInputMethodBinding;->selectBox:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "binding.selectBox"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toPrevious$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    return-void
.end method

.method private final long(I)V
    .locals 1

    .line 130
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->sleepScreen()V

    :cond_0
    return-void
.end method

.method private final onBack()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->hide()V

    .line 144
    iget-object v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->callback:Lcom/innioasis/y1/utils/InputMethodDialog$Callback;

    invoke-interface {v0}, Lcom/innioasis/y1/utils/InputMethodDialog$Callback;->onBack()V

    return-void
.end method

.method private final rightMove()V
    .locals 5

    .line 135
    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getAdapter()Lcom/innioasis/y1/utils/InputMethodDialog$MyAdapter;

    move-result-object v0

    check-cast v0, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;

    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogInputMethodBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/innioasis/y1/databinding/DialogInputMethodBinding;->selectBox:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "binding.selectBox"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/innioasis/music/adapter/rv/RVBaseAdapter;->toNext$default(Lcom/innioasis/music/adapter/rv/RVBaseAdapter;Landroidx/recyclerview/widget/RecyclerView;ZILjava/lang/Object;)V

    return-void
.end method

.method private final setEditTextValue(Ljava/lang/String;)V
    .locals 3

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogInputMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogInputMethodBinding;->inputBox:Landroid/widget/EditText;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogInputMethodBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/innioasis/y1/databinding/DialogInputMethodBinding;->inputBox:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method private final sleepScreen()V
    .locals 6

    .line 193
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "dl"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "sleep run"

    invoke-virtual {v0, v3, v2}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/os/PowerManager;

    .line 196
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 198
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-string v5, "goToSleep"

    .line 196
    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final up(I)V
    .locals 1

    .line 120
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getAdapter()Lcom/innioasis/y1/utils/InputMethodDialog$MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/utils/InputMethodDialog$MyAdapter;->getSelectItem()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->inputChar(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_DOWN()I

    move-result v0

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->rightMove()V

    goto :goto_0

    .line 122
    :cond_1
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_UP()I

    move-result v0

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->leftMove()V

    goto :goto_0

    .line 123
    :cond_2
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result v0

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->onBack()V

    goto :goto_0

    .line 124
    :cond_3
    sget-object v0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {v0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_RIGHT()I

    move-result v0

    if-ne p1, v0, :cond_4

    const-string p1, " "

    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->inputChar(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    sget-object v0, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Ltimber/log/Timber$Forest;->tag(Ljava/lang/String;)Ltimber/log/Timber$Tree;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ltimber/log/Timber$Tree;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/innioasis/y1/utils/InputMethodDialog;->down(I)V

    .line 172
    iput-boolean v1, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->isDown:Z

    .line 173
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    iput v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->downCount:I

    const/4 v3, 0x5

    if-le v0, v3, :cond_2

    .line 174
    iget-boolean v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->isDown:Z

    if-eqz v0, :cond_2

    .line 175
    iput-boolean v2, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->isDown:Z

    .line 176
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->long(I)V

    goto :goto_0

    .line 179
    :cond_0
    iget v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->downCount:I

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->isDown:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->up(I)V

    .line 180
    :cond_1
    iput v2, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->downCount:I

    .line 181
    iput-boolean v2, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->isDown:Z

    :cond_2
    :goto_0
    return v1
.end method

.method public final getCharMaxCount()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->charMaxCount:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogInputMethodBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/innioasis/y1/databinding/DialogInputMethodBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->setContentView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x190

    .line 75
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x50

    .line 76
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x28

    .line 77
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 74
    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 79
    :goto_4
    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getBinding()Lcom/innioasis/y1/databinding/DialogInputMethodBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/innioasis/y1/databinding/DialogInputMethodBinding;->selectBox:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/innioasis/y1/utils/InputMethodDialog;->getAdapter()Lcom/innioasis/y1/utils/InputMethodDialog$MyAdapter;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->setCancelable(Z)V

    .line 83
    iget-object p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->callback:Lcom/innioasis/y1/utils/InputMethodDialog$Callback;

    iget-object v0, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->valueLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-interface {p1, v0}, Lcom/innioasis/y1/utils/InputMethodDialog$Callback;->onInit(Landroidx/lifecycle/MutableLiveData;)V

    return-void
.end method

.method public final setCharMaxCount(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/innioasis/y1/utils/InputMethodDialog;->charMaxCount:I

    return-void
.end method

.method public final setEditText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/innioasis/y1/utils/InputMethodDialog;->setEditTextValue(Ljava/lang/String;)V

    return-void
.end method
