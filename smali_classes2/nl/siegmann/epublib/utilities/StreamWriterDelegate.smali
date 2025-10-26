.class public abstract Lnl/siegmann/epublib/utilities/StreamWriterDelegate;
.super Ljava/lang/Object;
.source "StreamWriterDelegate.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamWriter;


# instance fields
.field protected out:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method protected constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    .line 59
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public writeCharacters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    return-void
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeEndDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    return-void
.end method

.method public writeEndElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    return-void
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    return-void
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lnl/siegmann/epublib/utilities/StreamWriterDelegate;->out:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
