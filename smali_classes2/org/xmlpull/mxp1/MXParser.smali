.class public Lorg/xmlpull/mxp1/MXParser;
.super Ljava/lang/Object;
.source "MXParser.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlPullParser;


# static fields
.field protected static final FEATURE_NAMES_INTERNED:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#names-interned"

.field protected static final FEATURE_XML_ROUNDTRIP:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

.field protected static final LOOKUP_MAX:I = 0x400

.field protected static final LOOKUP_MAX_CHAR:C = '\u0400'

.field protected static final NCODING:[C

.field protected static final NO:[C

.field protected static final PROPERTY_LOCATION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#location"

.field protected static final PROPERTY_XMLDECL_CONTENT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

.field protected static final PROPERTY_XMLDECL_STANDALONE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

.field protected static final PROPERTY_XMLDECL_VERSION:Ljava/lang/String; = "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

.field protected static final READ_CHUNK_SIZE:I = 0x2000

.field protected static final TANDALONE:[C

.field private static final TRACE_SIZING:Z = false

.field protected static final VERSION:[C

.field protected static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field protected static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field protected static final YES:[C

.field protected static lookupNameChar:[Z

.field protected static lookupNameStartChar:[Z


# instance fields
.field protected allStringsInterned:Z

.field protected attributeCount:I

.field protected attributeName:[Ljava/lang/String;

.field protected attributeNameHash:[I

.field protected attributePrefix:[Ljava/lang/String;

.field protected attributeUri:[Ljava/lang/String;

.field protected attributeValue:[Ljava/lang/String;

.field protected buf:[C

.field protected bufAbsoluteStart:I

.field protected bufEnd:I

.field protected bufLoadFactor:I

.field protected bufSoftLimit:I

.field protected bufStart:I

.field protected charRefOneCharBuf:[C

.field protected columnNumber:I

.field protected depth:I

.field protected elName:[Ljava/lang/String;

.field protected elNamespaceCount:[I

.field protected elPrefix:[Ljava/lang/String;

.field protected elRawName:[[C

.field protected elRawNameEnd:[I

.field protected elRawNameLine:[I

.field protected elUri:[Ljava/lang/String;

.field protected emptyElementTag:Z

.field protected entityEnd:I

.field protected entityName:[Ljava/lang/String;

.field protected entityNameBuf:[[C

.field protected entityNameHash:[I

.field protected entityRefName:Ljava/lang/String;

.field protected entityReplacement:[Ljava/lang/String;

.field protected entityReplacementBuf:[[C

.field protected eventType:I

.field protected inputEncoding:Ljava/lang/String;

.field protected lineNumber:I

.field protected location:Ljava/lang/String;

.field protected namespaceEnd:I

.field protected namespacePrefix:[Ljava/lang/String;

.field protected namespacePrefixHash:[I

.field protected namespaceUri:[Ljava/lang/String;

.field protected pastEndTag:Z

.field protected pc:[C

.field protected pcEnd:I

.field protected pcStart:I

.field protected pos:I

.field protected posEnd:I

.field protected posStart:I

.field protected preventBufferCompaction:Z

.field protected processNamespaces:Z

.field protected reachedEnd:Z

.field protected reader:Ljava/io/Reader;

.field protected roundtripSupported:Z

.field protected seenAmpersand:Z

.field protected seenDocdecl:Z

.field protected seenEndTag:Z

.field protected seenMarkup:Z

.field protected seenRoot:Z

.field protected seenStartTag:Z

.field protected text:Ljava/lang/String;

.field protected tokenize:Z

.field protected usePC:Z

.field protected xmlDeclContent:Ljava/lang/String;

.field protected xmlDeclStandalone:Ljava/lang/Boolean;

.field protected xmlDeclVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "version"

    .line 2516
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->VERSION:[C

    const-string v0, "ncoding"

    .line 2517
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->NCODING:[C

    const-string v0, "tandalone"

    .line 2518
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->TANDALONE:[C

    const-string v0, "yes"

    .line 2519
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->YES:[C

    const-string v0, "no"

    .line 2520
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/xmlpull/mxp1/MXParser;->NO:[C

    const/16 v0, 0x400

    new-array v1, v0, [Z

    .line 3076
    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    new-array v1, v0, [Z

    .line 3077
    sput-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    const/16 v1, 0x3a

    .line 3087
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    const/16 v1, 0x41

    :goto_0
    const/16 v2, 0x5a

    if-gt v1, v2, :cond_0

    .line 3088
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5f

    .line 3089
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    const/16 v1, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    .line 3090
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xc0

    :goto_2
    const/16 v2, 0x2ff

    if-gt v1, v2, :cond_2

    .line 3091
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_2

    :cond_2
    const/16 v1, 0x370

    :goto_3
    const/16 v2, 0x37d

    if-gt v1, v2, :cond_3

    .line 3092
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_3

    :cond_3
    const/16 v1, 0x37f

    :goto_4
    if-ge v1, v0, :cond_4

    .line 3093
    invoke-static {v1}, Lorg/xmlpull/mxp1/MXParser;->setNameStart(C)V

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_4

    :cond_4
    const/16 v0, 0x2d

    .line 3095
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    const/16 v0, 0x2e

    .line 3096
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    const/16 v0, 0x30

    :goto_5
    const/16 v1, 0x39

    if-gt v0, v1, :cond_5

    .line 3097
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_5

    :cond_5
    const/16 v0, 0xb7

    .line 3098
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    const/16 v0, 0x300

    :goto_6
    const/16 v1, 0x36f

    if-gt v0, v1, :cond_6

    .line 3099
    invoke-static {v0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    :cond_6
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5f

    .line 337
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    .line 340
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    const/16 v2, 0x2000

    const-wide/32 v3, 0xf4240

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    const/16 v0, 0x2000

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    :goto_0
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    .line 342
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    array-length v0, v0

    mul-int v1, v1, v0

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    .line 352
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x40

    :goto_1
    new-array v0, v2, [C

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    const/4 v0, 0x1

    new-array v0, v0, [C

    .line 2136
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    return-void
.end method

.method protected static final fastHash([CII)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 275
    :cond_0
    aget-char v0, p0, p1

    shl-int/lit8 v0, v0, 0x7

    add-int v1, p1, p2

    add-int/lit8 v1, v1, -0x1

    .line 277
    aget-char v1, p0, v1

    add-int/2addr v0, v1

    const/16 v1, 0x10

    if-le p2, v1, :cond_1

    shl-int/lit8 v0, v0, 0x7

    .line 282
    div-int/lit8 v1, p2, 0x4

    add-int/2addr v1, p1

    aget-char v1, p0, v1

    add-int/2addr v0, v1

    :cond_1
    const/16 v1, 0x8

    if-le p2, v1, :cond_2

    shl-int/lit8 v0, v0, 0x7

    .line 283
    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    aget-char p0, p0, p1

    add-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private static findFragment(I[CII)I
    .locals 4

    if-ge p2, p0, :cond_1

    if-le p0, p3, :cond_0

    move p0, p3

    :cond_0
    return p0

    :cond_1
    sub-int v0, p3, p2

    const/16 v1, 0x41

    if-le v0, v1, :cond_2

    add-int/lit8 p2, p3, -0xa

    :cond_2
    add-int/lit8 v0, p2, 0x1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-le v0, p0, :cond_5

    sub-int v2, p3, v0

    if-le v2, v1, :cond_4

    goto :goto_0

    .line 667
    :cond_4
    aget-char v2, p1, v0

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3

    sub-int v2, p2, v0

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    :cond_5
    :goto_0
    return v0
.end method

.method private static final setName(C)V
    .locals 2

    .line 3081
    sget-object v0, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    return-void
.end method

.method private static final setNameStart(C)V
    .locals 2

    .line 3084
    sget-object v0, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p0

    invoke-static {p0}, Lorg/xmlpull/mxp1/MXParser;->setName(C)V

    return-void
.end method


# virtual methods
.method public defineEntityReplacementText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 565
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->ensureEntityCapacity()V

    .line 568
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 569
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    aput-object p1, v0, v1

    .line 571
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    aput-object p2, p1, v0

    .line 572
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    aput-object p2, p1, v0

    .line 573
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez p1, :cond_0

    .line 574
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    iget p2, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    aget-object v1, v0, p2

    aget-object v0, v0, p2

    array-length v0, v0

    invoke-static {v1, v4, v0}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v0

    aput v0, p1, p2

    .line 577
    :cond_0
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    return-void
.end method

.method protected ensureAttributesCapacity(I)V
    .locals 5

    .line 193
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lt p1, v2, :cond_8

    const/4 v3, 0x7

    if-le p1, v3, :cond_1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    if-lez v2, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 202
    :goto_2
    new-array v4, p1, [Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 203
    invoke-static {v0, v1, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    :cond_3
    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    .line 206
    new-array v0, p1, [Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 207
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    :cond_4
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    .line 210
    new-array v0, p1, [Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 211
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_5
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    .line 214
    new-array v0, p1, [Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 215
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    invoke-static {v4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    :cond_6
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    .line 218
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_8

    .line 219
    new-array p1, p1, [I

    if-eqz v3, :cond_7

    .line 220
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    :cond_7
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    :cond_8
    return-void
.end method

.method protected ensureElementsCapacity()V
    .locals 6

    .line 110
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 111
    :goto_0
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    add-int/lit8 v4, v3, 0x1

    if-lt v4, v2, :cond_a

    const/4 v4, 0x7

    if-lt v3, v4, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    add-int/lit8 v3, v3, 0x2

    if-lez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 120
    :goto_2
    new-array v5, v3, [Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 121
    invoke-static {v0, v1, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    :cond_3
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    .line 123
    new-array v0, v3, [Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 124
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    :cond_4
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    .line 126
    new-array v0, v3, [Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 127
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    :cond_5
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    .line 130
    new-array v0, v3, [I

    if-eqz v4, :cond_6

    .line 132
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 135
    :cond_6
    aput v1, v0, v1

    .line 137
    :goto_3
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    .line 140
    new-array v0, v3, [I

    if-eqz v4, :cond_7

    .line 142
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    :cond_7
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    .line 146
    new-array v0, v3, [I

    if-eqz v4, :cond_8

    .line 148
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    invoke-static {v5, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    :cond_8
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    .line 152
    new-array v0, v3, [[C

    if-eqz v4, :cond_9

    .line 154
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    :cond_9
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    :cond_a
    return-void
.end method

.method protected ensureEntityCapacity()V
    .locals 8

    .line 300
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    if-lt v2, v0, :cond_4

    const/4 v0, 0x7

    if-le v2, v0, :cond_1

    mul-int/lit8 v0, v2, 0x2

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 306
    :goto_1
    new-array v3, v0, [Ljava/lang/String;

    .line 307
    new-array v4, v0, [[C

    .line 308
    new-array v5, v0, [Ljava/lang/String;

    .line 309
    new-array v6, v0, [[C

    .line 310
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 311
    invoke-static {v7, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v5, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    :cond_2
    iput-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    .line 317
    iput-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    .line 318
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    .line 319
    iput-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    .line 321
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v2, :cond_4

    .line 322
    new-array v0, v0, [I

    .line 323
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    if-eqz v2, :cond_3

    .line 324
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    :cond_3
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    :cond_4
    return-void
.end method

.method protected ensureNamespacesCapacity(I)V
    .locals 5

    .line 236
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v2, v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lt p1, v2, :cond_4

    const/4 v2, 0x7

    if-le p1, v2, :cond_1

    mul-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    .line 242
    :goto_1
    new-array v2, p1, [Ljava/lang/String;

    .line 243
    new-array v3, p1, [Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 245
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    :cond_2
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    .line 251
    iput-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    .line 254
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 255
    new-array p1, p1, [I

    .line 256
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    if-eqz v0, :cond_3

    .line 257
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    :cond_3
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    :cond_4
    return-void
.end method

.method protected ensurePC(I)V
    .locals 3

    const/16 v0, 0x2000

    if-le p1, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    const/16 p1, 0x4000

    .line 3018
    :goto_0
    new-array p1, p1, [C

    .line 3020
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3021
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    return-void
.end method

.method protected fillBuf()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2886
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_12

    .line 2890
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_7

    .line 2893
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    if-le v4, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2895
    :goto_0
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    :goto_1
    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    if-nez v1, :cond_3

    .line 2900
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v5, v5

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-eqz v1, :cond_4

    .line 2913
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v0, v4

    invoke-static {v1, v4, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_6

    .line 2922
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v5, v1

    mul-int/lit8 v5, v5, 0x2

    .line 2923
    new-array v5, v5, [C

    sub-int/2addr v0, v4

    .line 2925
    invoke-static {v1, v4, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2926
    iput-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    .line 2927
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufLoadFactor:I

    if-lez v0, :cond_5

    .line 2928
    array-length v1, v5

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufSoftLimit:I

    .line 2934
    :cond_5
    :goto_3
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    .line 2935
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 2936
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2937
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2938
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    .line 2939
    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    goto :goto_4

    .line 2932
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "internal error in fillBuffer()"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2946
    :cond_7
    :goto_4
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    array-length v1, v0

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    sub-int/2addr v1, v4

    const/16 v5, 0x2000

    if-le v1, v5, :cond_8

    goto :goto_5

    :cond_8
    array-length v1, v0

    sub-int v5, v1, v4

    .line 2947
    :goto_5
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-lez v0, :cond_9

    .line 2949
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    return-void

    :cond_9
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 2957
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    if-nez v0, :cond_b

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    if-eqz v0, :cond_a

    goto :goto_6

    .line 2958
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "input contained no data"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2961
    :cond_b
    :goto_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2962
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-lez v1, :cond_10

    const-string v1, " - expected end tag"

    .line 2965
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2966
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-le v1, v2, :cond_c

    const-string v1, "s"

    .line 2967
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    const-string v1, " "

    .line 2969
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2970
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    :goto_7
    if-lez v1, :cond_d

    .line 2972
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v5, v5, v1

    invoke-direct {v2, v4, v3, v5}, Ljava/lang/String;-><init>([CII)V

    const-string v4, "</"

    .line 2973
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_d
    const-string v1, " to close"

    .line 2975
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2976
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    :goto_8
    if-lez v1, :cond_f

    .line 2978
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-eq v1, v2, :cond_e

    const-string v2, " and"

    .line 2979
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2981
    :cond_e
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v5, v5, v1

    invoke-direct {v2, v4, v3, v5}, Ljava/lang/String;-><init>([CII)V

    .line 2982
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, " start tag <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ">"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2983
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " from line "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    aget v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_f
    const-string v1, ", parser stopped on"

    .line 2985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2987
    :cond_10
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "no more data available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2991
    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "error reading input, returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2886
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "reader must be set before parsing is started"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public getAttributeCount()I
    .locals 2

    .line 865
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 866
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 3

    .line 881
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 883
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 885
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 883
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 3

    .line 871
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 873
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    .line 874
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 876
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 874
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 3

    .line 890
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 892
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ltz p1, :cond_1

    .line 893
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_1

    .line 895
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 893
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 3

    .line 899
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 901
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    const-string p1, "CDATA"

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 899
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 3

    .line 916
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 918
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    .line 920
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 918
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 926
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    if-eqz p2, :cond_8

    .line 932
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 937
    :cond_0
    :goto_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge v2, v0, :cond_6

    .line 938
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v3, v0, v2

    if-eq p1, v3, :cond_1

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 944
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 948
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object p1, v1

    :cond_4
    if-nez p1, :cond_7

    .line 953
    :goto_1
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge v2, p1, :cond_6

    .line 954
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 956
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    aget-object p1, p1, v2

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    return-object v1

    .line 951
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "when namespaces processing is disabled attribute namespace must be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 929
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attribute name can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 926
    :cond_9
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "only START_TAG can have attributes"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getColumnNumber()I
    .locals 1

    .line 705
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .line 650
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    return v0
.end method

.method public getEventType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 967
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_4

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    return p1

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    .line 480
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    .line 482
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    .line 486
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 488
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    return p1

    :cond_3
    return v1

    .line 475
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature name should not be nulll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    .line 700
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 826
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 828
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 830
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 832
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 833
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 835
    :cond_2
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 3

    .line 799
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const-string v1, ""

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 801
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v1, v0, v1

    :cond_0
    return-object v1

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 803
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v1, v0, v1

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_3

    .line 626
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 627
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const-string v0, "xml"

    .line 631
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "http://www.w3.org/XML/1998/namespace"

    return-object p1

    :cond_2
    const-string v0, "xmlns"

    .line 633
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "http://www.w3.org/2000/xmlns/"

    return-object p1

    .line 637
    :cond_3
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_5

    .line 638
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    .line 639
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNamespaceCount(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 585
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    .line 590
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-gt p1, v0, :cond_1

    .line 592
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    aget p1, v0, p1

    return p1

    .line 590
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "napespace count mayt be for depth 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 601
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    .line 602
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 604
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " exceeded number of available namespaces "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNamespaceUri(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 613
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    if-ge p1, v0, :cond_0

    .line 614
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    .line 616
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " exceedded number of available namespaces "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 7

    .line 681
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    const-string v2, "..."

    const/4 v3, 0x0

    if-gt v0, v1, :cond_2

    const/4 v4, 0x0

    .line 682
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-static {v4, v5, v0, v1}, Lorg/xmlpull/mxp1/MXParser;->findFragment(I[CII)I

    move-result v0

    .line 684
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    if-ge v0, v1, :cond_0

    .line 685
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v1, v0

    invoke-direct {v3, v4, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 687
    :cond_0
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    if-gtz v1, :cond_1

    if-lez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 692
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ""

    if-eqz v3, :cond_3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, " seen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->location:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v4, v1

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .line 843
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 845
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 847
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_4

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-version"

    .line 508
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-standalone"

    .line 510
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#xmldecl-content"

    .line 512
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    .line 514
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 515
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->location:Ljava/lang/String;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 507
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "property name should not be nulll"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 733
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 741
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    return-object v0

    .line 743
    :cond_1
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 744
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 747
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    goto :goto_1

    .line 745
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 750
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    return-object v0

    :cond_5
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextCharacters([I)[C
    .locals 4

    .line 755
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 756
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v0, :cond_0

    .line 757
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    aput v0, p1, v1

    .line 758
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v2

    .line 759
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    return-object p1

    .line 761
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aput v0, p1, v1

    .line 762
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v2

    .line 763
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    return-object p1

    :cond_1
    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_5

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/16 v3, 0x9

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_5

    const/16 v3, 0x8

    if-eq v0, v3, :cond_5

    const/4 v3, 0x7

    if-eq v0, v3, :cond_5

    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_4

    if-ne v0, v2, :cond_3

    goto :goto_0

    .line 784
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unknown text eventType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    .line 781
    aput v0, p1, v2

    aput v0, p1, v1

    const/4 p1, 0x0

    return-object p1

    .line 775
    :cond_5
    :goto_1
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    aput v0, p1, v1

    .line 776
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    aput v1, p1, v2

    .line 777
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    return-object p1
.end method

.method public isAttributeDefault(I)Z
    .locals 3

    .line 907
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ltz p1, :cond_0

    .line 909
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "attribute position must be 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "only START_TAG can have attributes"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmptyElementTag()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 858
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 860
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    return v0

    .line 858
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "parser must be on START_TAG to check for empty element"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected isNameChar(C)Z
    .locals 2

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 3138
    sget-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameChar:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_3

    :cond_0
    if-lt p1, v0, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_4

    const v0, 0xffef

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isNameStartChar(C)Z
    .locals 2

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    .line 3104
    sget-object v1, Lorg/xmlpull/mxp1/MXParser;->lookupNameStartChar:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_3

    :cond_0
    if-lt p1, v0, :cond_1

    const/16 v0, 0x2027

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x202a

    if-lt p1, v0, :cond_2

    const/16 v0, 0x218f

    if-le p1, v0, :cond_3

    :cond_2
    const/16 v0, 0x2800

    if-lt p1, v0, :cond_4

    const v0, 0xffef

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isS(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isWhitespace()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 711
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    return v1

    .line 728
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "no content available to check for whitespaces"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 713
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    :goto_1
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    if-ge v0, v3, :cond_4

    .line 715
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return v1

    .line 719
    :cond_5
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    :goto_2
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    if-ge v0, v3, :cond_7

    .line 721
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v3, v3, v0

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return v1
.end method

.method protected joinPC()V
    .locals 6

    .line 3028
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v0, v1

    .line 3029
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 3030
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v3, v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 3032
    :cond_0
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    invoke-static {v1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3033
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 3034
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    return-void
.end method

.method protected lookuEntityReplacement(I)[C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2267
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v0, :cond_4

    .line 2268
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v0

    .line 2270
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_7

    .line 2272
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameHash:[I

    aget v2, v2, v1

    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->entityNameBuf:[[C

    aget-object v3, v2, v1

    array-length v3, v3

    if-ne p1, v3, :cond_3

    .line 2273
    aget-object v2, v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p1, :cond_1

    .line 2276
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    add-int/2addr v5, v3

    aget-char v4, v4, v5

    aget-char v5, v2, v3

    if-eq v4, v5, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2278
    :cond_1
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object p1, p1, v1

    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2279
    :cond_2
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    aget-object p1, p1, v1

    return-object p1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2283
    :cond_4
    iget-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 2284
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    add-int/lit8 p1, p1, -0x1

    :goto_3
    if-ltz p1, :cond_7

    .line 2287
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityName:[Ljava/lang/String;

    aget-object v1, v1, p1

    if-ne v0, v1, :cond_6

    .line 2288
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacement:[Ljava/lang/String;

    aget-object v0, v0, p1

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2289
    :cond_5
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityReplacementBuf:[[C

    aget-object p1, v0, p1

    return-object p1

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method protected more()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 2996
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->fillBuf()V

    .line 2997
    :cond_0
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2999
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    goto :goto_0

    .line 3000
    :cond_1
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    :goto_0
    return v0
.end method

.method protected newString([CII)Ljava/lang/String;
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public next()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1091
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    .line 1092
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected nextImpl()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1106
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1107
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 1108
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1109
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    .line 1110
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1111
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 1112
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 1113
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    aget v2, v4, v2

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 1115
    :cond_0
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    if-eqz v2, :cond_1

    .line 1116
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 1117
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    const/4 v0, 0x3

    .line 1118
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1122
    :cond_1
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    if-lez v2, :cond_32

    .line 1124
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    if-eqz v2, :cond_2

    .line 1125
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 1126
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1128
    :cond_2
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    if-eqz v2, :cond_3

    .line 1129
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 1130
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1136
    :cond_3
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    const/16 v4, 0x26

    const/16 v5, 0x3c

    if-eqz v2, :cond_4

    .line 1137
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    const/16 v2, 0x3c

    goto :goto_0

    .line 1139
    :cond_4
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    if-eqz v2, :cond_5

    .line 1140
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    const/16 v2, 0x26

    goto :goto_0

    .line 1143
    :cond_5
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    .line 1145
    :goto_0
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x4

    if-ne v2, v5, :cond_14

    if-eqz v6, :cond_6

    .line 1159
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_6

    .line 1160
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1161
    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1164
    :cond_6
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    const/16 v9, 0x2f

    if-ne v2, v9, :cond_8

    .line 1166
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-nez v0, :cond_7

    if-eqz v6, :cond_7

    .line 1167
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 1169
    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1171
    :cond_7
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEndTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    :cond_8
    const/16 v9, 0x21

    const-string v10, "unexpected character in markup "

    if-ne v2, v9, :cond_e

    .line 1173
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    const/16 v8, 0x2d

    if-ne v2, v8, :cond_b

    .line 1176
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 1177
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_9

    const/16 v0, 0x9

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1178
    :cond_9
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_a

    if-eqz v6, :cond_a

    goto :goto_2

    .line 1181
    :cond_a
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    goto/16 :goto_5

    :cond_b
    const/16 v8, 0x5b

    if-ne v2, v8, :cond_d

    .line 1188
    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->parseCDSect(Z)V

    .line 1189
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_c

    const/4 v0, 0x5

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1190
    :cond_c
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1191
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v8, v2

    if-lez v8, :cond_1d

    .line 1197
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_1c

    const/4 v6, 0x1

    goto :goto_2

    .line 1240
    :cond_d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    const/16 v9, 0x3f

    if-ne v2, v9, :cond_11

    .line 1244
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    .line 1245
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_f

    const/16 v0, 0x8

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1246
    :cond_f
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_10

    if-eqz v6, :cond_10

    :goto_2
    const/4 v7, 0x1

    goto/16 :goto_5

    .line 1249
    :cond_10
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    goto/16 :goto_5

    .line 1252
    :cond_11
    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1253
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-nez v0, :cond_12

    if-eqz v6, :cond_12

    .line 1254
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 1256
    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1258
    :cond_12
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1260
    :cond_13
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_14
    if-ne v2, v4, :cond_1e

    .line 1268
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_15

    if-eqz v6, :cond_15

    .line 1269
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    .line 1270
    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1272
    :cond_15
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v2, v8

    .line 1273
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    add-int/2addr v9, v8

    .line 1274
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEntityRef()[C

    move-result-object v8

    .line 1275
    iget-boolean v10, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v10, :cond_16

    const/4 v0, 0x6

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    :cond_16
    if-nez v8, :cond_18

    .line 1278
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v1, :cond_17

    .line 1279
    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 1281
    :cond_17
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "could not resolve entity named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1287
    :cond_18
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v2, v10

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v9, v10

    .line 1288
    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1289
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_1a

    if-eqz v6, :cond_19

    .line 1291
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    const/4 v7, 0x0

    goto :goto_3

    .line 1294
    :cond_19
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1295
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    :cond_1a
    :goto_3
    const/4 v2, 0x0

    .line 1300
    :goto_4
    array-length v6, v8

    if-ge v2, v6, :cond_1c

    .line 1302
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v6, v9, :cond_1b

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1303
    :cond_1b
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aget-char v10, v8, v2

    aput-char v10, v6, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1c
    const/4 v6, 0x1

    .line 1388
    :cond_1d
    :goto_5
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    goto/16 :goto_1

    :cond_1e
    if-eqz v7, :cond_1f

    .line 1312
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    const/4 v7, 0x0

    .line 1328
    :cond_1f
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v6, :cond_21

    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v6, :cond_20

    goto :goto_6

    :cond_20
    const/4 v6, 0x0

    goto :goto_7

    :cond_21
    :goto_6
    const/4 v6, 0x1

    :goto_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_22
    const/16 v11, 0x5d

    if-ne v2, v11, :cond_24

    if-eqz v9, :cond_23

    const/4 v8, 0x1

    goto :goto_9

    :cond_23
    const/4 v9, 0x1

    goto :goto_9

    :cond_24
    if-eqz v8, :cond_26

    const/16 v11, 0x3e

    if-eq v2, v11, :cond_25

    goto :goto_8

    .line 1342
    :cond_25
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "characters ]]> are not allowed in content"

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_26
    :goto_8
    if-eqz v9, :cond_27

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_27
    :goto_9
    if-eqz v6, :cond_30

    const/16 v11, 0xd

    const/16 v12, 0xa

    if-ne v2, v11, :cond_2b

    .line 1354
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1356
    iget-boolean v10, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v10, :cond_29

    .line 1357
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v2, v10, :cond_28

    .line 1358
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_a

    .line 1360
    :cond_28
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1361
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1365
    :cond_29
    :goto_a
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v2, v10, :cond_2a

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1366
    :cond_2a
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v12, v2, v10

    const/4 v10, 0x1

    goto :goto_c

    :cond_2b
    if-ne v2, v12, :cond_2d

    if-nez v10, :cond_2f

    .line 1369
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v2, :cond_2f

    .line 1370
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v2, v10, :cond_2c

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1371
    :cond_2c
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v12, v2, v10

    goto :goto_b

    .line 1375
    :cond_2d
    iget-boolean v10, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v10, :cond_2f

    .line 1376
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_2e

    invoke-virtual {p0, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1377
    :cond_2e
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v2, v10, v11

    :cond_2f
    :goto_b
    const/4 v10, 0x0

    .line 1383
    :cond_30
    :goto_c
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    if-eq v2, v5, :cond_31

    if-ne v2, v4, :cond_22

    .line 1385
    :cond_31
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v3

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 1391
    :cond_32
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    if-eqz v0, :cond_33

    .line 1392
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseEpilog()I

    move-result v0

    return v0

    .line 1394
    :cond_33
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseProlog()I

    move-result v0

    return v0
.end method

.method public nextTag()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1077
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    .line 1078
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->isWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    .line 1081
    :cond_0
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1082
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected START_TAG or END_TAG not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_0
    return v0
.end method

.method public nextText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1053
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1057
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    .line 1059
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1060
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    move-result v2

    if-ne v2, v3, :cond_0

    return-object v0

    .line 1062
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "TEXT must be immediately followed by END_TAG and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    if-ne v0, v3, :cond_2

    const-string v0, ""

    return-object v0

    .line 1070
    :cond_2
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "parser must be on START_TAG or TEXT to read text"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1054
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "parser must be on START_TAG to read next text"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public nextToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1098
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    .line 1099
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->nextImpl()I

    move-result v0

    return v0
.end method

.method protected parseAttribute()C
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1892
    iget v1, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v1, v2

    .line 1893
    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v4, v3, -0x1

    add-int/2addr v4, v2

    .line 1895
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    aget-char v2, v2, v3

    const/16 v3, 0x3a

    const/4 v6, 0x0

    if-ne v2, v3, :cond_1

    .line 1896
    iget-boolean v7, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "when namespaces processing enabled colon can not be at attribute name start"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1901
    :cond_1
    :goto_0
    iget-boolean v7, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    const/16 v7, 0x78

    if-ne v2, v7, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1904
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 1905
    :goto_2
    invoke-virtual {v0, v7}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-eqz v12, :cond_b

    .line 1906
    iget-boolean v12, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v12, :cond_a

    if-eqz v2, :cond_8

    const/4 v12, 0x5

    if-ge v10, v12, :cond_8

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v5, :cond_3

    const/16 v12, 0x6d

    if-eq v7, v12, :cond_8

    :goto_3
    const/4 v2, 0x0

    goto :goto_4

    :cond_3
    if-ne v10, v14, :cond_4

    const/16 v12, 0x6c

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_4
    const/4 v14, 0x3

    if-ne v10, v14, :cond_5

    const/16 v12, 0x6e

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_5
    if-ne v10, v13, :cond_6

    const/16 v12, 0x73

    if-eq v7, v12, :cond_8

    goto :goto_3

    :cond_6
    if-ne v10, v12, :cond_8

    if-ne v7, v3, :cond_7

    goto :goto_4

    .line 1914
    :cond_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "after xmlns in attribute name must be colonwhen namespaces are enabled"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_8
    :goto_4
    if-ne v7, v3, :cond_a

    if-ne v11, v9, :cond_9

    .line 1924
    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v7, v5

    iget v11, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v11, v7

    goto :goto_5

    .line 1921
    :cond_9
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "only one colon is allowed in attribute name when namespaces are enabled"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1927
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    goto :goto_2

    .line 1930
    :cond_b
    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    invoke-virtual {v0, v3}, Lorg/xmlpull/mxp1/MXParser;->ensureAttributesCapacity(I)V

    .line 1936
    iget-boolean v3, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v3, :cond_11

    if-ge v10, v13, :cond_c

    const/4 v2, 0x0

    :cond_c
    if-eqz v2, :cond_f

    if-eq v11, v9, :cond_e

    .line 1941
    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v3, v14

    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v10, v11, v4

    sub-int/2addr v3, v10

    if-eqz v3, :cond_d

    .line 1947
    iget-object v10, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v4, v11, v4

    add-int/2addr v4, v5

    invoke-virtual {v0, v10, v4, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 1943
    :cond_d
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "namespace prefix is required after xmlns:  when namespaces are enabled"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_e
    move-object v3, v6

    goto/16 :goto_7

    :cond_f
    if-eq v11, v9, :cond_10

    sub-int v3, v11, v4

    .line 1954
    iget-object v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v4, v15

    invoke-virtual {v0, v13, v4, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v12

    .line 1957
    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v3, v14

    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v10, v11, v4

    sub-int/2addr v3, v10

    .line 1958
    iget-object v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    iget v12, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v4, v11, v4

    add-int/2addr v4, v5

    invoke-virtual {v0, v13, v4, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v12

    goto :goto_6

    .line 1964
    :cond_10
    iget-object v3, v0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    iget v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    aput-object v6, v3, v10

    .line 1965
    iget-object v3, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v14, v4, v13

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v15, v5

    sub-int/2addr v4, v13

    sub-int/2addr v15, v4

    invoke-virtual {v0, v12, v14, v15}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    move-object v3, v4

    .line 1969
    :goto_6
    iget-boolean v4, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_13

    .line 1970
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    iget v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v4, v10

    goto :goto_7

    .line 1976
    :cond_11
    iget-object v3, v0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    iget v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    iget-object v12, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v14, v4, v13

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v15, v5

    sub-int/2addr v4, v13

    sub-int/2addr v15, v4

    invoke-virtual {v0, v12, v14, v15}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 1980
    iget-boolean v3, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_12

    .line 1981
    iget-object v3, v0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    iget v10, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v12

    aput v12, v3, v10

    :cond_12
    move-object v3, v4

    .line 1986
    :cond_13
    :goto_7
    invoke-virtual {v0, v7}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    goto :goto_7

    :cond_14
    const/16 v4, 0x3d

    if-ne v7, v4, :cond_36

    .line 1989
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    .line 1990
    :goto_8
    invoke-virtual {v0, v4}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    goto :goto_8

    :cond_15
    const/16 v7, 0x22

    if-eq v4, v7, :cond_17

    const/16 v7, 0x27

    if-ne v4, v7, :cond_16

    goto :goto_9

    .line 1995
    :cond_16
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "attribute value must start with quotation or apostrophe not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2004
    :cond_17
    :goto_9
    iput-boolean v8, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2005
    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v7, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2006
    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v7, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    const/4 v7, 0x0

    .line 2009
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v10

    const-string v12, "\'"

    if-ne v10, v4, :cond_24

    .line 2076
    iget-boolean v4, v0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v4, :cond_22

    if-eqz v2, :cond_22

    .line 2078
    iget-boolean v2, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_18

    .line 2079
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    invoke-virtual {v0, v2, v4, v7}, Lorg/xmlpull/mxp1/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 2081
    :cond_18
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v7, v4

    invoke-virtual {v0, v2, v4, v7}, Lorg/xmlpull/mxp1/MXParser;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v2

    .line 2083
    :goto_b
    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    invoke-virtual {v0, v4}, Lorg/xmlpull/mxp1/MXParser;->ensureNamespacesCapacity(I)V

    if-eq v11, v9, :cond_1a

    .line 2086
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_19

    .line 2091
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput-object v3, v4, v7

    .line 2092
    iget-boolean v4, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_1b

    .line 2093
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v9

    aput v9, v4, v7

    goto :goto_c

    .line 2087
    :cond_19
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "non-default namespace can not be declared to be empty string"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2097
    :cond_1a
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput-object v6, v4, v7

    .line 2098
    iget-boolean v4, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_1b

    .line 2099
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    aput v9, v4, v7

    .line 2102
    :cond_1b
    :goto_c
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceUri:[Ljava/lang/String;

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput-object v2, v4, v7

    .line 2105
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    iget v4, v0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    sub-int/2addr v4, v5

    aget v2, v2, v4

    sub-int/2addr v7, v5

    :goto_d
    if-lt v7, v2, :cond_21

    .line 2108
    iget-boolean v4, v0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v4, :cond_1c

    if-nez v3, :cond_1d

    :cond_1c
    iget-object v8, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v8, v8, v7

    if-eq v8, v3, :cond_1f

    :cond_1d
    if-nez v4, :cond_1e

    if-eqz v3, :cond_1e

    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefixHash:[I

    aget v4, v4, v7

    if-ne v4, v9, :cond_1e

    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->namespacePrefix:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_e

    :cond_1e
    add-int/lit8 v7, v7, -0x1

    goto :goto_d

    :cond_1f
    :goto_e
    if-nez v3, :cond_20

    const-string v1, "default"

    goto :goto_f

    .line 2114
    :cond_20
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2115
    :goto_f
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "duplicated namespace declaration for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " prefix"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2120
    :cond_21
    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    goto :goto_11

    .line 2123
    :cond_22
    iget-boolean v2, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_23

    .line 2124
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    new-instance v4, Ljava/lang/String;

    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v8, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v8, v5

    sub-int/2addr v8, v7

    invoke-direct {v4, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v4, v2, v3

    goto :goto_10

    .line 2127
    :cond_23
    iget-object v2, v0, Lorg/xmlpull/mxp1/MXParser;->attributeValue:[Ljava/lang/String;

    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    new-instance v4, Ljava/lang/String;

    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iget v8, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v8, v7

    invoke-direct {v4, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    aput-object v4, v2, v3

    .line 2130
    :goto_10
    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    .line 2132
    :goto_11
    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    return v10

    :cond_24
    const/16 v13, 0x3c

    if-eq v10, v13, :cond_35

    const/16 v13, 0x26

    const/16 v14, 0xd

    if-ne v10, v13, :cond_2b

    .line 2017
    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v7, v5

    iput v7, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2018
    iget-boolean v13, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v13, :cond_27

    .line 2019
    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v7, v13, :cond_25

    const/4 v7, 0x1

    goto :goto_12

    :cond_25
    const/4 v7, 0x0

    :goto_12
    if-eqz v7, :cond_26

    .line 2022
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_13

    .line 2024
    :cond_26
    iput-boolean v5, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2025
    iput v8, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v8, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2030
    :cond_27
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->parseEntityRef()[C

    move-result-object v7

    if-nez v7, :cond_29

    .line 2033
    iget-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    if-nez v1, :cond_28

    .line 2034
    iget-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iget v3, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 2036
    :cond_28
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "could not resolve entity named \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_29
    const/4 v12, 0x0

    .line 2041
    :goto_14
    array-length v13, v7

    if-ge v12, v13, :cond_33

    .line 2043
    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v15, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v15, v15

    if-lt v13, v15, :cond_2a

    invoke-virtual {v0, v13}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2044
    :cond_2a
    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v15, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v15, 0x1

    iput v9, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aget-char v9, v7, v12

    aput-char v9, v13, v15

    add-int/lit8 v12, v12, 0x1

    const/4 v9, -0x1

    goto :goto_14

    :cond_2b
    const/16 v9, 0x9

    const/16 v12, 0xa

    if-eq v10, v9, :cond_2e

    if-eq v10, v12, :cond_2e

    if-ne v10, v14, :cond_2c

    goto :goto_15

    .line 2067
    :cond_2c
    iget-boolean v7, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_33

    .line 2068
    iget v7, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_2d

    invoke-virtual {v0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2069
    :cond_2d
    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v7, v9

    goto :goto_17

    .line 2051
    :cond_2e
    :goto_15
    iget-boolean v9, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v9, :cond_30

    .line 2052
    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v9, v5

    iput v9, v0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2053
    iget v13, v0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v9, v13, :cond_2f

    .line 2054
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_16

    .line 2056
    :cond_2f
    iput-boolean v5, v0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2057
    iput v8, v0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iput v8, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2061
    :cond_30
    :goto_16
    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v13, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v13, v13

    if-lt v9, v13, :cond_31

    invoke-virtual {v0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    :cond_31
    if-ne v10, v12, :cond_32

    if-nez v7, :cond_33

    .line 2063
    :cond_32
    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v9, 0x1

    iput v12, v0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    const/16 v12, 0x20

    aput-char v12, v7, v9

    :cond_33
    :goto_17
    if-ne v10, v14, :cond_34

    const/4 v7, 0x1

    goto :goto_18

    :cond_34
    const/4 v7, 0x0

    :goto_18
    const/4 v9, -0x1

    goto/16 :goto_a

    .line 2013
    :cond_35
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "markup not allowed inside attribute value - illegal < "

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1987
    :cond_36
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "expected = after attribute name"

    invoke-direct {v1, v2, v0, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_1a

    :goto_19
    throw v1

    :goto_1a
    goto :goto_19
.end method

.method protected parseCDSect(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2775
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const-string v1, "expected <[CDATA[ for comment start"

    const/4 v2, 0x0

    const/16 v3, 0x43

    if-ne v0, v3, :cond_18

    .line 2778
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v3, 0x44

    if-ne v0, v3, :cond_17

    .line 2781
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v3, 0x41

    if-ne v0, v3, :cond_16

    .line 2784
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v4, 0x54

    if-ne v0, v4, :cond_15

    .line 2787
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    if-ne v0, v3, :cond_14

    .line 2790
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_13

    .line 2795
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v0, v1

    .line 2796
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2797
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2798
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 2802
    :try_start_0
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez p1, :cond_3

    .line 2804
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le p1, v6, :cond_2

    .line 2805
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_2

    .line 2807
    :cond_2
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2808
    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    :cond_3
    :goto_2
    const/4 p1, 0x0

    const/4 v6, 0x0

    :cond_4
    :goto_3
    const/4 v7, 0x0

    .line 2818
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v8
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_7

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/16 v9, 0x3e

    if-ne v8, v9, :cond_a

    if-eqz p1, :cond_9

    if-eqz v6, :cond_9

    if-eqz v3, :cond_8

    .line 2877
    iget-boolean p1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz p1, :cond_8

    .line 2878
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 p1, p1, -0x2

    iput p1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 2881
    :cond_8
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2882
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 p1, p1, -0x3

    iput p1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    return-void

    :cond_9
    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    if-eqz p1, :cond_b

    const/4 p1, 0x0

    :cond_b
    :goto_5
    if-eqz v3, :cond_5

    const/16 v9, 0xd

    const/16 v10, 0xa

    if-ne v8, v9, :cond_f

    .line 2842
    :try_start_1
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v7, v0, v7

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2843
    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v8, v4

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2844
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v9, :cond_d

    if-le v8, v7, :cond_c

    .line 2846
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_6

    .line 2848
    :cond_c
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2849
    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2853
    :cond_d
    :goto_6
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_e

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2854
    :cond_e
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v7, v8

    const/4 v7, 0x1

    goto :goto_4

    :cond_f
    if-ne v8, v10, :cond_11

    if-nez v7, :cond_4

    .line 2856
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_4

    .line 2857
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v8, v8

    if-lt v7, v8, :cond_10

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2858
    :cond_10
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v7, v8

    goto/16 :goto_3

    .line 2862
    :cond_11
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v7, :cond_4

    .line 2863
    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v9, v9

    if-lt v7, v9, :cond_12

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2864
    :cond_12
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v8, v7, v9
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    .line 2872
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "CDATA section started on line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " and column "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " was not closed"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2791
    :cond_13
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "expected <![CDATA[ for comment start"

    invoke-direct {p1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2788
    :cond_14
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2785
    :cond_15
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2782
    :cond_16
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2779
    :cond_17
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2776
    :cond_18
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {p1, v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method protected parseComment()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2303
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_12

    .line 2306
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_0

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2308
    :cond_0
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2309
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v0, v5, :cond_1

    .line 2311
    :try_start_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_2
    :goto_1
    const/4 v9, 0x0

    .line 2318
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v10

    const/16 v11, 0x3e

    if-eqz v7, :cond_5

    if-ne v10, v11, :cond_4

    goto :goto_3

    .line 2320
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "in comment after two dashes (--) next character must be > not "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v10}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    if-ne v10, v2, :cond_7

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_5

    :cond_6
    const/4 v7, 0x1

    goto :goto_4

    :cond_7
    if-ne v10, v11, :cond_a

    if-eqz v7, :cond_9

    .line 2381
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_8

    .line 2382
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2383
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v0, :cond_8

    .line 2384
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    :cond_8
    return-void

    :cond_9
    const/4 v7, 0x0

    :cond_a
    :goto_4
    const/4 v8, 0x0

    :goto_5
    if-eqz v0, :cond_3

    const/16 v11, 0xd

    const/16 v12, 0xa

    if-ne v10, v11, :cond_e

    .line 2347
    :try_start_1
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v9, :cond_c

    .line 2348
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v9, v5

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2349
    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v9, v10, :cond_b

    .line 2350
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_6

    .line 2352
    :cond_b
    iput-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2353
    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2357
    :cond_c
    :goto_6
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_d

    invoke-virtual {p0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2358
    :cond_d
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v12, v9, v10

    const/4 v9, 0x1

    goto :goto_2

    :cond_e
    if-ne v10, v12, :cond_10

    if-nez v9, :cond_2

    .line 2360
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v9, :cond_2

    .line 2361
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v9, v10, :cond_f

    invoke-virtual {p0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2362
    :cond_f
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v12, v9, v10

    goto/16 :goto_1

    .line 2366
    :cond_10
    iget-boolean v9, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v9, :cond_2

    .line 2367
    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v11, v11

    if-lt v9, v11, :cond_11

    invoke-virtual {p0, v9}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2368
    :cond_11
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v10, v9, v11
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2377
    :goto_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "comment started on line "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " and column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " was not closed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2304
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "expected <!-- for comment start"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method protected parseDocdecl()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2696
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/4 v1, 0x0

    const-string v2, "expected <!DOCTYPE"

    const/16 v3, 0x4f

    if-ne v0, v3, :cond_12

    .line 2699
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v3, 0x43

    if-ne v0, v3, :cond_11

    .line 2702
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v3, 0x54

    if-ne v0, v3, :cond_10

    .line 2705
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v3, 0x59

    if-ne v0, v3, :cond_f

    .line 2708
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_e

    .line 2711
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v3, 0x45

    if-ne v0, v3, :cond_d

    .line 2714
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2720
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 2723
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    const/16 v6, 0x5d

    if-ne v5, v6, :cond_4

    add-int/lit8 v1, v1, -0x1

    :cond_4
    const/16 v6, 0x3e

    if-ne v5, v6, :cond_5

    if-nez v1, :cond_5

    .line 2761
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    return-void

    :cond_5
    if-eqz v0, :cond_2

    const/16 v6, 0xd

    const/16 v7, 0xa

    if-ne v5, v6, :cond_9

    .line 2733
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v2, :cond_7

    .line 2734
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2735
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v2, v5, :cond_6

    .line 2736
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_3

    .line 2738
    :cond_6
    iput-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 2739
    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 2743
    :cond_7
    :goto_3
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v5, v5

    if-lt v2, v5, :cond_8

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2744
    :cond_8
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v2, v5

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    if-ne v5, v7, :cond_b

    if-nez v2, :cond_1

    .line 2746
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v2, :cond_1

    .line 2747
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v5, v5

    if-lt v2, v5, :cond_a

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2748
    :cond_a
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v7, v2, v5

    goto :goto_1

    .line 2752
    :cond_b
    iget-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v2, :cond_1

    .line 2753
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v6, v6

    if-lt v2, v6, :cond_c

    invoke-virtual {p0, v2}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2754
    :cond_c
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v5, v2, v6

    goto/16 :goto_1

    .line 2712
    :cond_d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2709
    :cond_e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2706
    :cond_f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2703
    :cond_10
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2700
    :cond_11
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2697
    :cond_12
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public parseEndTag()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1646
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1647
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 1651
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v1, v0, -0x3

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1652
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v3, v0

    .line 1654
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1655
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1664
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v4

    .line 1666
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    .line 1667
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v5, v5, v6

    .line 1668
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    aget v8, v7, v6

    const-string v9, ">"

    const-string v10, "end tag name </"

    const-string v11, " from line "

    const/4 v12, 0x0

    if-ne v8, v4, :cond_5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    .line 1678
    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v8, v3, 0x1

    aget-char v3, v7, v3

    aget-char v7, v5, v6

    if-ne v3, v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    move v3, v8

    goto :goto_0

    .line 1680
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5, v12, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1681
    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v8, v6

    sub-int/2addr v8, v1

    invoke-direct {v3, v5, v8, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1682
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "> must be the same as start tag <"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1688
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v3, 0x3e

    if-ne v0, v3, :cond_4

    .line 1698
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1699
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    const/4 v0, 0x3

    .line 1700
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1690
    :cond_4
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected > to finsh end tag not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1670
    :cond_5
    new-instance v0, Ljava/lang/String;

    aget v1, v7, v6

    invoke-direct {v0, v5, v12, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1671
    new-instance v1, Ljava/lang/String;

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-direct {v1, v5, v3, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1672
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "> must match start tag name <"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget v0, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 1648
    :cond_6
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected name start and not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method protected parseEntityRef()[C
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2145
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->entityRefName:Ljava/lang/String;

    .line 2146
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2147
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    const/16 v2, 0x61

    const/16 v3, 0x3b

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x23

    if-ne v1, v6, :cond_8

    .line 2151
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    const/16 v6, 0x78

    const/16 v7, 0x39

    const/16 v8, 0x30

    if-ne v1, v6, :cond_4

    const/4 v1, 0x0

    .line 2155
    :goto_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v6

    if-lt v6, v8, :cond_0

    if-gt v6, v7, :cond_0

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v6, v6, -0x30

    :goto_1
    add-int/2addr v1, v6

    int-to-char v1, v1

    goto :goto_0

    :cond_0
    if-lt v6, v2, :cond_1

    const/16 v9, 0x66

    if-gt v6, v9, :cond_1

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v6, v6, -0x57

    goto :goto_1

    :cond_1
    const/16 v9, 0x41

    if-lt v6, v9, :cond_2

    const/16 v9, 0x46

    if-gt v6, v9, :cond_2

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v6, v6, -0x37

    goto :goto_1

    :cond_2
    if-ne v6, v3, :cond_3

    goto :goto_3

    .line 2165
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "character reference (with hex value) may not contain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-lt v1, v8, :cond_5

    if-gt v1, v7, :cond_5

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    int-to-char v2, v2

    .line 2182
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    goto :goto_2

    :cond_5
    if-ne v1, v3, :cond_7

    move v1, v2

    .line 2185
    :goto_3
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2186
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    aput-char v1, v0, v5

    .line 2187
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v1, :cond_6

    .line 2188
    invoke-virtual {p0, v0, v5, v4}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2190
    :cond_6
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    return-object v0

    .line 2178
    :cond_7
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "character reference (with decimal value) may not contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2194
    :cond_8
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v6

    const-string v7, "\'"

    if-eqz v6, :cond_17

    .line 2200
    :goto_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    if-ne v1, v3, :cond_15

    .line 2210
    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2212
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    sub-int/2addr v1, v3

    const/16 v4, 0x74

    const/4 v6, 0x2

    if-ne v1, v6, :cond_a

    .line 2213
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v9, v8, v3

    const/16 v10, 0x6c

    if-ne v9, v10, :cond_a

    add-int/lit8 v9, v3, 0x1

    aget-char v8, v8, v9

    if-ne v8, v4, :cond_a

    .line 2214
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_9

    const-string v0, "<"

    .line 2215
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2217
    :cond_9
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x3c

    aput-char v1, v0, v5

    return-object v0

    :cond_a
    const/16 v8, 0x70

    const/4 v9, 0x3

    if-ne v1, v9, :cond_c

    .line 2223
    iget-object v10, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v11, v10, v3

    if-ne v11, v2, :cond_c

    add-int/lit8 v11, v3, 0x1

    aget-char v11, v10, v11

    const/16 v12, 0x6d

    if-ne v11, v12, :cond_c

    add-int/lit8 v11, v3, 0x2

    aget-char v10, v10, v11

    if-ne v10, v8, :cond_c

    .line 2225
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_b

    const-string v0, "&"

    .line 2226
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2228
    :cond_b
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x26

    aput-char v1, v0, v5

    return-object v0

    :cond_c
    if-ne v1, v6, :cond_e

    .line 2230
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v10, v6, v3

    const/16 v11, 0x67

    if-ne v10, v11, :cond_e

    add-int/lit8 v10, v3, 0x1

    aget-char v6, v6, v10

    if-ne v6, v4, :cond_e

    .line 2231
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_d

    const-string v0, ">"

    .line 2232
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2234
    :cond_d
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x3e

    aput-char v1, v0, v5

    return-object v0

    :cond_e
    const/16 v6, 0x6f

    const/4 v10, 0x4

    if-ne v1, v10, :cond_10

    .line 2236
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v12, v11, v3

    if-ne v12, v2, :cond_10

    add-int/lit8 v2, v3, 0x1

    aget-char v2, v11, v2

    if-ne v2, v8, :cond_10

    add-int/lit8 v2, v3, 0x2

    aget-char v2, v11, v2

    if-ne v2, v6, :cond_10

    add-int/lit8 v2, v3, 0x3

    aget-char v2, v11, v2

    const/16 v8, 0x73

    if-ne v2, v8, :cond_10

    .line 2239
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_f

    .line 2240
    iput-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2242
    :cond_f
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x27

    aput-char v1, v0, v5

    return-object v0

    :cond_10
    if-ne v1, v10, :cond_12

    .line 2244
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v7, v2, v3

    const/16 v8, 0x71

    if-ne v7, v8, :cond_12

    add-int/lit8 v7, v3, 0x1

    aget-char v7, v2, v7

    const/16 v8, 0x75

    if-ne v7, v8, :cond_12

    add-int/lit8 v7, v3, 0x2

    aget-char v7, v2, v7

    if-ne v7, v6, :cond_12

    add-int/2addr v3, v9

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_12

    .line 2247
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_11

    const-string v0, "\""

    .line 2248
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    .line 2250
    :cond_11
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->charRefOneCharBuf:[C

    const/16 v1, 0x22

    aput-char v1, v0, v5

    return-object v0

    .line 2253
    :cond_12
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->lookuEntityReplacement(I)[C

    move-result-object v1

    if-eqz v1, :cond_13

    return-object v1

    .line 2258
    :cond_13
    iget-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v1, :cond_14

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->text:Ljava/lang/String;

    :cond_14
    return-object v0

    .line 2204
    :cond_15
    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v6

    if-eqz v6, :cond_16

    goto/16 :goto_4

    .line 2205
    :cond_16
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "entity reference name can not contain character "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2195
    :cond_17
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "entity reference names can not start with character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw v2

    :goto_6
    goto :goto_5
.end method

.method protected parseEpilog()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1529
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    .line 1532
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    if-eqz v0, :cond_0

    .line 1533
    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v2

    .line 1536
    :cond_0
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x7

    .line 1541
    :try_start_0
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    if-eqz v5, :cond_2

    .line 1542
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v2

    aget-char v5, v5, v6

    goto :goto_1

    .line 1544
    :cond_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    .line 1546
    :goto_1
    iput-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1547
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v2

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    const/16 v8, 0x3c

    const/16 v9, 0xa

    if-ne v5, v8, :cond_a

    if-eqz v6, :cond_3

    .line 1552
    :try_start_1
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v5, :cond_3

    .line 1553
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1554
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1555
    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v4

    .line 1557
    :cond_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    const/16 v8, 0x3f

    if-ne v5, v8, :cond_4

    .line 1561
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    .line 1562
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v5, :cond_14

    const/16 v0, 0x8

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    :cond_4
    const/16 v8, 0x21

    if-ne v5, v8, :cond_7

    .line 1565
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    const/16 v8, 0x44

    if-ne v5, v8, :cond_5

    .line 1567
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseDocdecl()V

    .line 1568
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v5, :cond_14

    iput v9, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v9

    :cond_5
    const/16 v8, 0x2d

    if-ne v5, v8, :cond_6

    .line 1570
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 1571
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v5, :cond_14

    const/16 v0, 0x9

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1573
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "unexpected markup <!"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    const/16 v0, 0x2f

    if-eq v5, v0, :cond_9

    .line 1579
    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1580
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "start tag not allowed in epilog but got "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1583
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog expected ignorable content and not "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1577
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "end tag not allowed in epilog but got "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1587
    :cond_a
    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v8, :cond_15

    if-eqz v0, :cond_13

    const/16 v6, 0xd

    if-ne v5, v6, :cond_e

    .line 1595
    :try_start_2
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v5, :cond_c

    .line 1596
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v5, v2

    iput v5, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1597
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v5, v6, :cond_b

    .line 1598
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_3

    .line 1600
    :cond_b
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1601
    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v3, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1605
    :cond_c
    :goto_3
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_d

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1606
    :cond_d
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v9, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_5

    :catch_0
    const/4 v3, 0x1

    goto :goto_6

    :cond_e
    if-ne v5, v9, :cond_11

    if-nez v7, :cond_10

    .line 1608
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v5, :cond_10

    .line 1609
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_f

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1610
    :cond_f
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v9, v5, v6

    :cond_10
    :goto_4
    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_5

    .line 1614
    :cond_11
    iget-boolean v6, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v6, :cond_10

    .line 1615
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v7, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v7, v7

    if-lt v6, v7, :cond_12

    invoke-virtual {p0, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1616
    :cond_12
    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v5, v6, v7
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_13
    const/4 v6, 0x1

    .line 1626
    :cond_14
    :goto_5
    :try_start_3
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v5

    goto/16 :goto_2

    .line 1622
    :cond_15
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "in epilog non whitespace content is not allowed but got "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move v3, v6

    goto :goto_6

    :catch_2
    nop

    .line 1633
    :goto_6
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    .line 1634
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_16

    if-eqz v3, :cond_16

    .line 1635
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1636
    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v4

    .line 1638
    :cond_16
    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v2

    .line 1530
    :cond_17
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "already reached end of XML input"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method protected parsePI()Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2397
    iget-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_0

    iget v2, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v2, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 2398
    :cond_0
    iget v2, v1, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    .line 2399
    iget v3, v1, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 2400
    iget v4, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iget v5, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v4, v5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 2402
    iget-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    :goto_1
    const/4 v10, 0x0

    .line 2410
    :goto_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v11
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v12, 0x3f

    if-ne v11, v12, :cond_2

    const/4 v9, 0x1

    goto/16 :goto_4

    :cond_2
    const/16 v12, 0x3e

    if-ne v11, v12, :cond_4

    if-eqz v9, :cond_c

    .line 2501
    iget-boolean v2, v1, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v2, :cond_3

    .line 2502
    iget v2, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v2, v2, -0x2

    iput v2, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    if-eqz v0, :cond_3

    .line 2504
    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    sub-int/2addr v0, v6

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    :cond_3
    return v6

    :cond_4
    if-ne v8, v7, :cond_c

    .line 2419
    :try_start_1
    invoke-virtual {v1, v11}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2420
    iget v8, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v8, v6

    iget v9, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v8, v9

    sub-int v9, v8, v4

    const/4 v12, 0x3

    if-ne v9, v12, :cond_c

    .line 2424
    iget-object v9, v1, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v13, v9, v4

    const/16 v14, 0x78

    if-eq v13, v14, :cond_5

    aget-char v13, v9, v4

    const/16 v15, 0x58

    if-ne v13, v15, :cond_c

    :cond_5
    add-int/lit8 v13, v4, 0x1

    aget-char v15, v9, v13

    const/16 v7, 0x6d

    if-eq v15, v7, :cond_6

    aget-char v15, v9, v13

    const/16 v6, 0x4d

    if-ne v15, v6, :cond_c

    :cond_6
    add-int/lit8 v6, v4, 0x2

    aget-char v15, v9, v6

    const/16 v5, 0x6c

    if-eq v15, v5, :cond_7

    aget-char v15, v9, v6

    const/16 v5, 0x4c

    if-ne v15, v5, :cond_c

    :cond_7
    const/4 v0, 0x0

    if-gt v4, v12, :cond_b

    .line 2434
    aget-char v5, v9, v4

    if-eq v5, v14, :cond_9

    aget-char v5, v9, v13

    if-eq v5, v7, :cond_9

    aget-char v5, v9, v6

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_8

    goto :goto_3

    .line 2438
    :cond_8
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "XMLDecl must have xml name in lowercase"

    invoke-direct {v4, v5, v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2443
    :cond_9
    :goto_3
    invoke-virtual {v1, v11}, Lorg/xmlpull/mxp1/MXParser;->parseXmlDecl(C)V

    .line 2444
    iget-boolean v0, v1, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_a

    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    iput v0, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2445
    :cond_a
    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v4, v0

    add-int/2addr v4, v12

    .line 2446
    iget v0, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v0, v0, -0x2

    sub-int/2addr v0, v4

    .line 2447
    iget-object v5, v1, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-virtual {v1, v5, v4, v0}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    const/4 v0, 0x0

    return v0

    .line 2430
    :cond_b
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "processing instruction can not have PITarget with reserveld xml name"

    invoke-direct {v4, v5, v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    :cond_c
    const/4 v9, 0x0

    :goto_4
    if-eqz v0, :cond_15

    const/16 v5, 0xd

    const/16 v6, 0xa

    if-ne v11, v5, :cond_10

    .line 2460
    iget-boolean v5, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v5, :cond_e

    .line 2461
    iget v5, v1, Lorg/xmlpull/mxp1/MXParser;->pos:I

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    iput v5, v1, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 2462
    iget v7, v1, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v5, v7, :cond_d

    .line 2463
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_5

    :cond_d
    const/4 v5, 0x1

    .line 2465
    iput-boolean v5, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    const/4 v7, 0x0

    .line 2466
    iput v7, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v7, v1, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    goto :goto_6

    :cond_e
    :goto_5
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 2470
    :goto_6
    iget v10, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v11, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_f

    invoke-virtual {v1, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2471
    :cond_f
    iget-object v10, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v11, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v6, v10, v11

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_10
    const/4 v5, 0x1

    const/4 v7, 0x0

    if-ne v11, v6, :cond_13

    if-nez v10, :cond_12

    .line 2473
    iget-boolean v10, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v10, :cond_12

    .line 2474
    iget v10, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v11, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v11, v11

    if-lt v10, v11, :cond_11

    invoke-virtual {v1, v10}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2475
    :cond_11
    iget-object v10, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v11, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v11, 0x1

    iput v12, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v6, v10, v11

    :cond_12
    :goto_7
    const/4 v6, 0x1

    const/4 v7, -0x1

    goto/16 :goto_1

    .line 2479
    :cond_13
    iget-boolean v6, v1, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v6, :cond_12

    .line 2480
    iget v6, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v10, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v10, v10

    if-lt v6, v10, :cond_14

    invoke-virtual {v1, v6}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 2481
    :cond_14
    iget-object v6, v1, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v10, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v12, v10, 0x1

    iput v12, v1, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v11, v6, v10
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_15
    const/4 v6, 0x1

    const/4 v7, -0x1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 2489
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "processing instruction started on line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " and column "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " was not closed"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_8
    throw v4

    :goto_9
    goto :goto_8
.end method

.method protected parseProlog()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1406
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1407
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v2, v1

    aget-char v0, v0, v2

    goto :goto_0

    .line 1409
    :cond_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 1412
    :goto_0
    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const v2, 0xfffe

    if-eq v0, v2, :cond_1

    const v2, 0xfeff

    if-ne v0, v2, :cond_2

    .line 1423
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    goto :goto_1

    .line 1417
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "first character in input was UNICODE noncharacter (0xFFFE)- input requires int swapping"

    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 1426
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 1428
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v4, v1

    iput v4, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    .line 1429
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-ne v4, v1, :cond_3

    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_3
    const/16 v7, 0x3c

    const/16 v8, 0xa

    if-ne v0, v7, :cond_d

    if-eqz v5, :cond_4

    .line 1437
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_4

    .line 1438
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1439
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    const/4 v0, 0x7

    .line 1440
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1442
    :cond_4
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v7, 0x3f

    if-ne v0, v7, :cond_6

    .line 1446
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parsePI()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1447
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x8

    .line 1448
    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1452
    :cond_5
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_6
    const/16 v7, 0x21

    if-ne v0, v7, :cond_a

    .line 1457
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    const/16 v7, 0x44

    if-ne v0, v7, :cond_8

    .line 1459
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    if-nez v0, :cond_7

    .line 1463
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    .line 1464
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseDocdecl()V

    .line 1465
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    iput v8, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v8

    .line 1460
    :cond_7
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "only one docdecl allowed in XML document"

    invoke-direct {v0, v1, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_9

    .line 1467
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseComment()V

    .line 1468
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->tokenize:Z

    if-eqz v0, :cond_17

    const/16 v0, 0x9

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v0

    .line 1470
    :cond_9
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "unexpected markup <!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    const/16 v2, 0x2f

    const-string v4, "expected start tag name and not "

    if-eq v0, v2, :cond_c

    .line 1476
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1477
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    .line 1478
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseStartTag()I

    move-result v0

    return v0

    .line 1480
    :cond_b
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1474
    :cond_c
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 1483
    :cond_d
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v5

    if-eqz v5, :cond_18

    if-eqz v4, :cond_16

    const/16 v5, 0xd

    if-ne v0, v5, :cond_11

    .line 1491
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-nez v0, :cond_f

    .line 1492
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1493
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    if-le v0, v5, :cond_e

    .line 1494
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->joinPC()V

    goto :goto_4

    .line 1496
    :cond_e
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 1497
    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    .line 1501
    :cond_f
    :goto_4
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v5, v5

    if-lt v0, v5, :cond_10

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1502
    :cond_10
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v8, v0, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    goto :goto_6

    :cond_11
    if-ne v0, v8, :cond_13

    if-nez v6, :cond_15

    .line 1504
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v0, :cond_15

    .line 1505
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v5, v5

    if-lt v0, v5, :cond_12

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1506
    :cond_12
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v8, v0, v5

    goto :goto_5

    .line 1510
    :cond_13
    iget-boolean v5, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    if-eqz v5, :cond_15

    .line 1511
    iget v5, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    array-length v6, v6

    if-lt v5, v6, :cond_14

    invoke-virtual {p0, v5}, Lorg/xmlpull/mxp1/MXParser;->ensurePC(I)V

    .line 1512
    :cond_14
    iget-object v5, p0, Lorg/xmlpull/mxp1/MXParser;->pc:[C

    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    aput-char v0, v5, v6

    :cond_15
    :goto_5
    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_6

    :cond_16
    const/4 v5, 0x1

    .line 1522
    :cond_17
    :goto_6
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    goto/16 :goto_3

    .line 1518
    :cond_18
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "only whitespace content allowed before start tag and not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v1

    :goto_8
    goto :goto_7
.end method

.method public parseStartTag()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1707
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 1709
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    add-int/lit8 v2, v0, -0x2

    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    const/4 v2, 0x0

    .line 1711
    iput-boolean v2, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 1712
    iput v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    add-int/lit8 v3, v0, -0x1

    .line 1714
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v3, v4

    .line 1716
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v0, v1

    aget-char v0, v4, v0

    const/16 v4, 0x3a

    const/4 v5, 0x0

    if-ne v0, v4, :cond_1

    .line 1717
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "when namespaces processing enabled colon can not be at element name start"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    const/4 v6, -0x1

    .line 1721
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    .line 1722
    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->isNameChar(C)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 1732
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->ensureElementsCapacity()V

    .line 1737
    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v4, v1

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v9, v3, v8

    sub-int/2addr v4, v9

    .line 1738
    iget-object v9, p0, Lorg/xmlpull/mxp1/MXParser;->elRawName:[[C

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aget-object v11, v9, v10

    if-eqz v11, :cond_3

    aget-object v11, v9, v10

    array-length v11, v11

    if-ge v11, v4, :cond_4

    :cond_3
    mul-int/lit8 v11, v4, 0x2

    .line 1739
    new-array v11, v11, [C

    aput-object v11, v9, v10

    .line 1741
    :cond_4
    iget-object v11, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int v8, v3, v8

    aget-object v9, v9, v10

    invoke-static {v11, v8, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1742
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameEnd:[I

    iget v9, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aput v4, v8, v9

    .line 1743
    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->elRawNameLine:[I

    iget v10, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    aput v10, v8, v9

    .line 1749
    iget-boolean v8, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const/4 v10, 0x2

    if-eqz v8, :cond_6

    if-eq v6, v0, :cond_5

    .line 1751
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int v8, v3, v8

    sub-int v3, v6, v3

    invoke-virtual {p0, v4, v8, v3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    .line 1753
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget v4, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    add-int/lit8 v9, v6, 0x1

    iget v11, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v9, v11

    iget v12, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v12, v10

    sub-int/2addr v6, v11

    sub-int/2addr v12, v6

    invoke-virtual {p0, v8, v9, v12}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v4

    goto :goto_3

    .line 1757
    :cond_5
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elPrefix:[Ljava/lang/String;

    aput-object v5, v0, v9

    .line 1758
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v8

    invoke-virtual {p0, v6, v3, v4}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    goto :goto_2

    .line 1762
    :cond_6
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elName:[Ljava/lang/String;

    iget-object v6, p0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    sub-int/2addr v3, v8

    invoke-virtual {p0, v6, v3, v4}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v9

    :goto_2
    move-object v3, v5

    .line 1769
    :goto_3
    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    goto :goto_3

    :cond_7
    const/16 v0, 0x3e

    if-ne v7, v0, :cond_8

    goto :goto_4

    :cond_8
    const/16 v4, 0x2f

    if-ne v7, v4, :cond_1c

    .line 1774
    iget-boolean v4, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    if-nez v4, :cond_1b

    .line 1776
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 1777
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    if-ne v4, v0, :cond_1a

    .line 1793
    :goto_4
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const-string v4, " and "

    const-string v6, "duplicated attributes "

    if-eqz v0, :cond_14

    .line 1794
    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v7, ""

    if-nez v0, :cond_a

    if-nez v3, :cond_9

    move-object v0, v7

    goto :goto_5

    .line 1799
    :cond_9
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not determine namespace bound to element prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1805
    :cond_a
    :goto_5
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->elUri:[Ljava/lang/String;

    iget v8, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    aput-object v0, v3, v8

    const/4 v0, 0x0

    .line 1813
    :goto_6
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge v0, v3, :cond_d

    .line 1815
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributePrefix:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-eqz v3, :cond_c

    .line 1817
    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 1824
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v8, v3, v0

    goto :goto_7

    .line 1819
    :cond_b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not determine namespace bound to attribute prefix "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1826
    :cond_c
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aput-object v7, v3, v0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1834
    :cond_d
    :goto_8
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge v1, v0, :cond_19

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v1, :cond_13

    .line 1838
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v7, v3, v0

    aget-object v3, v3, v1

    if-ne v7, v3, :cond_12

    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_e
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_12

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    aget v7, v3, v0

    aget v3, v3, v1

    if-ne v7, v3, :cond_12

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1846
    :cond_f
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 1847
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v7, ":"

    if-eqz v3, :cond_10

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v0, v8, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1848
    :cond_10
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 1849
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_11

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v8, p0, Lorg/xmlpull/mxp1/MXParser;->attributeUri:[Ljava/lang/String;

    aget-object v1, v8, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1850
    :cond_11
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 1861
    :cond_14
    :goto_a
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    if-ge v1, v0, :cond_19

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_18

    .line 1865
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-eqz v3, :cond_15

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    :cond_15
    iget-boolean v3, p0, Lorg/xmlpull/mxp1/MXParser;->allStringsInterned:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeNameHash:[I

    aget v7, v3, v0

    aget v3, v3, v1

    if-ne v7, v3, :cond_17

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v7, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_c

    .line 1872
    :cond_16
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParser;->attributeName:[Ljava/lang/String;

    aget-object v0, v2, v0

    .line 1873
    aget-object v1, v2, v1

    .line 1874
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    :cond_17
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1881
    :cond_19
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->elNamespaceCount:[I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    iget v2, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    aput v2, v0, v1

    .line 1882
    iget v0, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    iput v0, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    .line 1883
    iput v10, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    return v10

    .line 1778
    :cond_1a
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "expected > to end empty tag not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1774
    :cond_1b
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "repeated / in tag declaration"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 1781
    :cond_1c
    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->isNameStartChar(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1782
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->parseAttribute()C

    .line 1783
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v7

    goto/16 :goto_3

    .line 1786
    :cond_1d
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "start tag unexpected character "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v7}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    :cond_1e
    if-ne v7, v4, :cond_2

    .line 1723
    iget-boolean v7, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    if-eqz v7, :cond_2

    if-ne v6, v0, :cond_1f

    .line 1727
    iget v6, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v6, v1

    iget v7, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    add-int/2addr v6, v7

    goto/16 :goto_1

    .line 1724
    :cond_1f
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "only one colon is allowed in name of element when namespaces are enabled"

    invoke-direct {v0, v1, p0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_e

    :goto_d
    throw v0

    :goto_e
    goto :goto_d
.end method

.method protected parseXmlDecl(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2530
    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    const/4 v1, 0x0

    .line 2531
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    .line 2537
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    .line 2538
    sget-object v2, Lorg/xmlpull/mxp1/MXParser;->VERSION:[C

    invoke-virtual {p0, p1, v2}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result p1

    .line 2540
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    const/4 v2, 0x0

    const/16 v3, 0x3d

    if-ne p1, v3, :cond_8

    .line 2545
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    .line 2546
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result p1

    const/16 v3, 0x27

    if-eq p1, v3, :cond_1

    const/16 v3, 0x22

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 2548
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected apostrophe (\') or quotation mark (\") after version and not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 2554
    :cond_1
    :goto_0
    iget v3, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 2555
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    :goto_1
    if-eq v4, p1, :cond_7

    const/16 v5, 0x61

    if-lt v4, v5, :cond_2

    const/16 v5, 0x7a

    if-le v4, v5, :cond_6

    :cond_2
    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    const/16 v5, 0x5a

    if-le v4, v5, :cond_6

    :cond_3
    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v5, 0x39

    if-le v4, v5, :cond_6

    :cond_4
    const/16 v5, 0x5f

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_6

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_6

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_5

    goto :goto_2

    .line 2561
    :cond_5
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<?xml version value expected to be in ([a-zA-Z0-9_.:] | \'-\') not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    .line 2565
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v4

    goto :goto_1

    .line 2567
    :cond_7
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr p1, v0

    .line 2568
    invoke-virtual {p0, v3, p1}, Lorg/xmlpull/mxp1/MXParser;->parseXmlDeclWithVersion(II)V

    .line 2569
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    return-void

    .line 2542
    :cond_8
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected equals sign (=) after version and not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method protected parseXmlDeclWithVersion(II)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    sub-int v2, p2, v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_16

    .line 2577
    iget-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    aget-char v5, v4, v1

    const/16 v6, 0x31

    if-ne v5, v6, :cond_16

    add-int/lit8 v5, v1, 0x1

    aget-char v5, v4, v5

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_16

    add-int/lit8 v5, v1, 0x2

    aget-char v5, v4, v5

    const/16 v7, 0x30

    if-ne v5, v7, :cond_16

    .line 2586
    invoke-virtual {v0, v4, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 2589
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2590
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    const/16 v2, 0x65

    const-string v4, "expected apostrophe (\') or quotation mark (\") after encoding and not "

    const/16 v5, 0x22

    const/16 v8, 0x27

    const/16 v9, 0x3d

    const/4 v10, 0x1

    if-ne v1, v2, :cond_c

    .line 2592
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2593
    sget-object v2, Lorg/xmlpull/mxp1/MXParser;->NCODING:[C

    invoke-virtual {v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v1

    .line 2594
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    if-ne v1, v9, :cond_b

    .line 2599
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2600
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    if-eq v1, v8, :cond_1

    if-ne v1, v5, :cond_0

    goto :goto_0

    .line 2602
    :cond_0
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2607
    :cond_1
    :goto_0
    iget v2, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 2608
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v11

    const/16 v12, 0x5a

    const/16 v13, 0x7a

    const/16 v14, 0x41

    const/16 v15, 0x61

    if-lt v11, v15, :cond_2

    if-le v11, v13, :cond_3

    :cond_2
    if-lt v11, v14, :cond_a

    if-gt v11, v12, :cond_a

    .line 2616
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v11

    :goto_1
    if-eq v11, v1, :cond_9

    if-lt v11, v15, :cond_4

    if-le v11, v13, :cond_8

    :cond_4
    if-lt v11, v14, :cond_5

    if-le v11, v12, :cond_8

    :cond_5
    if-lt v11, v7, :cond_6

    const/16 v7, 0x39

    if-le v11, v7, :cond_8

    :cond_6
    if-eq v11, v6, :cond_8

    const/16 v7, 0x5f

    if-eq v11, v7, :cond_8

    const/16 v7, 0x2d

    if-ne v11, v7, :cond_7

    goto :goto_2

    .line 2621
    :cond_7
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "<?xml encoding value expected to be in ([A-Za-z0-9._] | \'-\') not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2625
    :cond_8
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v11

    const/16 v7, 0x30

    goto :goto_1

    .line 2627
    :cond_9
    iget v1, v0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    sub-int/2addr v1, v10

    .line 2631
    iget-object v6, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    sub-int/2addr v1, v2

    invoke-virtual {v0, v6, v2, v1}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    .line 2632
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    goto :goto_3

    .line 2612
    :cond_a
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "<?xml encoding name expected to start with [A-Za-z] not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v11}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2596
    :cond_b
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "expected equals sign (=) after encoding and not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2635
    :cond_c
    :goto_3
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_13

    .line 2638
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2639
    sget-object v2, Lorg/xmlpull/mxp1/MXParser;->TANDALONE:[C

    invoke-virtual {v0, v1, v2}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v1

    .line 2640
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    if-ne v1, v9, :cond_12

    .line 2646
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    .line 2647
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    if-eq v1, v8, :cond_e

    if-ne v1, v5, :cond_d

    goto :goto_4

    .line 2649
    :cond_d
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2655
    :cond_e
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v2

    const/16 v4, 0x79

    if-ne v2, v4, :cond_f

    .line 2657
    sget-object v4, Lorg/xmlpull/mxp1/MXParser;->YES:[C

    invoke-virtual {v0, v2, v4}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v2

    .line 2659
    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v10}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    goto :goto_5

    :cond_f
    const/16 v4, 0x6e

    if-ne v2, v4, :cond_11

    .line 2661
    sget-object v4, Lorg/xmlpull/mxp1/MXParser;->NO:[C

    invoke-virtual {v0, v2, v4}, Lorg/xmlpull/mxp1/MXParser;->requireInput(C[C)C

    move-result v2

    .line 2663
    new-instance v4, Ljava/lang/Boolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v4, v0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    :goto_5
    if-ne v2, v1, :cond_10

    .line 2674
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    goto :goto_6

    .line 2670
    :cond_10
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v1, " after standalone value not "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v4

    .line 2665
    :cond_11
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "expected \'yes\' or \'no\' after standalone and not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    .line 2642
    :cond_12
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "expected equals sign (=) after standalone and not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2678
    :cond_13
    :goto_6
    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v1

    const/16 v2, 0x3f

    const-string v4, "expected ?> as last part of <?xml not "

    if-ne v1, v2, :cond_15

    .line 2684
    invoke-virtual/range {p0 .. p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_14

    return-void

    .line 2686
    :cond_14
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2680
    :cond_15
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2

    .line 2582
    :cond_16
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "only 1.0 is supported as <?xml version not \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lorg/xmlpull/mxp1/MXParser;->buf:[C

    invoke-direct {v6, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v6}, Lorg/xmlpull/mxp1/MXParser;->printable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1, v0, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    goto :goto_8

    :goto_7
    throw v4

    :goto_8
    goto :goto_7
.end method

.method protected printable(C)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const-string p1, "\\n"

    return-object p1

    :cond_0
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    const-string p1, "\\r"

    return-object p1

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const-string p1, "\\t"

    return-object p1

    :cond_2
    const/16 v0, 0x27

    if-ne p1, v0, :cond_3

    const-string p1, "\\\'"

    return-object p1

    :cond_3
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_5

    const/16 v0, 0x20

    if-ge p1, v0, :cond_4

    goto :goto_0

    .line 3181
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3179
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3186
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3187
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3189
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3191
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 973
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    const-string v1, ")"

    const-string v2, " (postion:"

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 974
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "processing namespaces must be enabled on parser (or factory) to have possible namespaces delcared on elements"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 979
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v0

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 983
    :cond_4
    :goto_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "expected event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v4, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "\'"

    const-string v5, ""

    if-eqz p3, :cond_5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, " with name \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v5

    :goto_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, " and"

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    move-object v7, v6

    goto :goto_3

    :cond_6
    move-object v7, v5

    :goto_3
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_7

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, " with namespace \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    :cond_7
    move-object v7, v5

    :goto_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v7, " but got"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v7

    if-eq p1, v7, :cond_8

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v7, Lorg/xmlpull/v1/XmlPullParser;->TYPES:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getEventType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    move-object p1, v5

    :goto_5
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_9

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, " name \'"

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_9
    move-object p1, v5

    :goto_6
    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_7

    :cond_a
    move-object v6, v5

    :goto_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_b

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, " namespace \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected requireInput(C[C)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3041
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 3043
    aget-char v1, p2, v0

    if-ne p1, v1, :cond_0

    .line 3048
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3044
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-char v0, p2, v0

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " in "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " and not "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v1, p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return p1
.end method

.method protected requireNextS()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3056
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result v0

    .line 3057
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3061
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->skipS(C)C

    move-result v0

    return v0

    .line 3058
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "white space is required and not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->printable(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected reset()V
    .locals 2

    const/4 v0, 0x0

    .line 382
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->location:Ljava/lang/String;

    const/4 v1, 0x1

    .line 383
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->lineNumber:I

    const/4 v1, 0x0

    .line 384
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->columnNumber:I

    .line 385
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenRoot:Z

    .line 386
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->reachedEnd:Z

    .line 387
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    .line 388
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->emptyElementTag:Z

    .line 390
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->depth:I

    .line 392
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->attributeCount:I

    .line 394
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->namespaceEnd:I

    .line 396
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->entityEnd:I

    .line 398
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    .line 399
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    .line 401
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->preventBufferCompaction:Z

    .line 402
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufAbsoluteStart:I

    .line 403
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufStart:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->bufEnd:I

    .line 404
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posEnd:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->posStart:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pos:I

    .line 406
    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcStart:I

    iput v1, p0, Lorg/xmlpull/mxp1/MXParser;->pcEnd:I

    .line 408
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->usePC:Z

    .line 410
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenStartTag:Z

    .line 411
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenEndTag:Z

    .line 412
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->pastEndTag:Z

    .line 413
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenAmpersand:Z

    .line 414
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenMarkup:Z

    .line 415
    iput-boolean v1, p0, Lorg/xmlpull/mxp1/MXParser;->seenDocdecl:Z

    .line 417
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclVersion:Ljava/lang/String;

    .line 418
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclStandalone:Ljava/lang/Boolean;

    .line 419
    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParser;->xmlDeclContent:Ljava/lang/String;

    .line 421
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->resetStringCache()V

    return-void
.end method

.method protected resetStringCache()V
    .locals 0

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p1, :cond_7

    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    .line 441
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget p1, p0, Lorg/xmlpull/mxp1/MXParser;->eventType:I

    if-nez p1, :cond_0

    .line 444
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParser;->processNamespaces:Z

    goto :goto_0

    .line 442
    :cond_0
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 p2, 0x0

    const-string v0, "namespace processing feature can only be changed before parsing"

    invoke-direct {p1, v0, p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    .line 449
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 451
    :cond_2
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "interning names in this implementation is not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string v0, "http://xmlpull.org/v1/doc/features.html#process-docdecl"

    .line 454
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    goto :goto_0

    .line 456
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "processing DOCDECL is not supported"

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-string v0, "http://xmlpull.org/v1/doc/features.html#xml-roundtrip"

    .line 461
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 466
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParser;->roundtripSupported:Z

    :goto_0
    return-void

    .line 468
    :cond_6
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unsupporte feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 440
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "feature name should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p2, :cond_0

    .line 538
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_0

    .line 540
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 543
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "could not create reader for encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, " : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 547
    :cond_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 549
    :goto_0
    invoke-virtual {p0, v0}, Lorg/xmlpull/mxp1/MXParser;->setInput(Ljava/io/Reader;)V

    .line 551
    iput-object p2, p0, Lorg/xmlpull/mxp1/MXParser;->inputEncoding:Ljava/lang/String;

    return-void

    .line 532
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input stream can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInput(Ljava/io/Reader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->reset()V

    .line 524
    iput-object p1, p0, Lorg/xmlpull/mxp1/MXParser;->reader:Ljava/io/Reader;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string v0, "http://xmlpull.org/v1/doc/properties.html#location"

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lorg/xmlpull/mxp1/MXParser;->location:Ljava/lang/String;

    return-void

    .line 500
    :cond_0
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unsupported property: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected skipS(C)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3067
    :goto_0
    invoke-virtual {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->isS(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->more()C

    move-result p1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public skipSubTree()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1011
    invoke-virtual {p0, v0, v1, v1}, Lorg/xmlpull/mxp1/MXParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-lez v1, :cond_2

    .line 1014
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
