.class public Lnl/siegmann/epublib/service/MediatypeService;
.super Ljava/lang/Object;
.source "MediatypeService.java"


# static fields
.field public static final CSS:Lnl/siegmann/epublib/domain/MediaType;

.field public static final EPUB:Lnl/siegmann/epublib/domain/MediaType;

.field public static final GIF:Lnl/siegmann/epublib/domain/MediaType;

.field public static final JAVASCRIPT:Lnl/siegmann/epublib/domain/MediaType;

.field public static final JPG:Lnl/siegmann/epublib/domain/MediaType;

.field public static final MP3:Lnl/siegmann/epublib/domain/MediaType;

.field public static final MP4:Lnl/siegmann/epublib/domain/MediaType;

.field public static final NCX:Lnl/siegmann/epublib/domain/MediaType;

.field public static final OGG:Lnl/siegmann/epublib/domain/MediaType;

.field public static final OPENTYPE:Lnl/siegmann/epublib/domain/MediaType;

.field public static final PLS:Lnl/siegmann/epublib/domain/MediaType;

.field public static final PNG:Lnl/siegmann/epublib/domain/MediaType;

.field public static final SMIL:Lnl/siegmann/epublib/domain/MediaType;

.field public static final SVG:Lnl/siegmann/epublib/domain/MediaType;

.field public static final TTF:Lnl/siegmann/epublib/domain/MediaType;

.field public static final WOFF:Lnl/siegmann/epublib/domain/MediaType;

.field public static final XHTML:Lnl/siegmann/epublib/domain/MediaType;

.field public static final XPGT:Lnl/siegmann/epublib/domain/MediaType;

