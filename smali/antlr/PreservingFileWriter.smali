.class public Lantlr/PreservingFileWriter;
.super Ljava/io/FileWriter;
.source "PreservingFileWriter.java"


# instance fields
.field protected target_file:Ljava/io/File;

.field protected tmp_file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ".antlr.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lantlr/PreservingFileWriter;->target_file:Ljava/io/File;

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 32
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v3, "destination directory of \'"

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\' isn\'t writeable"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\' doesn\'t exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_2
    :goto_0
    iget-object v0, p0, Lantlr/PreservingFileWriter;->target_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lantlr/PreservingFileWriter;->target_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 40
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "cannot write to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_4
    :goto_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    :try_start_0
    invoke-super {p0}, Ljava/io/FileWriter;->close()V

    const/16 v1, 0x400

    new-array v2, v1, [C

    .line 67
    iget-object v3, p0, Lantlr/PreservingFileWriter;->target_file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object v5, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-nez v9, :cond_6

    new-array v3, v1, [C

    .line 73
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 74
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    iget-object v9, p0, Lantlr/PreservingFileWriter;->target_file:Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v6, 0x1

    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 80
    invoke-virtual {v4, v2, v8, v1}, Ljava/io/Reader;->read([CII)I

    move-result v9

    .line 81
    invoke-virtual {v5, v3, v8, v1}, Ljava/io/Reader;->read([CII)I

    move-result v10

    if-eq v9, v10, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :cond_1
    if-ne v9, v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_0

    .line 91
    aget-char v11, v2, v10

    aget-char v12, v3, v10

    if-eq v11, v12, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 99
    :cond_4
    :goto_2
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 100
    invoke-virtual {v5}, Ljava/io/Reader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_6

    .line 131
    iget-object v1, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    iget-object v1, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 134
    iput-object v0, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    :cond_5
    return-void

    .line 108
    :cond_6
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    iget-object v5, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 109
    :try_start_3
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lantlr/PreservingFileWriter;->target_file:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 113
    :goto_3
    :try_start_4
    invoke-virtual {v4, v2, v8, v1}, Ljava/io/Reader;->read([CII)I

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne v5, v7, :cond_8

    .line 122
    :try_start_5
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 127
    :catch_0
    :try_start_6
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    nop

    .line 131
    :goto_4
    iget-object v1, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 133
    iget-object v1, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 134
    iput-object v0, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    :cond_7
    return-void

    .line 116
    :cond_8
    :try_start_7
    invoke-virtual {v3, v2, v8, v5}, Ljava/io/Writer;->write([CII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v3, v0

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_5
    if-eqz v4, :cond_9

    .line 122
    :try_start_8
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catch_2
    nop

    :cond_9
    :goto_6
    if-eqz v3, :cond_a

    .line 127
    :try_start_9
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_7

    :catch_3
    nop

    .line 131
    :cond_a
    :goto_7
    iget-object v2, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 133
    iget-object v2, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 134
    iput-object v0, p0, Lantlr/PreservingFileWriter;->tmp_file:Ljava/io/File;

    .line 120
    :cond_b
    goto :goto_9

    :goto_8
    throw v1

    :goto_9
    goto :goto_8
.end method
