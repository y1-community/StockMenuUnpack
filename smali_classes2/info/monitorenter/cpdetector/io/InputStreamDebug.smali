.class public Linfo/monitorenter/cpdetector/io/InputStreamDebug;
.super Ljava/io/InputStream;
.source "InputStreamDebug.java"


# instance fields
.field private m_delegate:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 63
    iput-object p1, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 92
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 101
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 115
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 68
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->read()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    int-to-byte p3, p3

    .line 131
    aput-byte p3, p1, p2

    const/4 p3, 0x1

    :cond_0
    return p3
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Linfo/monitorenter/cpdetector/io/InputStreamDebug;->m_delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
