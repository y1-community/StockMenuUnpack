.class final Lcom/innioasis/y1/base/BaseActivity$dialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/innioasis/y1/base/BaseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/innioasis/y1/utils/LoadingDialog;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/innioasis/y1/utils/LoadingDialog;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/innioasis/y1/base/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/innioasis/y1/base/BaseActivity<",
            "TVB;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OZemCrCfSKLY-Hln6jnd9fJ5pKo(Lcom/innioasis/y1/utils/LoadingDialog;Lcom/innioasis/y1/base/BaseActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/innioasis/y1/base/BaseActivity$dialog$2;->invoke$lambda-1$lambda-0(Lcom/innioasis/y1/utils/LoadingDialog;Lcom/innioasis/y1/base/BaseActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/innioasis/y1/base/BaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/innioasis/y1/base/BaseActivity<",
            "TVB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/innioasis/y1/base/BaseActivity$dialog$2;->this$0:Lcom/innioasis/y1/base/BaseActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-1$lambda-0(Lcom/innioasis/y1/utils/LoadingDialog;Lcom/innioasis/y1/base/BaseActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string p2, "$this_apply"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    sget-object p2, Ltimber/log/Timber;->Forest:Ltimber/log/Timber$Forest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loading   action "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " keyCode  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " repeatCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Ltimber/log/Timber$Forest;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p2}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_MENU()I

    move-result p2

    if-ne p3, p2, :cond_0

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lcom/innioasis/y1/utils/LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :catch_0
    sget-object p0, Lcom/innioasis/music/objects/Global;->INSTANCE:Lcom/innioasis/music/objects/Global;

    invoke-virtual {p0, v1}, Lcom/innioasis/music/objects/Global;->setNeedShowScanDialog(Z)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/innioasis/fm/configs/KeyMap;->INSTANCE:Lcom/innioasis/fm/configs/KeyMap;

    invoke-virtual {p0}, Lcom/innioasis/fm/configs/KeyMap;->getKEY_ENTER()I

    move-result p0

    if-ne p3, p0, :cond_1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p0

    const/4 p2, 0x3

    if-ne p0, p2, :cond_1

    .line 239
    invoke-virtual {p1}, Lcom/innioasis/y1/base/BaseActivity;->askShutdown()V

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final invoke()Lcom/innioasis/y1/utils/LoadingDialog;
    .locals 9

    .line 227
    new-instance v8, Lcom/innioasis/y1/utils/LoadingDialog;

    .line 228
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity$dialog$2;->this$0:Lcom/innioasis/y1/base/BaseActivity;

    invoke-virtual {v0}, Lcom/innioasis/y1/base/BaseActivity;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity$dialog$2;->this$0:Lcom/innioasis/y1/base/BaseActivity;

    const v2, 0x7f110173

    invoke-virtual {v0, v2}, Lcom/innioasis/y1/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "getString(R.string.scanning_files)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity$dialog$2;->this$0:Lcom/innioasis/y1/base/BaseActivity;

    const v3, 0x7f110172

    invoke-virtual {v0, v3}, Lcom/innioasis/y1/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(R.string.scan_tips)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, v8

    .line 227
    invoke-direct/range {v0 .. v7}, Lcom/innioasis/y1/utils/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 229
    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity$dialog$2;->this$0:Lcom/innioasis/y1/base/BaseActivity;

    .line 230
    new-instance v1, Lcom/innioasis/y1/base/BaseActivity$dialog$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, v8, v0}, Lcom/innioasis/y1/base/BaseActivity$dialog$2$$ExternalSyntheticLambda0;-><init>(Lcom/innioasis/y1/utils/LoadingDialog;Lcom/innioasis/y1/base/BaseActivity;)V

    invoke-virtual {v8, v1}, Lcom/innioasis/y1/utils/LoadingDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-object v8
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 226
    invoke-virtual {p0}, Lcom/innioasis/y1/base/BaseActivity$dialog$2;->invoke()Lcom/innioasis/y1/utils/LoadingDialog;

    move-result-object v0

    return-object v0
.end method
