.class public final Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;
.super Ljava/lang/Object;
.source "FileEncodingDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFileEncodingDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FileEncodingDetector.kt\ncom/innioasis/y1_eBook/utils/FileEncodingDetector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u000cR\u001c\u0010\u0003\u001a\u0010\u0012\u000c\u0012\n \u0006*\u0004\u0018\u00010\u00050\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;",
        "",
        "()V",
        "COMMON_CHARSETS",
        "",
        "Ljava/nio/charset/Charset;",
        "kotlin.jvm.PlatformType",
        "detectBom",
        "buffer",
        "",
        "detectCharset",
        "filePath",
        "",
        "app_frGeneralRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final COMMON_CHARSETS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;

    invoke-direct {v0}, Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;-><init>()V

    sput-object v0, Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;->INSTANCE:Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/nio/charset/Charset;

    const-string v1, "UTF-8"

    .line 11
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UTF-16LE"

    .line 12
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "UTF-16BE"

    .line 13
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "GBK"

    .line 14
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "ISO-8859-1"

    .line 15
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 10
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;->COMMON_CHARSETS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final detectBom([B)Ljava/nio/charset/Charset;
    .locals 5

    .line 59
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    .line 60
    aget-byte v0, p1, v3

    const/16 v4, -0x11

    if-ne v0, v4, :cond_0

    .line 61
    aget-byte v0, p1, v2

    const/16 v4, -0x45

    if-ne v0, v4, :cond_0

    .line 62
    aget-byte v0, p1, v1

    const/16 v4, -0x41

    if-ne v0, v4, :cond_0

    const-string p1, "UTF-8"

    .line 63
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    array-length v0, p1

    if-lt v0, v1, :cond_2

    .line 66
    aget-byte v0, p1, v3

    const/4 v1, -0x1

    const/4 v4, -0x2

    if-ne v0, v4, :cond_1

    aget-byte v0, p1, v2

    if-ne v0, v1, :cond_1

    const-string p1, "UTF-16BE"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    .line 67
    :cond_1
    aget-byte v0, p1, v3

    if-ne v0, v1, :cond_2

    aget-byte p1, p1, v2

    if-ne p1, v4, :cond_2

    const-string p1, "UTF-16LE"

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final detectCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 8

    const-string v0, "filePath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    check-cast p1, Ljava/io/Closeable;

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/io/FileInputStream;

    const/16 v2, 0x1000

    new-array v2, v2, [B

    .line 31
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 34
    sget-object v3, Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;->INSTANCE:Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;

    invoke-direct {v3, v2}, Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;->detectBom([B)Ljava/nio/charset/Charset;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v3

    .line 37
    :cond_0
    :try_start_1
    sget-object v3, Lcom/innioasis/y1_eBook/utils/FileEncodingDetector;->COMMON_CHARSETS:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/charset/Charset;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :try_start_2
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "charset"

    .line 39
    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2, v6, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 41
    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "this as java.lang.String).getBytes(charset)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    const-string v7, "copyOf(this, newSize)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    .line 43
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v4

    .line 49
    :cond_2
    :try_start_3
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "UTF-8"

    .line 52
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    const-string v0, "forName(\"UTF-8\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception v0

    .line 29
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 26
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728\u6216\u4e0d\u662f\u6587\u4ef6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    throw v0

    :goto_1
    goto :goto_0
.end method
