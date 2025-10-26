.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lme/wcy/lrcview/LrcView;


# direct methods
.method public synthetic constructor <init>(Lme/wcy/lrcview/LrcView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;->f$0:Lme/wcy/lrcview/LrcView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda0;->f$0:Lme/wcy/lrcview/LrcView;

    invoke-virtual {v0, p1}, Lme/wcy/lrcview/LrcView;->lambda$smoothScrollTo$4$me-wcy-lrcview-LrcView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