.field public static mediaTypesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnl/siegmann/epublib/domain/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static mediatypes:[Lnl/siegmann/epublib/domain/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 18
    new-instance v0, Lnl/siegmann/epublib/domain/MediaType;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ".htm"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, ".html"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v6, ".xhtml"

    aput-object v6, v2, v3

    const-string v7, "application/xhtml+xml"

    invoke-direct {v0, v7, v6, v2}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lnl/siegmann/epublib/service/MediatypeService;->XHTML:Lnl/siegmann/epublib/domain/MediaType;

    .line 19
    new-instance v2, Lnl/siegmann/epublib/domain/MediaType;

    const-string v6, "application/epub+zip"

    const-string v7, ".epub"

    invoke-direct {v2, v6, v7}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lnl/siegmann/epublib/service/MediatypeService;->EPUB:Lnl/siegmann/epublib/domain/MediaType;

    .line 20
    new-instance v6, Lnl/siegmann/epublib/domain/MediaType;

    const-string v7, "application/x-dtbncx+xml"

    const-string v8, ".ncx"

    invoke-direct {v6, v7, v8}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lnl/siegmann/epublib/service/MediatypeService;->NCX:Lnl/siegmann/epublib/domain/MediaType;

    .line 22
    new-instance v7, Lnl/siegmann/epublib/domain/MediaType;

    const-string v8, "text/javascript"

    const-string v9, ".js"

    invoke-direct {v7, v8, v9}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lnl/siegmann/epublib/service/MediatypeService;->JAVASCRIPT:Lnl/siegmann/epublib/domain/MediaType;

    .line 23
    new-instance v8, Lnl/siegmann/epublib/domain/MediaType;

    const-string v9, "text/css"

    const-string v10, ".css"

    invoke-direct {v8, v9, v10}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lnl/siegmann/epublib/service/MediatypeService;->CSS:Lnl/siegmann/epublib/domain/MediaType;

    .line 26
    new-instance v9, Lnl/siegmann/epublib/domain/MediaType;

    new-array v10, v3, [Ljava/lang/String;

    const-string v11, ".jpg"

    aput-object v11, v10, v4

    const-string v12, ".jpeg"

    aput-object v12, v10, v5

    const-string v12, "image/jpeg"

    invoke-direct {v9, v12, v11, v10}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v9, Lnl/siegmann/epublib/service/MediatypeService;->JPG:Lnl/siegmann/epublib/domain/MediaType;

    .line 27
    new-instance v10, Lnl/siegmann/epublib/domain/MediaType;

    const-string v11, "image/png"

    const-string v12, ".png"

    invoke-direct {v10, v11, v12}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lnl/siegmann/epublib/service/MediatypeService;->PNG:Lnl/siegmann/epublib/domain/MediaType;

    .line 28
    new-instance v11, Lnl/siegmann/epublib/domain/MediaType;

    const-string v12, "image/gif"

    const-string v13, ".gif"

    invoke-direct {v11, v12, v13}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lnl/siegmann/epublib/service/MediatypeService;->GIF:Lnl/siegmann/epublib/domain/MediaType;

    .line 30
    new-instance v12, Lnl/siegmann/epublib/domain/MediaType;

    const-string v13, "image/svg+xml"

    const-string v14, ".svg"

    invoke-direct {v12, v13, v14}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lnl/siegmann/epublib/service/MediatypeService;->SVG:Lnl/siegmann/epublib/domain/MediaType;

    .line 33
    new-instance v13, Lnl/siegmann/epublib/domain/MediaType;

    const-string v14, "application/x-truetype-font"

    const-string v15, ".ttf"

    invoke-direct {v13, v14, v15}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lnl/siegmann/epublib/service/MediatypeService;->TTF:Lnl/siegmann/epublib/domain/MediaType;

    .line 34
    new-instance v14, Lnl/siegmann/epublib/domain/MediaType;

    const-string v15, "application/vnd.ms-opentype"

    const-string v1, ".otf"

    invoke-direct {v14, v15, v1}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lnl/siegmann/epublib/service/MediatypeService;->OPENTYPE:Lnl/siegmann/epublib/domain/MediaType;

    .line 35
    new-instance v1, Lnl/siegmann/epublib/domain/MediaType;

    const-string v15, "application/font-woff"

    const-string v3, ".woff"

    invoke-direct {v1, v15, v3}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lnl/siegmann/epublib/service/MediatypeService;->WOFF:Lnl/siegmann/epublib/domain/MediaType;

    .line 38
    new-instance v3, Lnl/siegmann/epublib/domain/MediaType;

    const-string v15, "audio/mpeg"

    const-string v5, ".mp3"

    invoke-direct {v3, v15, v5}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lnl/siegmann/epublib/service/MediatypeService;->MP3:Lnl/siegmann/epublib/domain/MediaType;

    .line 39
    new-instance v5, Lnl/siegmann/epublib/domain/MediaType;

    const-string v15, "audio/ogg"

    const-string v4, ".ogg"

    invoke-direct {v5, v15, v4}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lnl/siegmann/epublib/service/MediatypeService;->OGG:Lnl/siegmann/epublib/domain/MediaType;

    .line 42
    new-instance v4, Lnl/siegmann/epublib/domain/MediaType;

    const-string v15, "video/mp4"

    move-object/from16 v16, v5

    const-string v5, ".mp4"

    invoke-direct {v4, v15, v5}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnl/siegmann/epublib/service/MediatypeService;->MP4:Lnl/siegmann/epublib/domain/MediaType;

    .line 44
    new-instance v5, Lnl/siegmann/epublib/domain/MediaType;

    const-string v15, "application/smil+xml"

    move-object/from16 v17, v4

    const-string v4, ".smil"

    invoke-direct {v5, v15, v4}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lnl/siegmann/epublib/service/MediatypeService;->SMIL:Lnl/siegmann/epublib/domain/MediaType;

    .line 45
    new-instance v4, Lnl/siegmann/epublib/domain/MediaType;

    const-string v15, "application/adobe-page-template+xml"

    move-object/from16 v18, v3

    const-string v3, ".xpgt"

    invoke-direct {v4, v15, v3}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lnl/siegmann/epublib/service/MediatypeService;->XPGT:Lnl/siegmann/epublib/domain/MediaType;

    .line 46
    new-instance v3, Lnl/siegmann/epublib/domain/MediaType;

    const-string v15, "application/pls+xml"

    move-object/from16 v19, v7

    const-string v7, ".pls"

    invoke-direct {v3, v15, v7}, Lnl/siegmann/epublib/domain/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lnl/siegmann/epublib/service/MediatypeService;->PLS:Lnl/siegmann/epublib/domain/MediaType;

    const/16 v7, 0x12

    new-array v7, v7, [Lnl/siegmann/epublib/domain/MediaType;

    const/4 v15, 0x0

    aput-object v0, v7, v15

    const/4 v0, 0x1

    aput-object v2, v7, v0

    const/4 v0, 0x2

    aput-object v9, v7, v0

    const/4 v0, 0x3

    aput-object v10, v7, v0

    const/4 v0, 0x4

    aput-object v11, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v12, v7, v0

    const/4 v0, 0x7

    aput-object v13, v7, v0

    const/16 v0, 0x8

    aput-object v6, v7, v0

    const/16 v0, 0x9

    aput-object v4, v7, v0

    const/16 v0, 0xa

    aput-object v14, v7, v0

    const/16 v0, 0xb

    aput-object v1, v7, v0

    const/16 v0, 0xc

    aput-object v5, v7, v0

    const/16 v0, 0xd

    aput-object v3, v7, v0

    const/16 v0, 0xe

    aput-object v19, v7, v0

    const/16 v0, 0xf

    aput-object v18, v7, v0

    const/16 v0, 0x10

    aput-object v17, v7, v0

    const/16 v0, 0x11

    aput-object v16, v7, v0

    .line 48
    sput-object v7, Lnl/siegmann/epublib/service/MediatypeService;->mediatypes:[Lnl/siegmann/epublib/domain/MediaType;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnl/siegmann/epublib/service/MediatypeService;->mediaTypesByName:Ljava/util/Map;

    const/4 v4, 0x0

    .line 54
    :goto_0
    sget-object v0, Lnl/siegmann/epublib/service/MediatypeService;->mediatypes:[Lnl/siegmann/epublib/domain/MediaType;

    array-length v1, v0

    if-ge v4, v1, :cond_0

    .line 55
    sget-object v1, Lnl/siegmann/epublib/service/MediatypeService;->mediaTypesByName:Ljava/util/Map;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/MediaType;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lnl/siegmann/epublib/service/MediatypeService;->mediatypes:[Lnl/siegmann/epublib/domain/MediaType;

    aget-object v2, v2, v4

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineMediaType(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;
    .locals 4

    .line 71
    sget-object v0, Lnl/siegmann/epublib/service/MediatypeService;->mediaTypesByName:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/domain/MediaType;

    .line 72
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/MediaType;->getExtensions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    invoke-static {p0, v3}, Lnl/siegmann/epublib/util/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMediaTypeByName(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;
    .locals 1

    .line 82
    sget-object v0, Lnl/siegmann/epublib/service/MediatypeService;->mediaTypesByName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnl/siegmann/epublib/domain/MediaType;

    return-object p0
.end method

.method public static isBitmapImage(Lnl/siegmann/epublib/domain/MediaType;)Z
    .locals 1

    .line 60
    sget-object v0, Lnl/siegmann/epublib/service/MediatypeService;->JPG:Lnl/siegmann/epublib/domain/MediaType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnl/siegmann/epublib/service/MediatypeService;->PNG:Lnl/siegmann/epublib/domain/MediaType;

    if-eq p0, v0, :cond_1

    sget-object v0, Lnl/siegmann/epublib/service/MediatypeService;->GIF:Lnl/siegmann/epublib/domain/MediaType;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
