.class public final Lcom/ibm/icu/text/ListFormatter$Field;
.super Ljava/text/Format$Field;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# static fields
.field public static ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field; = null

.field public static LITERAL:Lcom/ibm/icu/text/ListFormatter$Field; = null

.field private static final serialVersionUID:J = -0x7002783911c9edddL


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 159
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$Field;

    const-string v1, "literal"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/ListFormatter$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/ListFormatter$Field;->LITERAL:Lcom/ibm/icu/text/ListFormatter$Field;

    .line 165
    new-instance v0, Lcom/ibm/icu/text/ListFormatter$Field;

    const-string v1, "element"

    invoke-direct {v0, v1}, Lcom/ibm/icu/text/ListFormatter$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ibm/icu/text/ListFormatter$Field;->ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/ibm/icu/text/ListFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Field;->LITERAL:Lcom/ibm/icu/text/ListFormatter$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/ListFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/ibm/icu/text/ListFormatter$Field;->LITERAL:Lcom/ibm/icu/text/ListFormatter$Field;

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/ibm/icu/text/ListFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ibm/icu/text/ListFormatter$Field;->ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field;

    invoke-virtual {v1}, Lcom/ibm/icu/text/ListFormatter$Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    sget-object v0, Lcom/ibm/icu/text/ListFormatter$Field;->ELEMENT:Lcom/ibm/icu/text/ListFormatter$Field;

    return-object v0

    .line 185
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "An invalid object."

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
