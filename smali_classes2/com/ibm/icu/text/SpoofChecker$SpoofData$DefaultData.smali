.class final Lcom/ibm/icu/text/SpoofChecker$SpoofData$DefaultData;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/SpoofChecker$SpoofData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultData"
.end annotation


# static fields
.field private static EXCEPTION:Ljava/io/IOException;

.field private static INSTANCE:Lcom/ibm/icu/text/SpoofChecker$SpoofData;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1849
    :try_start_0
    new-instance v0, Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    const-string v1, "confusables.cfu"

    invoke-static {v1}, Lcom/ibm/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ibm/icu/text/SpoofChecker$SpoofData;-><init>(Ljava/nio/ByteBuffer;Lcom/ibm/icu/text/SpoofChecker$1;)V

    sput-object v0, Lcom/ibm/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Lcom/ibm/icu/text/SpoofChecker$SpoofData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1851
    sput-object v0, Lcom/ibm/icu/text/SpoofChecker$SpoofData$DefaultData;->EXCEPTION:Ljava/io/IOException;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()Lcom/ibm/icu/text/SpoofChecker$SpoofData;
    .locals 1

    .line 1841
    sget-object v0, Lcom/ibm/icu/text/SpoofChecker$SpoofData$DefaultData;->INSTANCE:Lcom/ibm/icu/text/SpoofChecker$SpoofData;

    return-object v0
.end method

.method static synthetic access$900()Ljava/io/IOException;
    .locals 1

    .line 1841
    sget-object v0, Lcom/ibm/icu/text/SpoofChecker$SpoofData$DefaultData;->EXCEPTION:Ljava/io/IOException;

    return-object v0
.end method
