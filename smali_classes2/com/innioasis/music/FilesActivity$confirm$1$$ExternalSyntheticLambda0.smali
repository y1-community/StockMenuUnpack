.class public final synthetic Lcom/innioasis/music/FilesActivity$confirm$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/innioasis/music/FilesActivity;

.field public final synthetic f$2:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/innioasis/music/FilesActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/innioasis/music/FilesActivity$confirm$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/innioasis/music/FilesActivity$confirm$1$$ExternalSyntheticLambda0;->f$1:Lcom/innioasis/music/FilesActivity;

    iput-object p3, p0, Lcom/innioasis/music/FilesActivity$confirm$1$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/innioasis/music/FilesActivity$confirm$1$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/innioasis/music/FilesActivity$confirm$1$$ExternalSyntheticLambda0;->f$1:Lcom/innioasis/music/FilesActivity;

    iget-object v2, p0, Lcom/innioasis/music/FilesActivity$confirm$1$$ExternalSyntheticLambda0;->f$2:Ljava/io/File;

    invoke-static {v0, v1, v2}, Lcom/innioasis/music/FilesActivity$confirm$1;->$r8$lambda$S3T4yZ7dljPLxJPnqSs0w69mq6Y(Ljava/util/List;Lcom/innioasis/music/FilesActivity;Ljava/io/File;)V

    return-void
.end method
