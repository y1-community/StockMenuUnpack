.class public final synthetic Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lcom/innioasis/music/AlbumsActivity;


# direct methods
.method public synthetic constructor <init>(ZLcom/innioasis/music/AlbumsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda2;->f$1:Lcom/innioasis/music/AlbumsActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1$$ExternalSyntheticLambda2;->f$1:Lcom/innioasis/music/AlbumsActivity;

    invoke-static {v0, v1}, Lcom/innioasis/music/AlbumsActivity$multiSelOrAllSel$1;->$r8$lambda$3ZPru3hvtHikee6yx1kVulCVgOw(ZLcom/innioasis/music/AlbumsActivity;)V

    return-void
.end method
