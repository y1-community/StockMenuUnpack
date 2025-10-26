.class Lantlr/build/ANTLR$1;
.super Ljava/lang/Object;
.source "ANTLR.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private final synthetic this$0:Lantlr/build/ANTLR;


# direct methods
.method constructor <init>(Lantlr/build/ANTLR;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lantlr/build/ANTLR$1;->this$0:Lantlr/build/ANTLR;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "antlr"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
