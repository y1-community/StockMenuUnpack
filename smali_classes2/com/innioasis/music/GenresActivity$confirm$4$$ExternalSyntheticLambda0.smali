.class public final synthetic Lcom/innioasis/music/GenresActivity$confirm$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/innioasis/music/GenresActivity;

.field public final synthetic f$1:Lcom/innioasis/music/data/Album;


# direct methods
.method public synthetic constructor <init>(Lcom/innioasis/music/GenresActivity;Lcom/innioasis/music/data/Album;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/music/GenresActivity$confirm$4$$ExternalSyntheticLambda0;->f$0:Lcom/innioasis/music/GenresActivity;

    iput-object p2, p0, Lcom/innioasis/music/GenresActivity$confirm$4$$ExternalSyntheticLambda0;->f$1:Lcom/innioasis/music/data/Album;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/innioasis/music/GenresActivity$confirm$4$$ExternalSyntheticLambda0;->f$0:Lcom/innioasis/music/GenresActivity;

    iget-object v1, p0, Lcom/innioasis/music/GenresActivity$confirm$4$$ExternalSyntheticLambda0;->f$1:Lcom/innioasis/music/data/Album;

    invoke-static {v0, v1}, Lcom/innioasis/music/GenresActivity$confirm$4;->$r8$lambda$4lUxoMjvufWmV4299NYhsHKGUiM(Lcom/innioasis/music/GenresActivity;Lcom/innioasis/music/data/Album;)V

    return-void
.end method
