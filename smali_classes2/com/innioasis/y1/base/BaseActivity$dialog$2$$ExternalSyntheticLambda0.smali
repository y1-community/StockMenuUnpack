.class public final synthetic Lcom/innioasis/y1/base/BaseActivity$dialog$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/innioasis/y1/utils/LoadingDialog;

.field public final synthetic f$1:Lcom/innioasis/y1/base/BaseActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/innioasis/y1/utils/LoadingDialog;Lcom/innioasis/y1/base/BaseActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/y1/base/BaseActivity$dialog$2$$ExternalSyntheticLambda0;->f$0:Lcom/innioasis/y1/utils/LoadingDialog;

    iput-object p2, p0, Lcom/innioasis/y1/base/BaseActivity$dialog$2$$ExternalSyntheticLambda0;->f$1:Lcom/innioasis/y1/base/BaseActivity;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/innioasis/y1/base/BaseActivity$dialog$2$$ExternalSyntheticLambda0;->f$0:Lcom/innioasis/y1/utils/LoadingDialog;

    iget-object v1, p0, Lcom/innioasis/y1/base/BaseActivity$dialog$2$$ExternalSyntheticLambda0;->f$1:Lcom/innioasis/y1/base/BaseActivity;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/innioasis/y1/base/BaseActivity$dialog$2;->$r8$lambda$OZemCrCfSKLY-Hln6jnd9fJ5pKo(Lcom/innioasis/y1/utils/LoadingDialog;Lcom/innioasis/y1/base/BaseActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
