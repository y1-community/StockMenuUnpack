.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lme/wcy/lrcview/LrcView;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lme/wcy/lrcview/LrcView;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;->f$0:Lme/wcy/lrcview/LrcView;

    iput-wide p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;->f$0:Lme/wcy/lrcview/LrcView;

    iget-wide v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;->f$1:J

    invoke-virtual {v0, v1, v2}, Lme/wcy/lrcview/LrcView;->lambda$updateTime$3$me-wcy-lrcview-LrcView(J)V

    return-void
.end method
