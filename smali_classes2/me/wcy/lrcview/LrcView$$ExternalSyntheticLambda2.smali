.class public final synthetic Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lme/wcy/lrcview/LrcView;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lme/wcy/lrcview/LrcView;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->f$0:Lme/wcy/lrcview/LrcView;

    iput-object p2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iput-object p3, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->f$0:Lme/wcy/lrcview/LrcView;

    iget-object v1, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->f$1:Ljava/io/File;

    iget-object v2, p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda2;->f$2:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lme/wcy/lrcview/LrcView;->lambda$loadLrc$1$me-wcy-lrcview-LrcView(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
