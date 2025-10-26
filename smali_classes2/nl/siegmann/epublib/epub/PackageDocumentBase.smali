.class public Lnl/siegmann/epublib/epub/PackageDocumentBase;
.super Ljava/lang/Object;
.source "PackageDocumentBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/siegmann/epublib/epub/PackageDocumentBase$OPFValues;,
        Lnl/siegmann/epublib/epub/PackageDocumentBase$OPFAttributes;,
        Lnl/siegmann/epublib/epub/PackageDocumentBase$OPFTags;,
        Lnl/siegmann/epublib/epub/PackageDocumentBase$DCAttributes;,
        Lnl/siegmann/epublib/epub/PackageDocumentBase$DCTags;
    }
.end annotation


# static fields
.field public static final BOOK_ID_ID:Ljava/lang/String; = "BookId"

.field public static final NAMESPACE_DUBLIN_CORE:Ljava/lang/String; = "http://purl.org/dc/elements/1.1/"

.field public static final NAMESPACE_OPF:Ljava/lang/String; = "http://www.idpf.org/2007/opf"

.field public static final PREFIX_DUBLIN_CORE:Ljava/lang/String; = "dc"

.field public static final PREFIX_OPF:Ljava/lang/String; = "opf"

.field public static final dateFormat:Ljava/lang/String; = "yyyy-MM-dd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
