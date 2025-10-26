.class public final synthetic Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lcom/innioasis/y1/service/PlayerService;


# direct methods
.method public synthetic constructor <init>(Lcom/innioasis/y1/service/PlayerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda1;->f$0:Lcom/innioasis/y1/service/PlayerService;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcom/innioasis/y1/service/PlayerService$$ExternalSyntheticLambda1;->f$0:Lcom/innioasis/y1/service/PlayerService;

    invoke-static {v0, p1, p2, p3}, Lcom/innioasis/y1/service/PlayerService;->$r8$lambda$CejTx3aRcrFQz263FF7D8oJRIAc(Lcom/innioasis/y1/service/PlayerService;Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
