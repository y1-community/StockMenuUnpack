.class public final synthetic Lcom/innioasis/music/PlayListActivity$startSelect$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/innioasis/music/PlayListActivity;


# direct methods
.method public synthetic constructor <init>(ZLcom/innioasis/music/PlayListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/innioasis/music/PlayListActivity$startSelect$1$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/innioasis/music/PlayListActivity$startSelect$1$$ExternalSyntheticLambda2;->f$1:Lcom/innioasis/music/PlayListActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/innioasis/music/PlayListActivity$startSelect$1$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/innioasis/music/PlayListActivity$startSelect$1$$ExternalSyntheticLambda2;->f$1:Lcom/innioasis/music/PlayListActivity;

    invoke-static {v0, v1}, Lcom/innioasis/music/PlayListActivity$startSelect$1;->$r8$lambda$1Pkm1OhHePdmBzWYomlJRaE8a18(ZLcom/innioasis/music/PlayListActivity;)V

    return-void
.end method
