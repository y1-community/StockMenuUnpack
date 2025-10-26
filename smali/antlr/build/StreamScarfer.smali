.class Lantlr/build/StreamScarfer;
.super Ljava/lang/Thread;
.source "StreamScarfer.java"


# instance fields
.field is:Ljava/io/InputStream;

.field tool:Lantlr/build/Tool;

.field type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Lantlr/build/Tool;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    iput-object p1, p0, Lantlr/build/StreamScarfer;->is:Ljava/io/InputStream;

    .line 15
    iput-object p2, p0, Lantlr/build/StreamScarfer;->type:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lantlr/build/StreamScarfer;->tool:Lantlr/build/Tool;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 21
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lantlr/build/StreamScarfer;->is:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 22
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 24
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 25
    iget-object v2, p0, Lantlr/build/StreamScarfer;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "stdout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    iget-object v2, p0, Lantlr/build/StreamScarfer;->tool:Lantlr/build/Tool;

    invoke-virtual {v2, v0}, Lantlr/build/Tool;->stderr(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    iget-object v2, p0, Lantlr/build/StreamScarfer;->tool:Lantlr/build/Tool;

    invoke-virtual {v2, v0}, Lantlr/build/Tool;->stdout(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    return-void
.end method
